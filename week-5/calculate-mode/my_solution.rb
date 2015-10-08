# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array

# What is the output? (i.e. What should the code return?)
#The array's mode as the value most frequently used in the array

# What are the steps needed to solve the problem?
# -- Initialize a hash
# -- Loop through the array for each number or string, find their frequency
# -- Produce array with most-frequent value
# -- If there's only one most-frequent value, it returns a single-element array
#-- If there are multiple most-frequent values, returns array with all


# 1. Initial Solution
require 'set'
def mode(array)
  freq = Hash.new(0)
  max_value = 0
  array.each do |i|
    freq[i] +=1
    if freq[i] > max_value
      max_value = freq[i]
    end
  end

  array.max_by { |x| freq [x] }

  new_array = []
  array.each do |i|
    if freq[i] == max_value
      new_array.push(i)
    end
  end
  return new_array.to_set.to_a
end



# 3. Refactored Solution

require 'set'
def mode(array)
  freq = Hash.new(0)
  max_value = 0
  array.each do |i|
    freq[i] +=1
    if freq[i] > max_value
      max_value = freq[i]
    end
  end

  freq.select{ |k,v| v == max_value }.keys

end


# 4. Reflection

#Which data structure did you and your pair decide to implement and why?
# We decided to combine a hash (which would collect the frequency of each string) and an array as the end-result

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Practice makes perfect, and we were pretty efficient in clearly enunciating the problem in pseudocode.

#What issues/successes did you run into when translating your pseudocode to code?
# My lack of familiarity and experience with Ruby syntax prevented me from contributing more to the writing of the code. We did a lot of research and settled on the "new_array.to_set.to_a" expression, which was new to us.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#   array.each do |i|
#The refactoring focused mostly on streamlining our code. We did find the select method to replace set.
#