# Smallest Integer

# I worked on this challenge [by myself, with a VERY SMALL formatting help from a friend; the .shift and .pop methods were entirely of my own initiative. If I hadn't received a quick feedback on moving ONE element of code (END) to the right position, I would not have been able to resolve 4.6.1.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)

  if list_of_nums.length == 0
       return nil
  end

  until (list_of_nums).length == 1

     if  list_of_nums.first > list_of_nums.last
       list_of_nums.shift
     else
       list_of_nums.pop
     end

   end

  return list_of_nums[0]

end

# REFACTOR: THIS CODE DOESN'T WORK
#def smallest_integer(list_of_nums)
#  list_of_nums.sort
#  return list_of_nums.(0)
end






