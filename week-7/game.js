 // Design Basic Game Solo Challenge

// This is a solo challenge

// Create at least 2 objects with properties
// Create at least 2 functions that interact with those objects by adding or modifying the object's properties
// Call each function (invoke the function) Make sure the output is actually what you expect!

// Your mission description: Kiss the Baby
// Overall mission: You are running for a presidential nomination. You must kiss as many babies as possible in 10 tries (1 point per baby kissed); if you make them cry you get 0 point and if you make five or more babies cry you are branded a cold-blooded monster.
// Goals: Collect Baby kisses (+1), avoid Cyring Baby (0) and move to next round of primaries
// Characters: Candidates (tedCruz, donaldTrump, jebBush)
// Objects: Candidate ( properties: name, event, points)
// Functions:  Kiss // Win


// Pseudocode:
// Declare a "candidate" object with three distinct instances
// create a function Kiss in which a candidate will randomly get a smiling baby (1) or a crying baby (0)
//  call the function Kiss
// repeat Kiss as many times as agreed between candidates
//  Check where each candidate is in terms of total points
//  Call the function Win, which decides that candidate with the most points wins the primary

// Initial Code (NON-WORKING; I get a "SyntaxError: Unexpected token . " message)

var tedCruz = { name: "Ted Cruz", event: "Primary", points: 0 };
var donaldTrump = { name: "Donald Trump", event: "Primary", points: 0 };
var jebBush = { name: "Jeb Bush", event: "Primary",points: 0 };

var candidates = new Array(
  tedCruz,
  donaldTrump ,
  jebBush
);


// FIRST FUNCTION:

function kiss(x, candidates.name) {
  x= Math.round(Math.random());
  if(x == 1){
   console.log( candidates.name + "kissed a smiling baby!")
  }
  else {
   console.log( "The baby burst into tears," + candidates.name + " is a cold-blooded monster!")
   }
}

// SECOND FUNCTION:
function win(candidates) {
  for( var i = 0; i < candidates.length; i++) {
    candidates[i].win = function() {
      console.log(" "+ this.name + " won the " + this.event + " by kissing the most babies!");
    }
  }
}

// DRIVER CODE:
// console.log(kiss(tedCruz));

// BONUS:
// I also tried to loop the baby kisses over 10 tries:

// var i;
// var list;

// function kiss(candidates.name) {
//    for (i ; i<=10 ;i++){
// list[i] = Math.round(Math.random());
// }
//   { var sum = 0;
// sum = sum + list[i];
// }
// if(sum >= 5){
//    console.log( candidates.name + "kissed a beautiful baby!")
//   }
//   else if(sum < 5) {
//    console.log("The baby burst into tears!" + candidates.name + " is a cold-blooded monster!")
//    }
// }




// Reflection
//
//What was the most difficult part of this challenge?
What did you learn about creating objects and functions that interact with one another?
ANSWER: I learned that it's difficult to link two functions to one another. I was hoping to be able to write a point tally in order to compare all three candidates, but couldn't come up with correct syntax.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?
ANSWER: You can access object properties by calling a function directly to that property.
//
//
//
//
//
//