
# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

# 0. Pseudocode

# Input:  A Basic Die
# Output: Die that can return a random number depending on the numbder of sides assigned
# Steps:
# #DEFINE DIE METHOD
# --  Initialize a die
# --  Assign x number of sides
# --  Roll a die with x number of sides
# --  Return anywhere between 1 and x (rand)


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Ya need more sides to be a good die")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

die = Die.new(23)
die.sides
die.roll


# 3. Refactored Solution

Honestly couldn't find anything that could do a better job rolling dice according to number of sides.


# 4. Reflection
#
# What is an ArgumentError and why would you use one?
# It's a response raised when the argument is wrong; in this case, a die ad traditionally defined cannot have just one side.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#  I created a die class and added definitions to make it "work," i.e. have sides and roll and output a number.

# What is a Ruby class?
# A Ruby class form the blueprint of an object. For example, we created a Die class that has allowed us to make a wide variety of individual dies (=objects) with more than one side. An object is an instance of a class.
#
# Why would you use a Ruby class?
# A class can be useful in creating a new object. It allows, for instance, the spawning of a new dog, when the individual instance of a dog cannot reproduce itself in the Ruby universe.

# What is the difference between a local variable and an instance variable?
# An instance variable has a scope that's limited to the instance to which it belongs, meaning the object created under a class. Similarly, a local variable has a scope limited to the method or block in which it was created

# Where can an instance variable be used?
# Let's say we create the class "ticket". Instance variables can be as diverse as ticket price, ticket category, ticket availability.