Find a Ruby challenge you particularly enjoyed or found difficult. Then solve it again using JavaScript!

//
//RUBY LEAP YEAR:
// def leap_year? (year)
//   if year % 100 == 0 && year % 400 != 0
//     return false
//   elsif year % 4 == 0 || year % 400 == 0
//     return true
//   else
//     return false
//   end
// end


// PSEUDOCODE:
// Reminder: if the year can be evenly divided by 100, it is NOT a leap year, unless; The year is also evenly divisible by 400. Then it is a leap year. This means that 2000 and 2400 are leap years, while 1800, 1900, 2100 and 2500 are NOT leap years.
1. Take any year
2. IF the year is divisible by 100 BUT NOT by 400,
     it is not a leap year, return "false"
3. IF the year is divisible by 4 and by 400,
    it is a leap year, return "true"

// I took a relatively simple challenge to translate as I need practice in the most basic expressions of JavaScript.

function leapYear(year){
    if(year % 400 ==0){
      return  true;
    }
    else if(year % 100 == 0){
      return false;
    }
    else if(year % 4 == 0 && year % 100 != 0){
      return true;
    }
    else{
      return false;
    }
 }



// Reflections:

// What concepts did you solidify in working on this challenge?
// -- I just needed to go back to the simplest JavaScript codes I could find in order to make things work.
// What was the most difficult part of this challenge?
// -- Keeping a focus on JS when Phase 1 and its avalanche of Ruby awaits
// Did you solve the problem in a new way this time?
// -- Not really -- no time to explore
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// -- Pretty much identical, I'm afraid.




