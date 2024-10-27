Once upon a time... 
There was a computer.
"Hello world!" //This is a singe line comment! 

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
    ** [Apologize] "You're right, I'm being rude. Sorry" //you can change what's displayed in the choice test by using square brackets
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
    ->varyingchoices
* no //this choice will only be shown once
    You're no fun. Try again. 
    -> varyingchoices

== pizzatoppings ==
Pick a pizza topping. This'll be important in the next section. 
* (pepperoni) Pepperoni //the text in () labels the line. We can use it to check for conditionals later. 
* Cheese
- Great! Sounds yummy. 
-> conditionals

== conditionals ==
You can use conditionals to see if the player has seen a piece of content before. 

For example, can you tell me which pizza you chose? 
* [pepperoni]"I chose pepperoni." //the curly brackets check to see if a condition has been met. 
    I knew you did!
* [cheese]"I chose cheese."
    Simple yet delicious!
- I knew your pizza toppings because I checked to see if you'd "seen" a piece of content earlier or made a choice! 
    This allows us to keep our code efficient without a bagillion knots to follow paths of content. 
-> ending

== ending == 
-> END //This is a Divert. It can divert to different knots This one ends the game
