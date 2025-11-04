VAR affection = 0
VAR endingseen = ""

Testing affection scores

 * Affection set to 5
    ~ affection = 5
 * Affextion set to 3 
    ~ affection = 3
 * Affection set to 1.
    ~ affection += 1 //added 1 to affection (for a total of 1 in this case)
    
- test logic -> testlogic_oldversion

== testlogic_oldversion ==
//this is similar to your version of multi-line logic
Current affection score is {affection}.

//You've tried to use Multi-line logic, but "else if" isn't a recognized term (which is what you used in your code). you can only check if something is in one of 2 states in ink (on or off, true or false) rather than comparing multiple values across multiple states. . 
{affection >= 5:
    This is written if yourVariable is true. Current affection score is {affection}.
    - else: //you tried to use "else if" here instead of just else. Ink doesn't recognize else if like C# code. 
    Otherwise this is written. Current affection score is {affection}.
}
* [go to the new logic] -> testlogic_newversion

== testlogic_newversion ==

//I'd recommend running the code through a couple of different true/false checks that ink is more equiped to handle
{
    - affection >= 5: //be sure to write these in the order you want ink to execute things in! ink will read & execute logic from top to bottom, left to right like a book.
        Current affection score is {affection}.-> romantic_ending
    - affection >= 3:    
        Current affection score is {affection}.-> friendly_ending
    - else: //you tried to use "else if" here instead of just else. Ink doesn't recognize else if like C# code. 
        Otherwise this is written. Current affection score is {affection}.  -> awkward_ending
}

== romantic_ending ==
~ endingseen = "romantic"
This is the {endingseen} ending.
* [go to final knot] -> finalending
    
== friendly_ending ==
~ endingseen = "friendly"
This is the {endingseen} ending.
* [go to final knot] -> finalending

== awkward_ending ==
~ endingseen = "friendly"
This is the {endingseen} ending.
* [go to final knot] -> finalending

== finalending ==
- Current affection score is {affection}. You saw the {endingseen} ending. They lived happily ever after.
    -> END
