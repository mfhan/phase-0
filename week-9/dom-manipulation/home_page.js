// DOM Manipulation Challenge

// I worked on this challenge [with: Bruno Zatta].

// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";


// Release 1:

document.getElementById("release-1").style.display = "none";

// Release 2:
// Change the inner text of the <h1> tag to "I completed release 2."

var element = document.getElementsByTagName("h1")[0];

element.innerHTML = "I completed release 2.";

// Release 3:

// Add the background color #955251 to the #release-3 div.

document.getElementById("release-3").style.backgroundColor = "955251";


// Release 4:

var items= document.getElementsByClassName("release-4");

for (var i = 0; i < items.length; i++) {
    items[i].style.fontSize = "2em";
}

// Release 5:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflection:
<!-- Add your reflection here -->
What did you learn about the DOM?
ANSWER: We learned that the DOM allows for easy access to the content of an HTML page. You can combine objects and methods; you can loop through an array you can declare variables as ways to manipulate the code.


What are some useful methods to use to manipulate the DOM?

ANSWER: getElementById; getElementsByTagName; getElementsByClassName; appendChild;

<!-- # This challenge took me 2 hours. -->