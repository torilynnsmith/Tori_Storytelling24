"Environmental Mystery Demo" by Tori Smith

[[THE GALLERY]]
The Gallery is a room. The description of the room is "The Louvre art gallery in Paris, France. It's dark and closed for the day. There is a chair here facing a painting on the wall and a statue on a table. A door to what looks like the bathroom is to the east, while a door that says 'Security Office' is to the west." 

[[THE MONA LISA PAINTING]]
MonaLisa is an undescribed thing in the Gallery. The printed name of MonaLisa is "[italic type]Mona Lisa[roman type]". The description is "A painting of a woman with a sly smile. The placard next to it says it was painted by Leonardo DaVinci."  Understand "Mona Lisa", "painting", and "art" as MonaLisa. 

Instead of taking MonaLisa:
	say "You can't take that. That would be a crime." instead. 

[[TABLE]]
A table is an undescribed supporter in the Gallery. The description is "A pedestal table displaying a statue." 

[[STATUE]]
The statue is an undescribed thing on the table in the Gallery. The description of the statue is "The Venus de Milo statue of Aphrodite." 

StatueLook is a number that varies. StatueLook is 0. 
Instead of examining the statue:
	now StatueLook is 1;
	continue the action. 
	
[[CHECK UNDER = LOOKING UNDER]]
Checking under is an action applying to one thing. Understand "check under [something]" as checking under. 

[[CHAIR]]
A chair is an undescribed thing in the Gallery. 

[[KEY]]
The key is an undescribed thing in the Gallery. The key can be found. The key is not found. The description of the key is "An old looking key."

[[BOX]]
The box is an undescribed closed openable container in the Gallery. The description is "A closed box. Wonder what's in it?" 

Instead of opening the box:
	if key is found:
		say "there's nothing else in the box." instead;
	Otherwise:
		now the box is open; 
		now the key is found;
		now the player carries the key; 
		say "the box is open and you find a key. " instead.

[[BOOK]]
The book is an undescribed thing in the Gallery. The book can be found. The book is not found. The description of the book is "A biography of Leonardo DaVinci." 

[[Check checking under a chair:
	say "There's nothing under here." instead.]]
	
Instead of looking under or checking under a chair:
	if book is found:
		say "There's nothing else under here." instead;
	otherwise:
		now the book is found;
		now the player carries the book;
		say "There's a book under here! You take it." instead. 

[[BATHROOM]]	
The Bathroom is a room.  The Bathroom is east of the Gallery. The description of the Bathroom is "a stinky museum bathroom." 

Instead of going to the Bathroom:
	if the book is found:
		say "you go into the Bathroom.";
		continue the action;
	Otherwise:
		say "Oh you don't have you bathroom book yet." instead. 

[[OFFICE]]	
The Office is a room. The Office is west of the Gallery. The description of the Office is "a boring office."

Instead of going to the Office:
	if StatueLook is 1:
		say "you go to the office";
		continue the action;
	Otherwise:
		say "you haven't looked around enough yet." instead. 
