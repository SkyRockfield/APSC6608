#-----APSC6608 Homework 3-----#


########################################
# Calculation of Posterior Probability #
########################################


#---Creating a list of prior probabilities P(H)---#
PH1 = rep(0.2, times=length(popfreq))   # Q1: P(H) with no data given
PH2 = c(0.27, 0.06, 0.21, 0.29, 0.17)   # Q3: P(H) as the given relative probabilities

#---Creating a list of likelihood values P(D|H)---#
popfreq = c(0.22, 0.59, 0.34, 0.12, 0.56)  # Frequency of the red variant in each population


#---Creating a function that calculates posterior probabilities P(H|D)---#
FrogBayes <- function(PH, PDH){  # Takes two variables (list), prior prob.(PH) and likelihood (PDH)

  PI = rep(NA, times = length(PDH))  # Creating an empty list for storing the product values P(H)xP(D|H)
  for (i in 1:length(PI)){  # Calculating the product values and storing into PI
    PI[i] = PH[i] * PDH[i]
  }
  
  PD = sum(PI)  # Summing the product values stored in the list PI
  
  PHD = rep(NA, times = length(PDH))  # Creating an empty list to store P(H|D) values
  for (j in 1:length(PHD)){  # Calculating P(H|D) values with the Baye's theorem
    PHD[j] = (PH[j] * PDH[j]) / PD
  }
  
  #print(PI)
  #print(PD) 
  #print(sum(PHD))
  
  return(PHD)  # Returns a list of P(H|D) values
}


