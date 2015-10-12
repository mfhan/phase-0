# Numbers to Commas Solo Challenge

# I spent MORE THAN [9] hours on this challenge.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string

# 0. Pseudocode

# What is the input?  any positive integer
# What is the output? (i.e. What should the code return?)
#  a comma-separated integer as a string.
# What are the steps needed to solve the problem?
 # we need a method that
#    CONVERTS integers into strings
#    KEEPS numbers from 1 to 999 unchanged
#    ADDS a comma after the first digit from the number 1000 to the number 9999.
#    ADDS a comma after the second digit from the number 10000 to the number 99999.
#    ADDS a comma after the third digit from the number 100000 to the number 999999.
#    ADDS a comma after the first digit from the number 1000000 to the number 9999999.
#    ADDS a comma after the first digit from the number 10000000 to the number 99999999.


# 1. Initial Solution

def separate_comma(num)
  num = num.to_i


  if num >= 1000 && num <= 9999
    return num.to_s.insert(1, ",")
    end

  if num >= 10000 && num <= 199999
    return  num.to_s.insert(2, ",")
    end

  if num >= 100000 && num <= 999999
    return  num.to_s.insert(3, ",")
    end
  if num >= 1000000 && num <= 9999999
     num2= num.to_s.insert(1, ",")
    return num2.to_s.insert(5, ",")
    end

  if num >= 10000000 && num <= 99999999
   num2= num.to_s.insert(2, ",")
  return num2.to_s.insert(6, ",")
  end
end


# 2. Refactored Solution

def separate_comma(num)
  num = num.to_i

  if num.between?(1000, 9999)
    return num.to_s.insert(1, ",")
   end
  if num.between?(10000, 99999)
    return  num.to_s.insert(2, ",")
    end

  if num.between?(100000, 999999)
    return  num.to_s.insert(3, ",")
    end
  if num.between?(1000000, 9999999)
     num2= num.to_s.insert(1, ",")
    return num2.to_s.insert(5, ",")
    end

  if num.between?(10000000, 99999999)
     num2= num.to_s.insert(2, ",")
    return num2.to_s.insert(6, ",")
    end
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# ANSWER:
# I spent many hours pondering several approaches.
# I considered each category of numbers according to the index number of the prospective comma and tried to come up with a method that would address numbers from 1 to 1,000,000 as indicated in the instructions.
# I spent hours trying to dwell on the "random integer" aspect of the number, fiddling with code such as:

# if (rand(i) * 999).to_i    return i
#    end
#    if (rand 1000..9999).to_i
#    rand.insert(1, ",")
#    end

# Was your pseudocode effective in helping you build a successful initial solution?
# ANSWER: Yes, I was surprised at how useful the pseudocode was in getting a clear, precise grip of the question at hand, showing the changes in the comma's location as the numbers increased.


# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# ANSWER: I just went from a boolean expression (&&) to between? ; the change didn't rectify the general clunkiness of the code.


# How did you initially iterate through the data structure?
# ANSWER: I increased the base of each integer group and studied the way the comma(s) would have to move as the base increased.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# ANSWER: Not much better, although more concise and more legible. I can't wait to see the one-liners concocted by other copperheads.