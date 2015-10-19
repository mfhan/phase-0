# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
# attempts:
# ATTEMPT 1: array[1][2][0]
# NoMethodError: undefined method `[]' for nil:NilClass

#ATTEMPT 2: WORKED:
p array[1][1][2][0]

# ============================================================
# Hole 2
# Target element: "congrats!"
hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: BOTH WORK
# ATTEMPT 1:
hash[:outer][:inner]["almost"][3]
#ATTEMPT 2
p hash.fetch(:outer).fetch(:inner).fetch("almost").fetch(3)

# ============================================================
# Hole 3
# Target element: "finished"
nested_data = {array: ["array", {hash: "finished"}]}

# attempt:
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

 number_array.each do |element|
  if element.kind_of?(Array)
     element.each{|inside| p inside + 5}
  else
  p element + 5
  end
end

# RELEASE 5: REFACTOR
number_array.flatten!(1)
  number_array.each do |element|
  p element + 5
  end

#add_this[5, 10, 15, 20, 25, 30, 35]

# RELEASE 4 (Bonus):

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each do |element|
  if element.kind_of?(Array)
    element.each do |inner|
      if inner.kind_of?(Array)
        inner.each{|innerinner| innerinner << "ly"}
      else
        inner << "ly"
      end
    end
  else element << "ly"
  end
end
p startup_names


# Release 5: Reflect

# What are some general rules you can apply to nested arrays?
# ANSWER:
# -- Pay extreme attention to the nesting structure and the index order
# -- There is always a simpler solution
# -- Make sure you can tell and array and a hash apart
#
# What are some ways you can iterate over nested arrays?
# ANSWER:
# -- Run a .each over elements in various layers of nested arrays
# -- Use if/else to inspect inner arrays
# -- Use .fetch to retrieve contents of arrays
#
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# ANSWER:
# I am so new to Ruby that all methods are still fairly new and shiny.
# I used .fetch for a nested hash, a method that works best when one targets specific elements.
# I used .each for a nested array in order to iterate over all its inner layers for convenience.
#  I used flatten in order to put all elements on the same level and manipulate them in the fewest steps.


