#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

class NameData
  attr_accessor :name

  def initialize
  #  @name = name
    @name = "Marie"
  end
end

class Greetings
  attr_accessor :namedata

  def initialize
    @namedata = NameData.new
  end

  def hello
   puts " "#{@namedata.name}, wonderful to see you today.""
  end
end
greet = Greetings.new
greet.hello # puts: "Marie, wonderful to see you today.""


# # Reflection
# Release 1:
# What are these methods doing?
# ANSWER:
# -- They initialize a profile
# -- they print the local variables corresponding to the instance variables (age, name, profession)
# -- The define the concept of current age,
# -- then also define the possibility of a new age
# -- they define a name and a name change
# -- the define an occupation and a change in occupation
# -- they create an instance of the class Profile
# -- they print the required information with timed pauses
# -- they print fancy dots
# -- they use the new instance to change age, name and profession

# How are they modifying or returning the value of instance variables?
# ANSWER:  By using the methods change_my_age, change_my_name and change_my_occupation


# Release 2:
# What changed between the last release and this release?
# What was replaced?
# Is this code simpler than the last?
# ANSWER: The instance method what_is_age was replaced by a reader attribute, :age. The code creates a new method, .age, and economizes two full lines, which is of course more efficient.


# Release 3:
# What changed between the last release and this release?
# What was replaced? # Is this code simpler than the last?
# ANSWER:  The instance method change_my_age was replaced by the writer attribute :age. This, again, economizes lines of code and makes it easier to read.
# As a result of the new writer attribute,  the method change_my_name is no longer needed, and the transition to Taylor's age can be done simply by the method .age.


# Release 4:
# Open release_4.rb. Finish refactoring the code to make the best use of the attr_attribute methods and delete any code that isn't needed anymore.
# ANSWER: See link:  https://github.com/mfhan/phase-0/blob/master/week-6/attr/release_5.rb
#
# Release 6:
# What is a reader method? What is a writer method?
# ANSWER: The writer, or setter method, is a built-in shortcut that defines a value to an instance variable. The reader, or getter method, automatically creates a method that returns the value of the instance variable; it calls the method on a variable whose value was defined by the writer.

# What do the attr methods do for you?
# ANSWER: They are a shortcut that allow for any number of reader, writer or accessor methods to be created on a large class. They can save repetitive manual tasks on a number of instances.

# Should you always use an accessor to cover your bases? Why or Why not?
# ANSWER: while accessor looks convenient, it allows the instance variable to be fully accessible from outside of the class, meaning that it can be written from outside the class, potentially leading to conflict. You want to keep some of your instances read-only.
# What is confusing to you about these methods?
# ANSWER: The distinction between reader and writer remains pretty blurry -- in the Rubyist example (p 76), :venue and :date are set as reader attributes, whereas :price is set to an accessor, which is not intuitively understandable, other than by the fact that we are defining a Ticket class.
#