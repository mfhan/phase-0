# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)

  if list_of_nums.length == 0
       return nil
  end

  until (list_of_nums).length == 1

     if  list_of_nums.first < list_of_nums.last
       list_of_nums.shift
     else
       list_of_nums.pop
     end

   end

  return list_of_nums[0]

end

#REFACTOR:
#def biggest_integer(list_of_nums)
#  (list_of_nums).max
#end