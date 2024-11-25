# author: Tori Smith
INCLUDE dessertmenu.ink

VAR myName = ""
VAR testBool = true
CONST myConstant = 6
VAR theme = ""

This text should be in the upper, left-hand corner! # CLASS : imageContainer
-> themechange

== themechange ==
//This is probably more complicated than it's worth, you'd have to do some Javascript finagling. 

//Choose your theme:
// * Dark
//     ~ theme = "dark"
// * KPOP
//     ~ theme = "kpop"
    
// - You have selected the {theme} theme.

-> start
== start ==

//# IMAGE: images/pizzashop.jpg
I desire pizza. What pizza do I want? # CLASS : innerThought

 * Pepperoni
    # IMAGE: images/pepperoni.jpg
 * Cheese
    # IMAGE: images/cheese.jpg
 * Pineapple
    # IMAGE: images/pineapple.jpg

- Yummy. I ate it. 
*[Order a drink] -> drinks

== drinks ==
# CLEAR
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
* [play again?] 
# RESTART 
-> DONE
* gooodbye
    -> END
