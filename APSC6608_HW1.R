### R-Assignment 1 ###

#------------------------------------------------------------------------------#
# 1. Make a vector from 1 to 100, then show on screen
#------------------------------------------------------------------------------#

  # Creating a vector, ranging from 1 to 100.
  Vec = 1:100
  
  # Printing the vector, Vec.
  print(Vec)


#------------------------------------------------------------------------------#
# 2. Randomly select 50 Randomly select 50 unique values from that vector and
#    place them in a new vector.
#------------------------------------------------------------------------------#

  # Randomly selecting 50 values from Vec and create a new vector with them.
  # All unique, no duplicates.
  randVec = sample(Vec, size = 50, replace=FALSE)
  
  # Printing the vector, randVec.
  print(randVec)


#------------------------------------------------------------------------------#
# 3. Write a loop that will go through this vector and, if the values are < 50
#    put a 1 in a new vector, and if values are > 50 it will put a 2 there
#------------------------------------------------------------------------------#

  # Creating an empty vector, newVec
  newVec = rep(NA, times = 50)
  
  # Step through the range of newVec (1 to 50)
  for (i in 1:length(newVec)){
    
    # Checking if i-th value in randVec is less than 50.
    if (randVec[i] < 50){
      # If it is, 1 is assigned to the i-th position of newVec
      newVec[i] = 1
    }
    
    # Checking if i-th value in randVec is greater than 50.
    else if (randVec[i] > 50){
      # If it is, 2 is assigned to the i-th position of newVec
      newVec[i] = 2
    }
    
    # In case i-th value in randVec is 50, a 0 is assigned to the i-th position.
    else{
      newVec[i] = 0
    }
  }

  # Showing the vector, newVec
  print(newVec)

