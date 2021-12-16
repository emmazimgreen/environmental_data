# Loops
# -> loop initiator: for (i in 1:100)
# i is loop variable

for (i in 1:2)
{
   print(i)
}
# output: 
#[1] 1
#[1] 2

# Loop sequences: 
# sequence of values the loop variable will 
# assume in each loop iteration

for (i in c(3, 6, 77))
{
  print(i)
}
# output: 
#[1] 3
#[1] 6
#[1] 77

# value of i after this loop is the last thing 
# it printed, aka i

# While loops:
# unlike for loops, they can run forever

