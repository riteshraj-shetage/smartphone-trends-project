#Run-Test to check randomness of data

#User Input
  response_sequence <- ("?")

  cat("Aim:","To test randomness of given sequence.\n")

  cat("\nGiven sequence->\n", response_sequence, "\n")

  cat("\nHypothesis->", "\n\tHo: The given sequence is random.", "\n v/s", "\n\tHa: The given sequence is not random.\n")              
  
  my_sequence <- paste0(my_sequence,"Z")  
  
#Define function
run_test <- function(input_string) {
  current_char <- substr(input_string, 1, 1)
  runs <- 1
  total_M <- 0
  total_F <- 0
  total_runs <- 0
 
#Display Sequence
  cat("\nRun-sequence->\n")
  
  for (i in 2:nchar(input_string)) {
    if (substr(input_string, i, i) != current_char) {

  cat(paste(rep(current_char, runs), collapse = ""), " ")

#Count values     
      if (current_char == 'M') {
        total_M <- total_M + runs
      } else if (current_char == 'F') {
        total_F <- total_F + runs
      }
      
      total_runs <- total_runs + 1
      runs <- 1
      
      if (i <= nchar(input_string)) {
        current_char <- substr(input_string, i, i)
      }
    } else {
      runs <- runs + 1
    }
  }
  
#Display counts
  N <- total_M + total_F
  r <- total_runs
  
  cat("\n\nObservations->", "\n\tN =", N, "\n\tTotal Runs: r = ", total_runs, "\n\tNo. of M's: n1 =", total_M,"\n\tNo. of F's: n2 =", total_F,"\n")
 
 #Calculations
  cat("\nCalculations->\n")
  exp_r <- (N + 2) / 2
  var_r <- ifelse(N == 0, 0, (N * (N - 2)) / (4 * (N - 1)))
  
  exp_r1 <- round(exp_r,2)
  var_r1 <- round(var_r,2)
    
  cat("\tE(r) =", exp_r1, "\n")
  cat("\tV(r) =", var_r1, "\n")

  cat("\nTest-Statistic->")
  cat("\n\t|Z| ~ N(0,1) under Ho.")
  Z <- abs((r - exp_r1) / sqrt(var_r1))
  Z_rounded <- round(Z, 4)  
  cat("\n\t|Z| =", Z_rounded, "\n", "\ti.e Zcal =", Z_rounded)
  
  cat("\n\n\tAt 5% LOS, Ztab = 1.96\n")
  if (Z < 1.96) {
    cat("\tHere, Zcal < Ztab, then we ACCEPT Ho.")
  } else {
    cat("\tHere, Zcal > Ztab, then we REJECT Ho.")
  }
  
#Result Output
  cat("\n\nResult-> ")
  if (Z < 1.96) {
    cat("\n\tThe given sequence is random.\n")
  } else {
    cat("\n\tThe given sequence is NOT random.\n")
  }
}

#run the test
run_test(my_sequence)
