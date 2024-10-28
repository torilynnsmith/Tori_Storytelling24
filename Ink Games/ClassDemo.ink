VAR myName = ""
VAR testBool = true
CONST myConstant = 6


I desire pizza. What pizza do I want? 

 * Pepperoni
 * Cheese
 * Pineapple

- Yummy. I ate it. 

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

== dessert ==
Let's check the dessert menu. What should I order? 
-> dessert_menu

== dessert_menu ==
The menu reads...
* cheesecake
    My favorite! Nom Nom. 
    -> variables
* tiramisu
    That's not on the menu. Try again.
    -> dessert_menu
+ nothing
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

{pizzaAmount <=5: Having a small gathering?}
{pizzaAmount > 5: Throwing a big party, huh?}

-> end

== end ==
gooodbye
    -> END
