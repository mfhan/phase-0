
#Release 1: Pseudocode
#you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3.
#   IDENTIFY cohort of "people" (get a list of names)
#   GROUP THEM in groups of between 4 and 5 people
#    IF NO OTHER CHOICE, group them in 3s (=less fun, more lonely)
#   Update/PUTS the groups with group number and members of each group

Release 2: Write your Initial Solution

def create_groups(array)
  array.each_slice(4).to_a
end

=>
[1] 2.2.3 > create_groups(copperheads)
[
    [ 0] [
        [0] "Joshua Abrams",
        [1] "Syema Ailia",
        [2] "Kris Bies",
        [3] "Alexander Blair"
    ],
    [ 1] [
        [0] "Andrew Blum",
        [1] "Jacob Boer",
        [2] "Steven Broderick",
        [3] "Ovi Calvo"
    ],
    [ 2] [
        [0] "Danielle Cameron",
        [1] "Eran Chazan",
        [2] "Jonathan Chen",
        [3] "Un Choi"
    ],
    [ 3] [
        [0] "Kevin Corso",
        [1] "Eric Dell'Aringa",
        [2] "Eunice Do",
        [3] "Ronny Ewanek"
    ],
    [ 4] [
        [0] "John Paul Chaufan Field",
        [1] "Eric Freeburg",
        [2] "Jefferey George",
        [3] "Jamar Gibbs"
    ],
    [ 5] [
        [0] "Paul Gaston Gouron",
        [1] "Gabrielle Gustilo",
        [2] "Marie-France Han",
        [3] "Noah Heinrich"
    ],
    [ 6] [
        [0] "Jack Huang",
        [1] "Max Iniguez",
        [2] "Mark Janzer",
        [3] "Michael Jasinski"
    ],
    [ 7] [
        [0] "Lars Johnson",
        [1] "Joshua Kim",
        [2] "James Kirkpatrick",
        [3] "Christopher Lee"
    ],
    [ 8] [
        [0] "Isaac Lee",
        [1] "Joseph Marion",
        [2] "Kevin Mark",
        [3] "Bernadette Masciocchi"
    ],
    [ 9] [
        [0] "Bryan Munroe",
        [1] "Becca Nelson",
        [2] "Van Phan",
        [3] "John Polhill"
    ],
    [10] [
        [0] "Jeremy Powell",
        [1] "Jessie Richardson",
        [2] "David Roberts",
        [3] "Armani Saldana"
    ],
    [11] [
        [0] "Chris Savage",
        [1] "Parminder Singh",
        [2] "Kyle Smith",
        [3] "Aaron Tsai"
    ],
    [12] [
        [0] "Douglas Tsui",
        [1] "Deanna Warren",
        [2] "Peter Wiebe",
        [3] "Daniel Woznicki"
    ],
    [13] [
        [0] "Jay Yee",
        [1] "Nicole Yee",
        [2] "Bruno Zatta"
    ]


# Release 3: Add complexity (OPTIONAL)
# If you want to take your solution a step further, consider these questions and make changes to your solution based on your decisions:

# If you run this program three times in a row, will the program give you three different outputs?
# Should the program store past outputs?

If one person were to leave the cohort, how would the accountability groups change?
ANSWER: The total size of the cohort would decrease from 51 to 50, which would actually make it easier to chunk the array into groups of five people or into five groups of four (20 people) and six groups of five (30 people).

# How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.

# Release 4: Refactor your solution
# Now go into the Ruby Docs to see if there are any enumerable methods you can simplify your code with. Also refactor for readability and DRYness.


Release 5: Write Driver Code
Make sure to have method calls outside of your method. If you want to write your code as Driver Test Code, you can try that as well, but it's not required.

Release 6: Reflect
Create a commented-out reflection section in your acct_groups.rb file to answer the following questions in:

# What was the most interesting and most difficult part of this challenge?
# ANSWER: The challenge was to be able to produce groups of four or five strings (with what I took to be a reluctant tolerance for three) out of a given array. I had trouble coming up with something complex enough to let one group shift strings to another.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# ANSWER: Definitely -- although in this case I feel the pseudicide wasn't much #help in finding something that depends heavily on syntax.

# Was your approach for automating this task a good solution? What could have made it even better?
# ANSWER: If I had had the technical chops, I would have taken a much more refined look at randomly forming groups of 4 or 5. I would have also made sure each group had either 4 or 5 people.

# What data structure did you decide to store the accountability groups in and why?
# Arrays: I researched converting a large array into a hash, but simply couldn't find anything that passed the ruby test.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#Again I looked for a more "basic" way to divvy up an array and couldn't find anything. Each.slice(x) was therefore my choice from the get go.
