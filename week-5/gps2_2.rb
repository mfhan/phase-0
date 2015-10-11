
#Release 1: Pseudocode

#1. Create a hash named grocery list
 #grocery_list = {}

# 2.Add an item with a quantity to the list
  # Pseudocode:
# a method that
  # IF the item already exists,
     #updates the quantity for that item
   # OTHERWISE (if it doesn't already exist)
   #add the item and its quantity to the list
   # UPDATES quantity
   # prints list

# 3. Remove an item from the list
    # a method that
  #removes item and quantity from the list
   # UPDATE quantity
    # prints list


#4. Update quantities for items in your list:
# a method that
    #passes in a food and quantity
    #IF the food is on the list
       #update the quantity for that item
    #OTHERWISE
    #add that item to the list with the respective quantity
#   print "#{food}: #{quantity}"


#5. Print the list
#   a method that
# prints the list in a form that's as close to the natural language (i.e. "7 oranges" instead of: 'apples': 5 )
# and says it in a nice way


#Release 2: Initial Code and Testing

def add_item(list, food, quantity)
  if list.include? food
    puts "It's already here. Updating quantity"
  else
    list[food] = quantity
  end
  print_list(list)
end

def remove_item(list, food)
  list.delete(food)
  print_list(list)
end

def update_list(list, food, quantity)
  if list.include? food
    list[food] += quantity
    print_list(list)
  else
    add_item(list, food, quantity)
    end
      print_list(list)
end

def print_list(list)
  print "Hey we need "
  list.each do |food, quantity|
    print "#{quantity} #{food}, "
  end
  puts "from the store!"
end


#Release 3: Testing



#Release 4: Refactor
#With your partner, review the code. Is it readable and DRY? Consider the logic you implemented in your initial solution, are there any Ruby methods you can use to simplify your code? Feel free to go into the docs to find methods.

# We were working with existing "simple" hash methods so it was difficult to refactor from such a basic level. The "Inspect" method prints out the current contents of the hash:
#puts  grocery_list.inspect


#What did you learn about pseudocode from working on this challenge?
#  We've learned that the more precise and informative the pseudocode, the easier it will be to write actual code. We realized that simple-sounding operations such as "add item" actually involved several steps and outcomes

#What are the tradeoffs of using Arrays and Hashes for this challenge?
# We used hashes as a grocery list naturally pairs an item and a quantity. The trade-off was the lack of indexing that comes with an array. Indexing might have come in handy when updating the list.

#What does a method return?
# A method is the "verb" that makes objects "do" things. It is reusable, therefore a time-saver. A method can be defined with parameters; when a method is called, it "passes" an argument to modify it or to return a specific result.

#What kind of things can you pass into methods as arguments?
#  Strings, integers, floats.

#How can you pass information between methods?
#  By using methods within methods: here we created and used a method called print_list, which we then used for addition, subtraction and update methods.

#What concepts were solidified in this challenge, and what concepts are still confusing?
# we gained more confidence manipulating hashes through the challenge. I am still hesitant about the overall syntax, something I need to overcome as I gain more experience with Ruby.
#