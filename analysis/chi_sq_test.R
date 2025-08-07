# chi_sq_test.R
# Purpose: Perform a Chi-squared test on observed frequency data

# Create the observed frequency table
observedatable <- matrix(
  c(6, 15, 15,
    17, 31, 17,
    17, 36, 13,
    15, 11, 19),
  nrow = 4,
  ncol = 3,
  byrow = TRUE
)

# Assign row and column names for clarity
rownames(observedatable) <- c(
  "Less than 2 hours",
  "2 - 4 hours",
  "4 - 6 hours",
  "More than 6 hours"
)

colnames(observedatable) <- c(
  "Frequently",
  "Sometimes",
  "Rarely or Never"
)

# Display the observed table
print("Observed Frequency Table:")
print(observedatable)

# Perform Chi-squared test
chisq_result <- chisq.test(observedatable)

# Display test results
print("Chi-squared Test Result:")
print(chisq_result)
