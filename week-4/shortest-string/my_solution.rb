# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
# Despite hours spent on permutations and looking for the right syntax, this code does NOT work, and I would appreciate some guidance on how I can get more comfortable with these expressions. I worked completely on my own on this problem.


def shortest_string(list_of_words)
  shortest_string >1
 if shortest_string[]
    return nil
  end

 until (list_of_words).length == 1
   if  list_of_words.(0) > list_of_words(-1)
      list_of_words.shift
    else

      list_of_words.pop
     end

  end

  return list_of_words[0]
end



# REFACTOR:
#def shortest_string(list_of_words)
#  (list_of_words).min
#end
