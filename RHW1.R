
# Kirill Tsarapkin - Homework 1

# (b) This part should be completed in R. Suppose we have 5 
# pairs of shoes (10 total shoes). Label them 'L1, R1, L2,
# R2, ...,L5, R5'. Using R, find all the possible selections 
# of shoes if 2 shoes are selected. Simi?ary, do so for 4 shoes 
# being selected.

# Store our shoes in a vector called S

S <- c("L1","R1","L2","R2","L3","R3","L4","R4","L5","R5")

# All the possible selections of shoes if 2 shoes are selected  

combn(S,2)

# All the possible selections of shoes if 4 shoes are selected

combn(S,4)

# (c) This part should be completed in R. For each case, use 
# R to find the probability that you do not select a pair 
# (using the enumerated possibilities, not the formula from (a)). 
# Check that each of these ma?ches the probability you found in part


# I'm not sure how to filter character strings in R
# maybe index them first? I don't know, I'm an R newb. 

# Lets do part (c) by storing integers in our vector 
# to respresent the shoes in a vector N 
N <- c(1,1,2,2,3,3,4,4,5,5)
# Case 1(c)- Store the possible selections of shoes if 2 shoes are selected in df3 
df3 <- combn(N,2)
# Case 1(c) - Number of shoe matches 
match <- sum(df3[1,]==df3[2,])
# Case 1(c) - Calculate the probability that you do not select a pair?prob1 <- 100*(1-match/choose(10,2))
print(prob1)

# Case 2(c)- Store the possible selections of shoes if 4 shoes are selected in df4
df4 <- combn(N,4)
# Case 2(c) - Number of shoe matches 
match <- df4[1,]==df4[2,]
match2 <- df4[3,]==df4[4,]
match3 <- sum(match==match2)
# Case 2(c) - Calculate the probability that you do not select a pair
prob2 <- 100*(1-(match3)/choose(10,4))
print(prob2)


# Now using equation from part (a), if we use similar values
# for n and r

# For Case 1(c)
n <- 5
r <- 1
prob3 <- (choose(n,2*r)*2^(2*r))/(choose(2*n, 2*r))
print(prob3*100)
# For Case 2(c)
n2 <- 5
r2 <- 2
prob4 <- (choose(n2,2*r2)*2^(2*r2))/(choose(2*n2, 2*r2))
print(prob4*100)




