df <- readRDS('dataset.rds')

library(ggplot2)
library(stringr)
library(mice)
library(caret)
library(dplyr)
library(miceadds)
library(lubridate)
library(dplyr)

# Remove rows with NaN in target variables
columns_to_check <- c("PMAX", "Glucosio", "Trigliceridi", "Colesterolo_Hdl", "BMI")
complete_rows <- complete.cases(df[, columns_to_check])
df <- df[complete_rows, ]

# Compute NA percentages
na_percentages <- sapply(df, function(col) mean(is.na(col)) * 100)

# Keep only columns with NA <= 70%
df_cleaned <- df[, na_percentages <= 70]

# Columns to exclude from imputation AND predictor matrix
excluded_vars <- c("CAI", "Date", "DATA_NASCITA", "PMAX", "Glucosio",
                   "Trigliceridi", "Colesterolo_Hdl", "BMI", "Peso", "Altezza")
print(names(df_cleaned))

# Categorical variables used only as predictors (no missing values)
predictor_only_vars <- c("SESSO", "Rh", "AB0") 
# Fumo, Attivita_fisica, Alcool are not in df_cleaned since they have > 70000 NaN

# Save them to re-add later
excluded_data <- df_cleaned[, c(excluded_vars, predictor_only_vars), drop = FALSE]

# Remove excluded variables
df_mice_imp <- df_cleaned %>%
  select(-all_of(c(excluded_vars)))

# Add CAI for clustering
df_mice_imp$CAI <- df_cleaned$CAI

meth <- make.method(df_mice_imp)
pred <- make.predictorMatrix(df_mice_imp)

# Use 2l.pmm for all imputable variables
meth[names(df_mice_imp)] <- "2l.pmm"  # takes into account grouping by CAI

# Do not impute CAI or predictor-only variables
meth["CAI"] <- ""
for (var in predictor_only_vars) {
  meth[var] <- ""
}

# Set CAI as clustering variable
pred[, "CAI"] <- -2
pred["CAI", ] <- 0

# Allow predictor-only variables to predict others
for (var in predictor_only_vars) {
  pred[var, ] <- 0    # do not impute them
  pred[, var] <- 1    # allow them as predictors
}

# Run MICE
imp <- mice(df_mice_imp,
            method = meth,
            predictorMatrix = pred,
            m = 5,
            maxit = 10,
            seed = 123)

# Complete dataset
completed <- complete(imp, 1)

# Remove temporary columns used for MICE
completed <- completed %>%
  select(-c("CAI", all_of(predictor_only_vars)))

# Combine with excluded data
final_data <- bind_cols(completed, excluded_data)

print(names(final_data))
which(is.na(final_data), arr.ind = TRUE)
print(dim(final_data))

library(readr)
write_csv(final_data, "df_mice.csv")