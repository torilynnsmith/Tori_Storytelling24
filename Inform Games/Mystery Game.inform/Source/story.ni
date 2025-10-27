"Mystery Game" by Tori Smith
Release along with an interpreter. 
Release along with a website.

[[This is a comment. Anything inside these double brackets is a comment and will not be executed by the program. They're great for leaving notes or temporarily removing code.]]

[[IMPORTANT TO REMEMBER! Inform reads code from top to bottom. Try to declare things in order before their needed. For example: If you want to put a flower in a vase but you haven't declared a vase yet, inform won't know what to do.]]

When play begins: [[When the game starts...]]
	now the player carries the phone; [[make this item be in the player's inventory at the start of the game]]
	say "This is the fantastic, incredible description of the beginning of the game." [[prints this as the games description. Great for setting the scene or giving the player some initial information.]]

[[THE OFFICE]]
The Office is a room. The description of the Office is "A really boring, gray office with a small computer desk. Doors to the bedroom are to the east and the bathroom to the west. "

[[THE DESK]]
The desk is an undescribed supporter in the Office. The description of the desk is "A small computer desk. There's an apple and a book on the desk." [[supporters can "support" other objects]]

[[THE PHONE]]
The phone is an undescribed thing in the Office. The description of the phone is "A Motorola flip phone. No service."

[[THE APPLE]]
The apple is a thing on the desk in the Office. The description of the apple is "A shiny red apple."

[[THE BOOK]]
The book is an undescribed thing on the desk in the Office. The book can be found. The book is not found. The description of the book is "A book of sudoku." [["found" is a status inherently understood by inform. We can change its status through declarations and "now" statements...]]

Instead of taking the book: 
	say "You now hold the book.";
	now the book is found; [[...like this one!]]
	now the player carries the book.
[["Instead" statements override inform's automatic actions, so we can make the built in actions (like "taking" in this example) do more/other things at the same time.]]

[[THE BEDROOM]]
The Bedroom is a room. The Bedroom is east of the Office. The description of the Bedroom is "A cozy bedroom. There's a trunk here. A door to the office is to the west." 

[[THE KEY]]
The OldKey is a thing in the Bedroom. The OldKey can be found. The OldKey is not found. The description is "An old looking key." The printed name of OldKey is "old key". Understand "key" as OldKey. 
[[rather than calling this a "key", I've called it "OldKey" to differentiate it from other keys I may have throughout the game. I've told the program to print its name as "old key" because OldKey looks weird in text and (in this case) to understand "key" as OldKey.]]

Instead of taking the OldKey: [[same as the book example above!]]
	say "You now hold the key.";
	now the OldKey is found;
	now the player carries the OldKey.

[[THE TRUNK]] [[This is a container! You can put other objects inside of containers!]]
The trunk is an undescribed closed openable container in the Bedroom. The description is "[if closed]A closed old box. Wonder what's in it?[end if][if open]An open old box. It's empty.[end if]" [[print different descriptions based on the open/closed status of the trunk]]

[[UNLOCKING/OPENING THE TRUNK]] [[This is very similar to our "locked door" example later with the Bathroom]]
Instead of opening the trunk:
	if the OldKey is not found: [[if the OldKey hasn't been found yet, the trunk won't open]]
		say "The trunk is locked." instead;
	if the OldKey is found and the player carries the OldKey: [[we've got the key! open the trunk!]]
		now the trunk is open;
		remove the OldKey from play; [[take the OldKey away from the player. Great for single/limited use items. If you want limited use items, check the documentation/ask Tori is next class.]]
		now the pencil is found;
		now the player carries the pencil;  [[automatically give the player the pencil]]
		say "You open the trunk, but the old key breaks in the lock. You found a pencil. You take it." instead;
	if the trunk is open and the pencil is found: [[we've already opened the trunk and gotten what we need out of it]]
		say "The trunk is open, there's nothing else inside." instead;
	Otherwise:
		say "The trunk is open, there's nothing else inside." instead.

[[Quickly test something by writing something like the following, then entering "Test testname" into the command line during play]]
Test opentrunk with "open trunk/take key/open trunk/i". 

[[THE PENCIL]]
The pencil is a thing in the trunk. The pencil can be found. The pencil is not found. The description of the pencil is "A really dull No. 2 pencil."

[[THE BATHROOM]]
The Bathroom is a room. The Bathroom is west of the Office. The description of the Bathroom is "A typical bathroom with a toilet and sink. Could use a cleaning. The door to the Office is to the east."

[["Lock" the player out of the bathroom.]]
Instead of going to the Bathroom: [[Don't let the player go into the bathroom unless they've found the book and are holding the book. This is a "locked door" and key example.]]
	if the book is found and the player carries the book:
		[[continue the action;]] [[let the player go into the Bathroom]]
		end the story saying "you go into the bathroom with your precious reading material. you do you."; 
	Otherwise:
		say "You can't go in there yet." instead. [[Stop the action and don't let the player go into the Bathroom. They'll remain in the room they were in (in this case, the Office) ]]