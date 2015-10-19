# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Isaac Lee].
# I spent [#] hours on this challenge.

# Pseudocode


# Input: A series of numbers, sixteen integers total
# Output: The sum of those sizteen digits.
# Steps:
# 1. Verify that the input is 16 digits total
# 2. IF there are not exactly 16 digits, raise an argumenterror.
# 3. Break apart all of the digits.
# 4. Double every other digit from index -2 to index 0
# 5. Break apart all of the doubled digits.
# 6. Sum all the digits.
# 7. IF the sum is a multiple of 10, validate credit card (return True)
# 8. ELSE reject credit card. (Return False)
#
# # Initial Solution
#

  class CreditCard
    def initialize(number)
     @number = number.to_s
     @array1 = []
     @array2 = []
      @total = nil
      unless number.to_s.length == 16
      raise ArgumentError.new ("This is an invalid number")
      end
     end

    def double
      @array1 = @number.split('')
      @array2 = @array1.dup
       @array2.map! do |i| i.to_i*2 if @array1.index(i) %2 == 0
       end
     end

   def split
      @array1.map! {|i| i.to_i if @array1.index(i) %2 == 1}
      @array2.map! {|i| i.to_s.split('')}
     @array2.flatten!.compact!
      @array2.map! {|i| i.to_i}
   end

    def sum
      @array1 << @array2
     @array1.flatten!
      @array1.compact!
     p @array1
     @total = @array1.reduce(:+)
     p @total
   end

   def validate
     if @total % 10 == 0
       p "This is a valid card"
     else
       p "This is not a valid card"
     end
   end

end
newcard = CreditCard.new(1234567890123456)
newcard.double
newcard.split
newcard.sum
newcard.validate
#
#
# # Refactored Solution
#
 class CreditCard
   def initialize(number)
     @number = number.to_s
     @array1 = @number.split('')
     @array2 = @array1.dup
     @array2.map! do |i| i.to_i*2 if @array1.index(i) %2 == 0 end
     @total = nil
     unless number.to_s.length == 16
      raise ArgumentError.new ("This is an invalid number")
     end
   end

   def check_card
     @array1.map! {|i| i.to_i if @array1.index(i) %2 == 1}
     @array2.map! {|i| i.to_s.split('')}
     @array2.flatten!.compact!
     @array2.map! {|i| i.to_i}
     @array1 << @array2
     @array1.flatten!.compact!
     @total = @array1.reduce(:+)
     if @total % 10 == 0
       p "This is a valid card"
     else
       p "This is not a valid card"
     end
   end
end

newcard = CreditCard.new(1234567890123456)
newcard.check_card
#



# Reflection

# What was the most difficult part of this challenge for you and your pair?
# ANSWER: Making sure every step was necessary and clearly defined. The instructions were tricky to us, and we had a hard time splitting the credit card number's digits and then re-sum the modified total.

# What new methods did you find to help you when you refactored?
# ANSWER: We decided to initialize the maximum number of instance variables in order to save lines and make the code clearer. It was fun translating entire methods into a few lines of code.

# What concepts or learnings were you able to solidify in this challenge?
# ANSWER: We were able to make full use of the .map, .flatten and .compact methods; we learned to split and then combine arrays under specific conditions.

