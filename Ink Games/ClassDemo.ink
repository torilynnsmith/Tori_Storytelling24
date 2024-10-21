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
    -> end
* tiramisu
    That's not on the menu. Try again.
    -> dessert_menu
+ nothing
    That's no fun. Order something. 
    -> dessert_menu

== end ==
gooodbye
    -> END
