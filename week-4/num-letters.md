
##4.2 Numbers, Letters, and Variable Assignment


####Chris Pine exercises:

**hours_in_year:**
p 24 * 365
 => 8760

Markdown style:
```ruby
puts 24 * 365
  "8760"
end
```

**minutes_decade: **
p 3652.5 * (24*60)
 => 5259600.0

Markdown style:
```ruby
puts 3652.5 * (24*60)
  "5259600.0"
end
```

**Links to exercises in Release 5:**

[Defining Variables](https://github.com/mfhan/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String Methods](https://github.com/mfhan/phase-0/blob/master/week-4/simple-string.rb)

[Local Variables and Basic Arithmetical Operations](https://github.com/mfhan/phase-0/blob/master/week-4/basic-math.rb)


###Reflection (Questions consolidated from Release 1 and Release 7)

** What does puts do?**

The Puts command writes on the screen whatever comes after it, be it a string, a variable, a program. It prints the output to the console with a new line but doesn't actually pass on any information or return anything.
The P command returns the evaluated code AND prints to the console
The Print command prints the output to the console without a new line and without returning anything.

**What is an integer? What is a float?**
An integer is a number without a decimal point (1001, 9); a float is a floating-point number, meaning a number with decimal points (0.01; 7.6, 20006.7334)

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

A float division returns the product of a division down to its smallest decimal point. An integer division only returns an integer answer. 32 divided by 5, for instance, returns 6.4 in a float division and 6 in an integer division. An integer division comes in handy for operations when the product is, by nature, not divisible. For instance, how many books worth $5 can you buy with $32? The integer answer of 6 would be the most accurate, since one cannot buy 0.4 of a book.


**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
Ruby uses symbols such as +, -, * and / between integer or float variables to handle these operations

**What are strings? Why and when would you use them?**
A string is an object that holds an arbitrary sequence of one or more elements. The interpreter treats anything surrounded with single quotes or double quotes as a string. Besides letters, a string can contain any number of variables; it can have punctuation, digits, symbols, spaces -- and even be empty.


**What are local variables? Why and when would you use them?**

A local variable lives inside a method; it is local to a method and doesn't exist independently. It is a temporary name for a given value inside a method. It has a name starting with a lower-case letter or an underscore character.



**How was this challenge? Did you get a good review of some of the basics?**
The challenge was a great opportunity to review fundamental Ruby syntax and get back in the saddle. I felt completely at sea at first but progressively gained my confidence back. It allowed me to review the concepts of variables, integers and strings.

