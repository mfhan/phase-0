# Pad an Array

# I worked on this challenge [by myself, with: Eran Chazan]

# I spent [4] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#Array of non-negative integers
# What is the output? (i.e. What should the code return?)
#Array with elements added


# What are the steps needed to solve the problem?

#   Define method:

#   IF the array's length is less than the integer's minimum size
#     return a new array padded with the argument value up to the minimum size

#  IF the array's length is less than the integer's minimum size
#   AND IF there is no argument:
#      return a new array padded with the integer up to the minimum size

#   IF array's length is equal to integer's minimum size
#      return the array

#   IF array's length is MORE than the integer's minimum size
#      return the array

#   IF the integer's size is 0
 #      return the array

#   IF the array is empty
#      return the array



# RELEASE 4: Initial Solution

 #non-destructive

def pad(array, integer, arg = nil )
  new_array = array.clone
  if array.length < integer
    (integer - array.length).times do |i|
      new_array << arg
    end
  end
  return new_array

end


#destructive
def pad!(array, integer, arg = nil )
  if array.length < integer
    (integer - array.length).times do |i|
      array << arg
    end
  end
  return array
end


#Release 5: Refactor
 #non-destructive

def pad(array, integer, arg = nil)
  new_array = array.clone
  if new_array.length < integer
    (integer - array.length).times do
      new_array << arg
    end
end

#destructive
def pad(array, integer, arg = nil)
  new_array = array
  if new_array.length < integer
    (integer - array.length).times do
      new_array << arg
    end
end


# Reflections:

# Were you successful in breaking the problem down into small steps?
# A: The pseudocode went as well as possible as we managed to tally all the outcomes and realize that there were really only two options.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# NO -- the process took countless searches, failures, visits to the Office Hours and to the Slack channel, where generous students helped us out.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# A: Due to our lack of familiarity with Ruby, we had difficulties correctly formulating the syntax of .times and .each. We also had trouble streamlining our code and were burdened by lines and lines of unnecessary and faulty elements.
# We had to consult more experienced students and do our own research to get a better understanding of concepts such as cloning an array, assigning a defaut nil value to an argument, and correctly handling IF clauses.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#
# How readable is your solution? Did you and your pair choose descriptive variable names?
#  we believe the code is pretty readable.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods change the initial objects on which a method is passed. Non-destructive methods allow the original objects to remain unchanged by using a clone.
#