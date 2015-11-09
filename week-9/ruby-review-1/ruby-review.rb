
# # I worked on this challenge [by myself].
# # This challenge took me [2] hours.


# # Pseudocode

# Write a method called super_fizzbuzz which takes as its input an Array of integers.

# It should return a "fizzbuzzed" Array, i.e., the array is identical to the input with the following substitutions:

# Multiples of 3 should be replaced with the string "Fizz"
# Multiples of 5 should be replaced with the string "Buzz"
# Multiples of 15 should be replaced with the string "FizzBuzz"

#  INPUT: an array of integers
#  OUTPUT: a fizzbuzzed array
#  STEPS:

# -- IF array includes 3 or its multiples,
#        substitute the integer with "Fizz"
# -- IF array includes 5 or its multiples,
#        substitute the integer with "Buzz"
# -- IF array includes 15 or its multiples
#        substitute the integer with "FizzBuzz"
# -- IF array includes numbers that are not any of those, just print the number

#        return the modified array



# Initial Solution

def super_fizzbuzz(array)
  array.collect! do |i|
     if i % 15 == 0
       i = "FizzBuzz"
     elsif i % 3 ==0
       i = "Fizz"
     elsif i % 5 == 0
      i = "Buzz"
    else
      i
    end
  end
end

p super_fizzbuzz([33, 13, 45, 36, 75, 85, 150])


# Refactored Solution


# def super_fizzbuzz(array)
#   array.collect! do |i|
#     case
#     when i % 15 == 0 then "FizzBuzz"
#     when i % 3  == 0 then "Fizz"
#     when i % 5  == 0 then "Buzz"
#     else i
#     end
#   end
# end



# Reflection

# What concepts did you review in this challenge?
# I continued to practice iterating over an array, this time with an extra complication compared with the initial challenge.
# What is still confusing to you about Ruby?
# Classes, scopes: I still need more PRACTICE to make these concepts real in my head
# What are you going to study to get more prepared for Phase 1?
# Iteration, class, inheritance
