//this is a comment. It hides the text from your story and is a handy way to leave notes for yourself. 
/*You can commment
multiple lines like this.*/

-> pizza //this is a DIVERT, to send the story to a new KNOT

== pizza == //this is a KNOT name, you can DIVERT to them. 
I desire pizza. What pizza do I want?

 * Pepperoni //* indicates a choice. Once you pick it, it won't show up again if you revisit the same knot. 
 * Cheese
 * Pineapple
 + Nothing // + this is a sticky choice. it will show up still even if you pick it. 

- Yummy. I ate it. //this is a gather. it gathers up your loose ends before continuing on.  
*[Order a drink] -> drinks 

== drinks == 
I'm thirsty too. What should I drink?
* Sprite
    Bubbly...
* Lemonade
    Tart...
* Ice Tea
    Refreshing.. //you can nest choices within eachother, just add more * or +
    ** [Add lemons] Lemons are the golden beautiful elixer of the earth. //content inside brackets is the Choice Text. It won't show up in the story after it's chosen.
        so sour!
    ** [Add sugar] Ah sugar. The creme de la creme of seasonings. 
        so sweet!
- I'm still hungry. 
-> variables

== nothing ==
That's no fun. Order something.
-> pizza

== variables ==
What's the name on the order?
* Bob
* Gertrude
* Carly
- Thank you INSERT NAME.

How many pizza's would you like to order, INSERT NAME?
* 5
* 10
- INSERT PIZZA AMOUNT? Got it. 
-> endknot

== endknot ==
Thanks for ordering, your pizza is on its way.
* Gooodbye.
    -> END //you must have a DONE or END divert to end your story. 