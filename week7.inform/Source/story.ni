"week7" by "Christophe Rhodes"

Release along with an interpreter.

Book 0 - Ideas

[
  Get to a destination
  Get to a destination on time

  Hazards:
  - staying in bed
  - snow
  - strikes
  - air pollution
  - swipe card access

]

Book 1 - Stuff

The GDS is a room.  Laurie Grove is a room.  New Cross Road is north of Laurie Grove.  New Cross Station is east of New Cross Road.  New Cross Gate station is west of New Cross Road.

Campus is a Region.  Laurie Grove and the GDS are in Campus.

The player is in New Cross Road.  The player has a number called the slip count.

Every turn (this is the have we got into the GDS rule):
	if the location is the GDS:
		end the story saying "Hooray!  You have reached your destination.".

Every turn (this is the broken leg rule):
	if the slip count of the player > 5:
		end the story saying "Oh no!  You have broken your leg.". 

[
Check going when the location is in Campus and the player does not wear some snowshoes (this is the it's icy on Campus rule):
	let x be a random number from 1 to 10;
	if x < 10:
		now the slip count of the player is the slip count of the player + 1;
		say "as you head off, you slip on the ground." instead;
	continue the action.
]

Shoes are a kind of thing.  Shoes are usually wearable.

Some snowshoes are shoes in New Cross Station.  They are plural-named.

The BPB door is a locked door.  The BPB door is east of the GDS and west of Laurie Grove.

The player carries a keycard.

The card reader is in Laurie Grove.

Swiping in is an action applying to two touchable things.  Understand "swipe [thing] in [thing]" as swiping in.

Carry out swiping in the keycard when the second noun is the card reader (this is the carry out keycard swiping rule):
	now the BPB door is unlocked.

Report swiping in the keycard when the second noun is the card reader (this is the report keycard swiping rule):
	say "The BPB doors unlock.  The automatic opening mechanism looks non-functional today.  Maybe it's too cold?".