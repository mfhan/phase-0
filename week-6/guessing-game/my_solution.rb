# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: A random integer
# Output: A true/false answer on whether the last guess was correct
# Steps:
# Decide on (intialize) an answer
#   Make a guess
#   Return :high, :low or :correct on the guess
#   IF guess is :correct,
#     return game.solved? = true
#   ELSE
#     return: "Make another guess!"
#   Repeat guesses until game is solved
#   WHEN game is solved,
#       return game.solved? = true


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
  # Make sure you define the other required methods, too

class GuessingGame
   def initialize(answer)
     @answer = answer.to_i
    end

     def guess(guess)
     @guess = guess
       if @guess > @answer
         return :high
       elsif @guess == @answer
         return :correct
       else
         return :low
       end
   end

    def solved?
    if @guess == @answer
    return true
    else
    return false
    end
  end
end

game = GuessingGame.new(10)
game.guess(5)
game.solved?


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# ANSWER: While a local variable onlly lives within a given method ("throw ball," for instance), instance variables can represent different types of objects within a class. We can, for instance, create the class Ballplayer, which will encompass all the positions inside a baseball team. We can then create different instances of ballplayers (@ballplayer = Ballplayer.new), such as picher, shortstop, centerfielder, closer, reliever, etc. All these players have common characteristics (two arms, two legs, Major League Baseball union card) and a number of skills (pitches, bats, fields, walks) which can be all defined inside the Ballplayer class.
# When should you use instance variables? What do they do for you?
# ANSWER: Unlike a local variable, an instance variable retains its value even after the method that initialized it terminates -- it can subsist across method calls, it can be used by all the other methods created within a given class.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# ANSWER: I did have trouble making answer and guess work through two different methods - but I eventually figured things out.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# ANSWER: Ruby processes symbols faster than longer lines of code, especially when used with attributes and hashes. They also project clarity in the code.
#