

**Full-Name Greeting challenge:**
```ruby
p 'Hello there, what\'s your name?'
var1 = gets.chomp
p  ( 'Your first name is ' + var1 + '? What\'s your middle name?' )
var2 = gets.chomp
p  ' ' + var1 + ' ' + var2 + ', what\'s your last name?'
var3 = gets.chomp
p  'Hello, ' + var1 + ' ' + var2 + ' ' + var3 + ' '
```

**Favorite Number challenge:**

```ruby
p 'What\'s your favorite number?'
var1 = gets.chomp
var2 = var1.to_i + 1
p 'Isn\'t ' + var2.to_s + ' an even better and bigger number? '
```

**Define Method:**
https://github.com/mfhan/phase-0/blob/master/week-4/define-method/my-solution.rb

**Address:**
https://github.com/mfhan/phase-0/blob/master/week-4/address/my_solution.rb

**Math**
https://github.com/mfhan/phase-0/blob/master/week-4/math/my_solution.rb




#** How do you define a local variable? **
#A: Local vars are created within a method, and are only accessible within a method. Let's say I included the word "banana" in a method called juice_this(banana, apple, grape), that specific banana cannot be accessed via another method that may be called eat_fruit(banana, apple, grape) -- while the names are identical, the bananas are not the same and will not respond identically to two different methods.

# **How do you define a method?**
#A: Methods are reusable blocks of code that "do things." They act as VERBS on strings, variables, arrays etc. Methods save time and can be saved as libraries.

#**What is the difference between a local variable and a method?**
#A: The local variable exists within a method, which can apply to any number of variables as determined by the method's writer.

#**How do you run a ruby program from the command line?**
#A: By using the "ruby" command on an .rb file: ruby filename.rb

#**How do you run an RSpec file from the command line?**
#A: rspec spec-file-name.spec

#**What was confusing about this material? What made sense?**
#A: The most confusing aspect of this material was the rigidity of the syntax -- one missing space and the whole exercise falls off a cliff. What made sense was the very logical way Ruby needs to be written in order to reach a result.