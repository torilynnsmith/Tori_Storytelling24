
# author: Tori Smith
# theme: dark 
INCLUDE dessertmenu.ink

VAR myName = ""
VAR testBool = true
CONST myConstant = 6

<<<<<<< Updated upstream
This text is in the upper, left-hand corner! 
* [START] -> start //start the game

== start == //I put start in its own knot so I could divert back to it with a RESTART button
I desire pizza. What pizza do I want? 
=======
This text should be in the upper, left-hand corner! # CLASS : upperCorner
-> start

== start

# IMAGE: images/pizzashop.jpg
I desire pizza. What pizza do I want? # CLASS : innerThought
>>>>>>> Stashed changes

 * Pepperoni
    # IMAGE: images/pepperoni.jpg
 * Cheese
    # IMAGE: images/cheese.jpg
 * Pineapple
    # IMAGE: images/pineapple.jpg

- Yummy. I ate it. 
<<<<<<< Updated upstream
*[Order a drink] -> drinks

== drinks ==
=======
* [Order A Drink]-> drinks

== drinks ==
# CLEAR
>>>>>>> Stashed changes
I'm thirsty too. What should I drink?
* Sprite
    Bubbly...
* Lemonade
    Tart...
* Ice Tea
    Refreshing..
    ** [Add lemons] Lemons are the golden beautiful elixer of the earth. 
        so sour!
    ** [Add sugar] Ah sugar. The creme de la creme of seasonings. 
        so sweet!
- I'm still hungry. 
-> dessert
    
== nothing ==
That's no fun. Order something. 
    -> dessert_menu
    
== variables ==
~temp pizzaAmount = 0

What's the name on the order?
* [Bob]
    ~ myName = "Bob"
* [Gertrude]
    ~ myName = "Gertrude"
* [Carly]
    ~ myName = "Carly"

- Thank you {myName}.

How many pizza's would you like to order?
* [5]
    ~ pizzaAmount = 5
* [10]
    ~ pizzaAmount = 10
- {pizzaAmount}? Got it. 

Have one extra, on the house. 
~ pizzaAmount += 1 
You know have {pizzaAmount} pizzas. 

{pizzaAmount <=5: Having a small gathering?}
{pizzaAmount > 5: Throwing a big party, huh? -> lots_of_pizzas}
// {pizzaAmount <=5: ->memory}
// {pizzaAmount > 5: ->lots_of_pizzas}

== lots_of_pizzas==
And you didn't invite me?

-> memory

== memory ==
I remember what you ordered for dessert. Would you like to know?
* [Tell me!] You chose {dessert_menu.cheesecake: cheesecake} {dessert_menu.tiramisu: tiramisu}.
- I also know if you ordered "nothing". 
* {nothing} [I DID order nothing!] You ordered nothing {nothing} time(s). 
* {not nothing} [I never ordered nothing] Correct, your visit to the nothing knot was {nothing}.
- thanks for ordering. 
-> end

== end ==
<<<<<<< Updated upstream
gooodbye
* [RESTART] 
    -> DONE
* [END] Thank you for playing.
=======
* [play again?] 
# RESTART 
-> DONE
* gooodbye
>>>>>>> Stashed changes
    -> END
