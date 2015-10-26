 // JavaScript Olympics

// I paired [with Jeff George] on this challenge.

// This challenge took me [1] hours.

// Bulk Up

var sarahHughes = { name: "Sarah Hughes", event: "Ladies' Singles" };
var michelleKwan = { name: "Michelle Kwan", event: "Ladies' Singles" };
var yevgeniPlushenko = { name: "Yevgeni Plushenko", event: "Men's Singles" };
var paulWylie = { name: "Paul Wylie", event: "Men's Singles" };

var athletes = new Array(
  sarahHughes,
  michelleKwan,
  yevgeniPlushenko,
  paulWylie
);

function win(athletes) {
  for( var i = 0; i < athletes.length; i++) {
    athletes[i].win = function() {
      console.log(this.name + " won the " + this.event + "!");
    }
  }
}
/*
console.log(athletes);
*/

// Jumble your words

function reverseStr(string) {
  var array = string.split("");
  return array = array.reverse().join("");
}
/*
var jumbleStr = "!sdrow ruoy elbmuJ"
console.log(reverseStr(jumbleStr));
*/


// 2,4,6,8

function appreciate(array) {
  var output = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i]% 2 === 0) {
      output.push(array[i]);
    }
  }
  return output;
}
/*
console.log(appreciate([4,7,8,9,3,2.13,46,54]));
*/

// "We built this city"

var Athlete = function(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


// Driver Code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

var alexanderPopov = new Athlete("Alexander Popov", 30, "swimming", "I'm the torpedo!");
console.log(alexanderPopov.constructor === Athlete);
console.log(alexanderPopov.name + " " + alexanderPopov.sport + " " + alexanderPopov.quote);


// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// ANSWER:
// We reviwed the process of creating a function that takes an array of athletes; we originally thought of putting the function inside the atheletes object, but realized that the instruction specifically called for a separate function.
// What are constructor functions?
// ANSWER:
//  A constructor is a function whose purpose is to create a new object. For instance, the code: "var person = new Object(); " the constructor being used is Object(), which creates a new instance of object and stores it in the variable person.

// How are constructors different from Ruby classes (in your research)?
//  ANSWER:
//  The JavaScript constructor function provides a way to define behavior that is shared by all new objects that are created by that function. While Javascript doesn't have a class, it includes the principle of inheritance.

//   In Ruby, classes provide a way of creating objects via the "new" method. The important distinction is that "new" is a method of Class, not an inheritance as in JavaScript.
