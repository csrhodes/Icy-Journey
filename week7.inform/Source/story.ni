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

The GDS is a room.  Laurie Grove is east of the GDS.  New Cross Road is north of Laurie Grove.  New Cross Station is east of New Cross Road.  New Cross Gate station is west of New Cross Road.

Campus is a Region.  Laurie Grove and the GDS are in Campus.

The player is in New Cross Road.  The player has a number called the slip count.

Every turn (this is the have we got into the GDS rule):
	if the location is the GDS:
		end the story saying "Hooray!  You have reached your destination.".

Every turn (this is the broken leg rule):
	if the slip count of the player > 5:
		end the story saying "Oh no!  You have broken your leg.". 

Check going (this is the it's icy rule):
	let x be a random number from 1 to 10;
	if x < 10:
		now the slip count of the player is the slip count of the player + 1;
		say "as you head off, you slip on the ground." instead;
	continue the action.