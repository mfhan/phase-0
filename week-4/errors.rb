# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  errors.rb
# 2. What is the line number where the error occurs?
# line 17
# 3. What is the type of error message?
#  syntax error
# 4. What additional information does the interpreter provide about this type of error?
#  unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#  Absence of closing end in line 17
# 6. Why did the interpreter give you this error?
#  Because both the WHILE loop and the DEF require and end

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#   line 36
# 2. What is the type of error message?
#  NameError
# 3. What additional information does the interpreter provide about this type of error?
#  undefined local variable or method `south_park'
# 4. Where is the error in the code?
# In the name south_park
# 5. Why did the interpreter give you this error?
# Because the given name is invalid or undefined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#   line 51
# 2. What is the type of error message?
# MethodError
# 3. What additional information does the interpreter provide about this type of error?
#  undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#   in the ()
# 5. Why did the interpreter give you this error?
# Because a method was called without being defined

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   lines 66 and 70
# 2. What is the type of error message?
#  ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#   in `cartmans_phrase': wrong number of arguments
# 4. Where is the error in the code?
#  cartmans_phrase being undefined, then defined as ('I hate Kyle')
# 5. Why did the interpreter give you this error?
#  Because the arguments are not written correctly

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#   line 85
# 2. What is the type of error message?
#   ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#   in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#   in the execution of the method
# 5. Why did the interpreter give you this error?
#  because the executed method didn't have any argument (i.e. Cartman says NOTHING)



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   106 and 110
# 2. What is the type of error message?
#   ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#   wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#   In (lie, name) and the executed method
# 5. Why did the interpreter give you this error?
# The argument in line 110 has no defined NAME

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   125
# 2. What is the type of error message?
#   TypeError
# 3. What additional information does the interpreter provide about this type of error?
#   String can't be coerced into Fixnum
# 4.  Where is the error in the code?
#  in the multiplication of a strong by a number
# 5. Why did the interpreter give you this error?
#  while "Respect my authoritay!" * 5 will return the sentence five times, the reverse will not yield a result

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#  140
# 2. What is the type of error message?
#  ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#   divided by 0
# 4. Where is the error in the code?
#   in the 20/0 expression
# 5. Why did the interpreter give you this error?
#  Because a number cannot be divided by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   156
# 2. What is the type of error message?
#   LoadError
# 3. What additional information does the interpreter provide about this type of error?
#   cannot load such file
# 4. Where is the error in the code?
#   In the type of document to be loaded (.md instead of .rb)
# 5. Why did the interpreter give you this error?
#   Because only a ruby document can be loaded this way


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# The first error ("line 170") as it sent to the end of the whole doc an "end" tag that belonged to the method started on line 13
#How did you figure out what the issue with the error was?
# Honestly: by following the discussion on Slack :)
#Were you able to determine why each error message happened based on the code?
# I think I understood most of the messages; also referred to the http://ruby-doc.org/ documentation
#When you encounter errors in your future code, what process will you follow to help you debug?
# research the error message type, look at the details, look at wider context of the faulty code