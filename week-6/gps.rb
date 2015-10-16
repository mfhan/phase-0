# Your Names
# 1) Max Iniguez
# 2) Marie-France Han


# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size_mod = order_quantity % serving_size

  if serving_size_mod == 0
    return "Well, let's make #{order_quantity/serving_size} #{item_to_make}"

  elsif serving_size_mod == 1
      return "Calculations complete: Make #{order_quantity/serving_size}     #{item_to_make}, you have #{serving_size_mod} leftover ingredients. why don't we bake: a     cookie?"
  else

    return "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}, you have #{serving_size_mod} leftover ingredients. why don't we bake: #{serving_size_mod} cookies?"
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection


# 1. What did you learn about making code readable by working on this challenge?
# ANSWER: We learned the importance of refactoring a method into clear, economical chunks -- not just for the sake of efficiency but also in the interest of readability.
#For instance, we decided that eliminating the error counter would actually improve readability by removing a non-essential and confusing definition.
# 2. Did you learn any new methods? What did you learn about them?
# ANSWER: We learned about .has_key, a method that tells you whether a given key is present or not.
# 3. What did you learn about accessing data in hashes?
# ANSWER: We learned to access data by key and by value; we learned to match certain values (say, 5) to a key that would transform it into a menu item
# 4. What concepts were solidified when working through this challenge?
# ANSWER: -- The importance of giving clear names to things: we changed the abstract word "library" into a much more intuitive "menu"
#-- The importance of natural language: Instead of having the method output robot-ese, we decided to have three scripts covering the three possible outcomes of the order.