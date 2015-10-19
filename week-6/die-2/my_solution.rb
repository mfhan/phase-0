# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: Create a new die
# Output: Die returns a random string
# Steps:
# 1. Initialize a die with sides
# 2. IF there are no sides, raise an ArgumentError.
# 3. define the number of sides
# 4. ensure that a roll of the dice produces a random string from the existing sides


# Initial Solution

 class Die
    def initialize(sides)
     @sides = sides
      if @sides == []
       raise ArgumentError.new("We need more sides")
     end
   end

   def sides # how many sides are on this dice
     p @sides.length
   end

   def roll
     p @sides[rand(@sides.length)]
   end
 end

 sides = ["Yes", "Maybe", "No", "Never", "Roll Again", "Absolutely"]

 die1 = Die.new(sides)
 die1.sides
 die1.roll


# Refactored Solution =
# I decided to define the sides at the same time I was creating die1.

class Die
  def initialize(sides)
    @sides = sides
     if @sides == []
      raise ArgumentError.new("We need more sides")
    end
  end

  def sides # how many sides are on this dice
    p @sides.length
  end

  def roll
    p @sides[rand(@sides.length)]
  end
end

die1 = Die.new(sides =["Yes", "Maybe", "No", "Never", "Roll Again", "Absolutely"])
die1.sides
die1.roll

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# ANSWER: The difference is that instead of a predictable series of integers, we had to work on random strings, making it necessary to clearly specify the array we were working with. I chose an 8-ball type die and I had to go over the finer points of intialization in order for the code to work and for the 8-ball to be a useful decision-making tool.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# ANSWER: The initialization has to be both precise and flexbile; the challenge is to know which elements can be placed in the initializaton phase and which ones should be outside.

# What new methods did you learn when working on this challenge, if any?
# ANSWER: I realized that sides.length was a useful tool to define the "roll" method when working on non-numerical strings.

# What concepts about classes were you able to solidify in this challenge?
# ANSWER: Again I was able to strengthen my understanding of the relationship between an initializaton and the creation of different instances. I also got to have a better grasp of the difference between instance variables and local variables.