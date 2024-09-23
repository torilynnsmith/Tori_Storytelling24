"Environmental Mystery Demo" by Tori Smith

Release along with interpreter. 

When play begins:
	now the player carries the pen;
	say "A museum at night. You're the only one here, just you, the art, and the pen in your pocket.".
	
[[THE GALLERY]]
The Gallery is a room. The description of the room is "The Louvre art gallery in Paris, France. It's dark and closed for the day. There is a chair here facing a painting on the wall and a statue on a pedestal. An old, antique trunk is here as well.[paragraph break]A door to what looks like the bathroom is to the east, while a door that says 'Security Office' is to the west." 

The pen is an undescribed thing in the Gallery. The description is "an ordinary looking pen. black ink."

[[THE MONA LISA PAINTING]]
MonaLisa is an undescribed thing in the Gallery. The printed name of MonaLisa is "[italic type]Mona Lisa[roman type]". The description is "A painting of a woman with a sly smile. The placard next to it says it was painted by Leonardo DaVinci."  Understand "Mona Lisa", "painting", and "art" as MonaLisa. 

Instead of taking MonaLisa: [[don't allow the player to take the Mona Lisa]]
	say "You can't take that. That would be a crime." instead. 

[[PEDESTAL]]
A pedestal is an undescribed supporter in the Gallery. The description is "A pedestal table displaying a statue." 

[[STATUE]]
The statue is an undescribed thing on the pedestal in the Gallery. The description of the statue is "The Venus de Milo statue of Aphrodite." 

Instead of taking the statue: [[don't allow the player to take the statue]]
	say "You can't take that. That would be a crime." instead. 

[[Make Player look at statue at least once]]
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

[[TRUNK]]
The trunk is an undescribed closed openable container in the Gallery. The description is "[if closed]An old, closed trunk. Wonder what's in it?[end if][if open]An open, old trunk. The key is probably stuck in the lock forever.[end if]"

[[OPEN/UNLOCK THE TRUNK]]
Instead of opening the trunk:
	if the key is not found: [[key is not found, trunk is LOCKED and contents remain inside]]
		say "The trunk is locked." instead; 
	if the key is found and the player carries the key: [[key is found, UNLOCK and OPEN the trunk and get the book]]
		now the trunk is open; 
		now the book is found;
		now the player carries the book; 
		now the key is nowhere; [[remove the key from the player]]
		say "Though the key sticks in the lock, the trunk is now open and you find an old book. You take it." instead;
	if trunk is open and the book is found: [[Trunk has been opened already and the book taken.]]
		say "There's nothing else in the trunk." instead; 
	Otherwise:	
		say "There's nothing else in the trunk." instead.
		
Test opentrunk with "open trunk/l under chair/i/open trunk/i/open trunk".

[[BOOK]]
The book is an undescribed thing in the Gallery. The book can be found. The book is not found. The description of the book is "A biography of Leonardo DaVinci." 
	
Instead of looking under or checking under a chair: [[Look under chair to find the key]]
	if key is found and the player carries the key:
		say "There's nothing else under here." instead;
	otherwise:
		now the key is found;
		now the player carries the key;
		say "There's a key under here! You take it." instead. 

[[BATHROOM]]	
The Bathroom is a room.  The Bathroom is east of the Gallery. The description of the Bathroom is "a stinky museum bathroom." 

Instead of going to the Bathroom: [[can't go into the bathroom without the book, it's in the trunk]]
	if the book is found and the player carries the book:
		if StatueLook is 1:
			end the story saying "You enter the Bathroom with your toilet reading material. The End."; [[END GAME]]
		[[say "You go into the Bathroom with your potty literature.";
		continue the action;]]
	Otherwise:
		say "Oh, you don't have your bathroom book yet." instead. 

[[-------------------------------------------------------------------------------------------------------------]]
[[OFFICE]]	
The Office is a room. The Office is west of the Gallery. The description of the Office is "A boring security office."

Instead of going to the Office:
	if StatueLook is 1: [[player has looked at the Statue at least once]]
		say "You go into the office.";
		continue the action;
	Otherwise:
		say "You haven't looked around enough yet." instead. 

[[TESTING]]
[[Test the whole game]]
Test finishgame with "west/east/l statue/look under chair/i/open trunk/i/west/east/east". 
