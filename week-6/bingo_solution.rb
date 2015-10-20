# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1 to 100)
# Define new method which:
# -- randomly returns one letter out of 5 (BINGO)
# -- randomly returns one number between 1 and 100
# -- Creates a "bingo_board" array containing five arrays of five numbers each.

# -- create five vertical arrays of five numbers corresponding to each letter; for B, for instance, the bingo board provided by the exercise shows that the column will be [47, 22, 83, 25, 75]
# --  check the array corresponding to each letter to see if they contain the number created by the method


#   IF the number exists on any of the arrays,
#    REPLACE with an x
#    ELSE
#    repeat the first two methods


# # Display a column to the console
# -- print arrays after completing a given number of drawings
# -- align the arrays and the letters so they form a square shape


# Initial Solution
#Obviously, I haven't been able to find an initial solution with my current knowledge.
# What I focused on is the EXACT bingo board provided for the exercise, meaning that each letter of the array ["B", "I", "N", "G", "O"] comes with five numbers attached. I know that the random drawing is done with 100 numbers, 20 timmes more than what the bingo board offers. I know that the exercise also requires the replacement of is a number with an x IF and ONLY IF the number drawn corresponds to one of the five numbers attached to the letter drawn.
# I tried to follow each step of the pseudocode I had written, but found myself in a jumble of arrays corresponding to each number, and found myself unable to make the replacement without going on a case-by-case basis, i.e. writing 25 different methods.
# I sense that there is an iterative way to automatically check the existence of a random number in the bingo array, and perhaps another way to systematially replace that number with an X. I was unable to find it.
#Below is the beginning of my codeand, commented out at the bottomm, my reflections.

class BingoBoard

  def initialize(board)

    @bingo_board = board
    @letter =  letter
    @number = number
    @array1 = [47, 44, 71, 8, 88]
    @array2 = [22, 69, 75, 65, 73]
    @array3 = [83, 85, 97, 89, 57]
    @array4 = [25, 31, 96, 68, 51]
    @array5 = [75, 70, 54, 80, 83]
    end

   def draw
       @letter =[rand("B", "I", "N", "G", "O")]
       @number = rand(1..100)
   end

   def compare #IN ONE BLOCK
       if @letter == B.to_s &&   [47, 22, 83, 25, 75].include?@number
      if @letter == I.to_s  &&   [44, 69, 85, 31, 70].include?@number
       if @letter == N.to_s &&   [71, 75, 97, 96, 54].include?@number
       if @letter == G.to_s &&   [8, 65, 89, 68,80].include?@number
       if @letter == O.to_s &&   [88, 73, 57, 51, 83].include?@number

#OR: PROCEED LETTER BY LETTER?
     def letterB
       if @letter == B.to_s &&   [47, 22, 83, 25, 75].include?@number
     def letterI
       if @letter == I.to_s &&   [44, 69, 85, 31, 70].include?@number
      def letterN
       if @letter == N.to_s &&   [71, 75, 97, 96, 54].include?@number
      def letterG
       if @letter == G.to_s &&   [8, 65, 89, 68,80].include?@number
      def letterO
       if @letter == O.to_s &&   [88, 73, 57, 51, 83].include?@number

         array{|num| num.to_s.include?(thing_to_find)}

       Else
         draw

      end
end

# Refactored Solution


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


# Release 6: Reflect

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The pseudocoding step allowed me to see the gap between the 100 numbers drawn at random, a huge array compared to the five numbers associated to each letter.
# What are the benefits of using a class for this challenge?
# Everything fits into the "BingoBoard" concept, including the drawing, the checking for values in the Bingo arrays, and the printing of a decent-looking table.
# How can you access coordinates in a nested array?
# By using a specific syntax; if one wants to reach the word "egg" in this hash:  ballplayer = {outfield: {infield: {benches: egg}}}, one would have to write: ballplayer[:outfield][:infield][:benches]

# What methods did you use to access and modify the array?
 .to_include? In order to check the existence of a specific string
 .to_& = to string, in order to make an object more unform
# How did you determine what should be an instance variable versus a local variable?
 The bingo_board provided for the exercise reportedly has no equivalent in the real world, therefore I chose to initialize it early in the class.
# What do you feel is most improved in your refactored solution?
