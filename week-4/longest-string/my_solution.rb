# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
#Despite hours spent on permutations and looking for the right syntax, this code does NOT work, and I would appreciate some guidance on how I can get more comfortable with these expressions. I worked completely on my own on this problem.
#I tried to apply a counter system, a swap mechanism, to no avail.

def longest_string(list_of_words)

 if list_of_words==[]
    return nil

 else
     counter
   list_of_words.each { |i|
    longest_string

  end

  return list_of_words

#REFACTORING:
#def longest_string(list_of_words)
#  list_of_words.max_by {|word| word.length }
#  end
