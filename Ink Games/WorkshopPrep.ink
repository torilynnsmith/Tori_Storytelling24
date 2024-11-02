Once upon a time... 
There was a computer.
"Hello world!" //This is a singe line comment! 

//DECLARE VARIABLES//
VAR playerName = "" //GLOBAL VARIABLES, accessible anywhere throughout the script, indicated with VAR. can be ints, floats, true/false, strings (""), or even diverts
//temp variables are declared and usabl w/i specific knots
CONST myConstant = 6 //similar to a global variable in that it can be accessed from anywhere, but it can't be changed after it's been declared. 


/*You can comment multiple lines
like this*/

 * "Hello computer!" //This is a choice
    It's nice to meet you. //This text gets shown when you make the above choice
    Let's get started! //I personally like to indent over so I can visually track which text gets linked to certain choices. 
 * "I'm just a person, not the world...." //This is another choice
    Sorry, didn't mean to be rude. //This text gets shown when you make the above choice. 

- What should we talk about next? //This is a gather, it gather's up the previous threads/choices (like a bottleneck)

* "I'm here to learn about ink." //This is a choice and the beginning of a new knot. 
    Great! I'm an ink expert! 
* "Technically, we aren't actually talking..." //the curly brackets indicate a conditional
    And yet we're speaking. Do you always argue like this?
    ** [Double Down] "I'm reading what you say, that's not speaking." //this is a nested/subchoice
        You're delightful.... //This text will show after a choice too. 
    ** [Apologize] "You're right, I'm being rude. Sorry" //you can change what's displayed in the choice test by using square brackets. Whatever's in the brackets won't print after the choice has been picked. 
        Thank you for the apology. 
    
- Anyways, lets learn about ink. 

-> knotintro

== knotintro ==
This is a new knot! Knots are indicated with "== knotname ==" and you can DIVERT to them through choices (and conditionals, but we'll get there).
-> varyingchoices

== varyingchoices ==
Would you like to go to a new knot?
+ yes //this choice will be shown always. It's called a "sticky" choice
    -> pizzatoppings //you can divert to new knots with choices instead of gathering them at the end. 
* maybe?//this choice will only be shown once 
    You seem unsure...
    ->varyingchoices //diverting back to the same knot is called a loop
* no //this choice will only be shown once
    You're no fun. Try again. 
    -> varyingchoices

== pizzatoppings ==
// Pick a pizza topping.
// * {not cheese} Nothing //this will be show first because we haven't seen cheese yet
//     -> nothing
// * {nothing} Cheese //once we've seen nothing, we now have the option to see cheese.
//     -> cheese
// * {cheese} [Pepperoni] //we've now seen cheese and can pick pepperoni. these are booleans
//     -> pepperoni
Pick a pizza topping.
* [Nothing] ->nothing
* (cheese) [Cheese] Cheese. Basic but yummy. 
* (pepperoni) [Pepperoni] Pepperoni. Spicy, my favorite. 
- You chose {pepperoni: pepperoni} {not pepperoni: cheese}. I'll try remember that for later. //check for the label name that was chosen! Great for chosing options that can be unlocked by toher options. 
    -> variables
    //NOTE: These behave as local variables! to access them from a different knot, which is outside of the local SCOPE, you'll need to reference it with "knot_name.label_name} See conditionals. 
== nothing ==
Nothing? Ok, sicko. Ummm but what if you chose something? //anything inside regular parenthesis is a LABEL. A LABEL is a tag, a reminder that the Ink story's flow has passed through the thread
    -> pizzatoppings

== variables ==
~ temp pizzaAmount = 0 //a temp variable is only accessible within the knot its declared using a tilda

Who's name is on the order? //alter Global Variable
* [Mike]
    ~ playerName = "Mike" //change a variable with a tilda. if the variable is a string, wrap the text with "" so ink knows it's not another variable
* [Terry]
    ~ playerName = "Terry"
* [Samantha]
    ~ playerName = "Samantha"
- Thank you {playerName}. //to print a variable value, wrap it in curly brackets

How many pizza's would you like to order? //alter temp variable
* [5]
    ~ pizzaAmount = 5
* [10]
    ~ pizzaAmount = 10

- {pizzaAmount}? Got it. //print the temp variable the same way as the global, wrapped in curly brackets. 

//You can print different text depending on variables. This is an example of a conditional! 
{pizzaAmount <= 5: Having a small gathering?}
{pizzaAmount >= 5: Throwing a big party, huh?}

-> conditionals

== conditionals ==
You can also use conditionals to see if the player has seen a piece of content before.

For example, I can remember which pizza topping you chose... 
* [Tell me!] You chose {pizzatoppings.pepperoni: PEPPERONI. } {pizzatoppings.cheese: CHEESE.}
- I knew your pizza toppings because I checked to see if you'd "seen" a piece of content earlier! 
This allows us to keep our code efficient without a bagillion knots to follow paths of content.
You can check to see how many times a piece of content has been visited or even format them as booleans, if you want to get fancy.
->conditional_knot

== conditional_knot ==
You don't need to label every line, but you can! You can also just check to see if a knot as a whole has been visited. For instance, did you choose "nothing" as an option or your pizza? 

* {nothing} [Yeah, I did! How'd you know?] You saw the "nothing" knot! You saw that knot {nothing} time(s). 
    //as writen here, will print how many times the knot was visited
* {not nothing} [No, I didn't. Can you tell?] You didn't see the "nothing" knot and picked a pizza topping like a human being and not an alien. 
    My programmins says your visit to the nothing knot was {not nothing}.
    //as writen here, will print false, as the knot was not visited.
- You now have a basic understanding of labels and conditionals!

-> ending

== ending == 
-> END //This is a Divert. It can divert to different knots This one ends the game
