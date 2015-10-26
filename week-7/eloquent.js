// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.


var myMoney = 500
myMoney = myMoney + 50
console.log(myMoney);


var food = prompt("Please input your favorite food");

if (food != null) {
   console.log("Hey! That's my favorite too!");
}




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board



for (var i=1; i <= 100; i++)
{
    if (i % 3 === 0)
        console.log("Fizz");
    else if (i % 5 === 0)
        console.log("Buzz");
    else
        console.log(i);
}



for (var i=1; i <= 100; i++)
{
    if (i % 15 === 0)
        console.log("FizzBuzz");
   else if (i % 3 === 0)
        console.log("Fizz");
    else if (i % 5 === 0)
        console.log("Buzz");
    else
        console.log(i);
}




// Functions

// Complete the `minimum` exercise.


function min(arg1, arg2) {
  if (arg1 < arg2)
    console.log(arg1);
   else if (arg1 === arg2)
    console.log(nil);
   else
   console.log(arg2);
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.


var me = {
   firstName: 'Marie',
  myAge: 32,
  favoriteFoods: ["couscous", "fries", "bacon"],
   myQuirk: "plays fantasy baseball"
}

console.log(me);