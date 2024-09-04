/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west. Rocks have fallen behind you blocking your exit. You need to find another exit.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. it is almost completely dark except for a faintly glowing door with a fist shaped hole in the center.
* {orb_pickup} [insert orb into hole in the door.] -> door_open
+ [Try to pry open the door] -> door_open_fail
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit == 
The light of you torch glints off of the thousands of coins in the room. You see a red chest and a blue chest in the center of the room.
* [Go Back] -> cave_mouth
+ [Examine the chests] -> examine_chests

== examine_chests ==
You now stand in front of the two chests. {blue_chest: The blue chest is open}
* [try to open the red chest] -> red_chest
* [try to open the blue chest] -> blue_chest
+ [Go Back] -> east_tunnel_lit

== red_chest ==
As you open the chest you see rows of jagged teeth and before you know it the chest lunges at you and starts rapidly chomping on you. You soon bleed out and die.
-> END

== blue_chest == 
The chest opens with little effort revealing a fist sized glowing orb.
* [Pick up the orb] -> orb_pickup
+ [Go Back] -> east_tunnel_lit

=== orb_pickup ===
You now have a glowing orb. Maybe it can help you escape.
* [Go Back] -> east_tunnel_lit

== door_open ==
As the door slowly decends into the floor, a bright light startles you. Your eyes adjust and you recognize where you are. You have escaped the cave
-> END

== door_open_fail ==
You try to pry open the door but it doesn't budge.
+ [Try again] -> door_open_fail
+ [Go Back] -> west_tunnel