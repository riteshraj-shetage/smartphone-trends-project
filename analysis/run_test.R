# run_test.R
# Purpose: Perform Runs Test to check randomness

# Define sequence here  
my_sequence <- "FMMMFFFMMMFMMMFFMFMMMMMFMFMFMMMFFMMMFFFFMMMMFMFMMMMFFFFMMFMMMMMMFFMFMMMMFFMFMMMMFFMMMMFMMMMFFMMMMMMFFFFMMMFFMMFFMFMMMMFMMMMFFFMMMFMMMFMMFFFMMMMMFMFFMMFFFFFMFMMMFFMMFMMFFFFMFMFFFMMFFFMFFFFMMMMMFFMMMMMMMFMFFMMFMFMF"
cat("Aim: To test randomness of the given sequence.\n")
cat("\nGiven sequence:\n", my_sequence, "\n")

cat("\nHypothesis:\n\tH₀: The given sequence is random.\n\tH₁: The given sequence is not random.\n")

# Append a dummy character to handle last run
my_sequence <- paste0(my_sequence, "Z")


# Runs Test Function
run_test <- function(input_string) {
  current_char <- substr(input_string, 1, 1)
  runs <- 1
  total_M <- 0
  total_F <- 0
  total_runs <- 0
  
  cat("\nRun-sequence:\n")
  
  for (i in 2:nchar(input_string)) {
    next_char <- substr(input_string, i, i)
    if (next_char != current_char) {
      cat(paste(rep(current_char, runs), collapse = ""), " ")
      
      # Count values
      if (current_char == 'M') {
        total_M <- total_M + runs
      } else if (current_char == 'F') {
        total_F <- total_F + runs
      }
      
      total_runs <- total_runs + 1
      runs <- 1
      current_char <- next_char
    } else {
      runs <- runs + 1
    }
  }
  

  # Display Observations
  N <- total_M + total_F
  r <- total_runs
  
  cat("\n\nObservations:\n")
  cat("\tN =", N, "\n")
  cat("\tTotal Runs: r =", r, "\n")
  cat("\tNo. of M's: n₁ =", total_M, "\n")
  cat("\tNo. of F's: n₂ =", total_F, "\n")

  
  # Calculations  
  cat("\nCalculations:\n")
  exp_r <- (2 * total_M * total_F) / N + 1
  var_r <- (2 * total_M * total_F * (2 * total_M * total_F - N)) / (N^2 * (N - 1))
  
  exp_r1 <- round(exp_r, 2)
  var_r1 <- round(var_r, 2)
  
  cat("\tE(r) =", exp_r1, "\n")
  cat("\tV(r) =", var_r1, "\n")

  
  # Test Statistic
  cat("\nTest Statistic:\n")
  cat("\t|Z| ~ N(0,1) under H₀\n")
  Z <- abs((r - exp_r1) / sqrt(var_r1))
  Z_rounded <- round(Z, 4)
  cat("\t|Z| =", Z_rounded, "\n")

  
  # Decision
  cat("\nAt 5% level of significance, Zₜₐᵦ = 1.96\n")
  if (Z < 1.96) {
    cat("\tZcal < Ztab → ACCEPT H₀\n")
    cat("\nResult: The given sequence is random.\n")
  } else {
    cat("\tZcal > Ztab → REJECT H₀\n")
    cat("\nResult: The given sequence is NOT random.\n")
  }
}


# Run the Test
run_test(my_sequence)
