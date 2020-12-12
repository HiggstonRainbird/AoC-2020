# Mathematica Advent of Code
# 2020

This repository stores my [Advent Of Code](http://adventofcode.com/2020/) solutions for 2020, written in Mathematica.  Some of these solutions are simple one-liners, and others are procedural and not fundamentally different from most other common programming languages, and so don't have any READMEs associated with them.  Some (marked in **bold**) are more involved and have (or need) explanations.  Also, this year, I'm using .wls instead of .m, and trying to make the code somewhat readable as plaintext.

There's also a utilities file, Ulitities.nb, with some functions that proved useful in previous years.  This is not a true utils file, in that it isn't a paclet and that I don't import the function definitions directly, but it's mostly there as boilerplate code I can copy in when need be.

As there's a [creative craftsmanship challenge](https://old.reddit.com/r/adventofcode/w/gettincrafty) over on the Advent of Code subreddit this year, I'll be writing a poem for each problem each day and adding them here.

## Days Completed

* Day 1: Report Repair
* Day 2: Password Philosophy
* Day 3: Toboggan Trajectory
* Day 4: Passport Processing
* Day 5: Binary Boarding
* Day 6: Custom Customs
* Day 7: Handy Haversacks
* Day 8: Handheld Halting
* Day 9: Encoding Error
* Day 10: Adapter Array
* Day 11: Seating System
* Day 12: Rain Risk

## Poems

### Day 1: A Hero's Rest

Step softly, to the sandy shore  
And let another save the day.  
You've worked enough, five years or more,  
To earn a bit of play.  

Oh, you have learned to prod and poke  
At tortured puzzles from the Pole.  
You know what word the rover spoke.  
You fixed it when the printer broke.  
And now it's time to take a soak  
And lounge at this atoll.  

These five long years have left their mark,  
And R&R will hit the spot.  
Put down the Scala and the Spark,  
Put `Lisp`y `car`s all into park,  
And watch a dolphin (or a shark),  
From deck chairs, on a yacht.  

No goals, this time, to work toward  
No consoles going 'beep'.  
No goblins swinging mace and sword,  
Just beaches, and a king's reward.  
(I'll gladly get the leaderboard  
While you can get some sleep!)  

### Day 2: Secure

Said the suit on the right to the suit on the left,  
"There's a problem we execs must fix.    
Our employees use passwords not strong or secure;  
We've tried warnings, but none of it sticks."  

Said the suit on the left to the suit on the right,  
"Then if warnings won't do, we need more.  
The incredible secrets of Tobaggan Inc.,  
Must not reach the sled rental next door."

Said the suit in the front to the suits on the side,  
"Let our action be swift and precise.  
We'll make rules and restrictions on passwords henceforth.   
And no letter shall enter one twice."   

Said the suit in the back to the suits up ahead,  
In a PowerPoint made on the spot,  
"We will limit the letters, point A and point B.  
One must have it, the other must not."

Then the suits all around all stood up and shook hands.  
Memoranda were typed and prepared.  
But the suit in the center, he stayed at his seat,  
To consider the meeting he'd chaired.  

Then the suit in the center, he slowly stood up,  
And focused his gaze on the rest.  
"This policy's *better* than ours was before,   
But it certainly is not the *best*."  

"A good policy's only the half of the thing,"  
Said the center suit.  "Still insecure!  
Why, if Sled Rental Inc. got a hold of this rule,  
They could get to our servers for sure!"  

All the suits in the room, save the center, recoiled  
At the thought of so dreadful a fate.  
All those snow coefficients, the tests and the codes,  
The schematics, served up on a plate.  

"So, the key to security," cautioned the suit,  
"Lies in randomly changing the rules.  
If the sled rental shop tries out *last* fortnight's codes,  
During *this* one, we'll play them like fools."

Said the suit on the left to the suit standing up    
(All the other suits scared as could be)  
"But then how, Senior Suit, can bimonthly rules work,  
When we meet just one month every three?"  

Then the suit in the center, he sighed with a smile.  
And said, "Then we'll make them right here.  
And we'll type up a memo and send it around  
With the passwords and rules for the year."  

In the evening, the suits filed out through the door,  
Corporate policy written anew.  
And the suit in the center sat down at his screen,  
And, for `password`, he typed `hunter2`.

### Day 3: The Forest for the Trees

Your coat and hood  
In case you freeze.  
You think you're good,  
But ill at ease.  
From where you stood,  
You felt the breeze  
Blow through the wood  
And towards the trees.  

The sled withstood  
Much more than skis,  
On which you would  
Have broke your knees.  
Just know you should  
Count your degrees,  
To miss the wood  
Among the trees.  

### Day 4: Hacker Man

His name's, perhaps, 'Enigma', or perhaps it's 'Slice' or 'Root'.  
He wears, at all times, sunglasses, and black trenchcoats to boot.  
He'll walk into an airport and he'll never miss a flight,  
For no network in the world can beat the Hacker in a fight.  

You've seen his like in movies, and you've glimpsed him on TV,  
But you won't see him coming when he comes to steal your key.  
A few know him as '4chan', and he's 'Kill-o-byte' to some.  
For the Hacker Man has many names.  That's just who he's become.  

His power's at its greatest when he's at his lair, at home,  
With his twenty-three computers, all with monitors in chrome.  
Their typefaces are black and green, with loading bars abound,  
And can zoom in on a picture till bacteria are found.  

He has a pair of keyboards, lit with green and flickered light,  
And can type with both or either when he's cracking through a site.  
With both, he types five hundred words a minute at his peak,  
And with nary but a whistle he can cause a phone to phreak.  

[No firewall](https://adventofcode.com/2016/day/20) can [keep him out](https://adventofcode.com/2017/day/13), no [password slows him down](https://adventofcode.com/2020/day/2),  
No server can stay up at all if Hacker Man's in town.  
He never paid for Winrar, and his passwords can't be guessed,  
And he decides to use the DarkWeb...well, you know the rest.  

But there are other hackers out there, blacker hat than he,  
And they would hack the planet with an opportunity.  
Be glad he's on the side of good, and that he won't be swayed.  
He can't be all *that* naughty; Santa's called upon his aid.  

### Day 5: Lazy Limerick

You must do a binary conversion,  
Before begin your excursion.  
(And I'll give you a hint:  
Use `binaryToInt()`,  
'Cause it's simpler than using recursion).

### Day 6: Quaint Customs & Curious Questions

The customs at this airport, people say,  
Are short, and simpler than in other ports.  
But all the questions asked, from Z to A,  
Are never questions of the normal sorts:

- Are mirrors really real if even our own eyes are not?
- Buy anything abroad that really can't be sold or bought?
- Do people call you on the phone you're trying to avoid?
- Can the people on TV see me or am I just paranoid?
- Ever shot a man in Reno, just to watch him die?
- Forget your coat or luggage when you came on board to fly?
- Got any chapstick you could spare?  The air here's awfully cold.
- Hot dogs: are they sandwiches with bread that has a fold?
- I meant to cut this question out - the next one too, in fact.
- Just fill them with a 'yes' or 'no', no need to be exact.
- Kazoos and old harmonicas: can newer stuff compare?
- Lose any luggage -- wait, that's question G, a ways up there.
- Made any mashed potatoes lately?  Did they turn out well?
- Noticed any odd designs on anyone's lapel?
- Of course, you might not know this, since it's pretty tricky stuff:
- Part 2 from 2017's day sixteen: was it tough?
- Question seventeen's a breeze: is this short sentence true? 
- Right, back to other matters: ever gotten a tattoo?
- So since tomatoes are a fruit, can they go in a pie? 
- Then shouldn't pineapples on pizza work well?  What's awry?
- Until today, have coding puzzles kept you up at night?
- Vegemite's a sandwich thing Down Under, is that right?
- When you were younger, did you ever skip on school?
- Xtreme Kool LetterZ - do they work to make you hip and cool?
- You ever watched the movie "Fastest Bullet in the West?
- Zymurgy's a real good Scrabble word - is it the best?

The questions never have made sense to me  
(Aside from the song lyrics under `A`).  
But tedious the nonsense form might be...   
...this custom surely beats the TSA.

### Day 7: Lost & Found

This `gold` and `shiny` bag I grabbed today,  
Belongs to someone else, I am afraid.  
Can you make an announcement, please, and say,  
"Please come to the front desk so you can trade"?  

I think we each grabbed one another's gear,  
When we saw them go by the carousel.  
See, mine's a `mirrored yellow`, nice and sheer,  
I mixed them up; I think he did as well.  

I only noticed when I looked within,  
And seven thousand bags came through the shine.  
My own bag's lining must be very thin,  
For I can fit just ninety bags in mine.  

Ahh, there you are, my friend, there, now it's right.  
And Merry Christmas too!  Enjoy your flight!  

### Day 8: [With Apologies to J. Brander Matthews](https://thelocalyarn.com/excursus/secretary/posts/04-en-route.html)

Here we are riding the plane,  
Gliding from out of the station.  
Puzzles keep racking my brain  
Though I'm on break for vacation.  

Gliding from out of the station,  
I try to order a drink.  
Though I'm on break for vacation,  
Don't think I'll get time to think.  

I try to order a drink,  
Just like that, I have some trouble.  
Don't think I'll get time to think,  
All of my tasks seem to double.  

Just like that, I have some trouble,  
Handheld's not halting, you see.  
All of my tasks seem to double,  
Never just one task, or three.  

Handheld's not halting, you see,  
It's running tasks without stopping.  
Never just one task, or three,  
I should get in and start swapping.  

It's running tasks without stopping,  
Due to one critical byte.  
I should get in and start swapping,  
Presto! It's now working right.  

Due to one critical byte,  
Gameboy boots up with a chime.  
Presto!  It's now working right.  
I set my seat to recline.  

Gameboy boots up with a chime.  
Stars are my thanks for repairing.  
I set my seat to recline,  
Now, though, I'm thinking, declaring.  

Stars are my thanks for repairing:  
I've solved a puzzle today,  
Now, though, I'm thinking, declaring,  
"I bet there's more on their way".  

I've solved a puzzle today,  
As we fly over the isthmus.  
I bet there's more on their way.  
I guess we can't run from Christmas.  

As we fly over the isthmus,  
Puzzles keep racking my brain.  
I guess we can't run from Christmas,  
So here we are, riding the plane.  

### Day 9: The Gadgeteer

With a paperclip and  
One or two bits of string,  
I can make a device  
Out of any old thing.  

Hack a port?  Piece of cake.  
Build a laser?  No sweat.  
There could be a tough test  
But I've not found it yet.  

If you'd hand me that phone,  
And you'd pass me that spoon,  
I could refit this plane  
To fly straight to the moon.  

Yes, MacGuyver's the best;  
Showed me all my first tricks.  
It inspired my first  
Gadget, made out of sticks.  

I admit this device  
Is a tad bit unsafe,  
But reactors are fun  
And restrictions can chafe.  

And besides, I bet you  
Never saw one of these  
Made of zippers and twine,  
Held together with cheese.  

So just grab this end here,  
And zip 'up' when I say.  
I can promise our flight  
Won't be boring today.  

### Day 10: In Loving Memory of Battery (2020-2020)

The battery is dead, its charge is spent.  
It lasted just as long as it was able.  
Its host device, with messages unsent,  
Reposes, as its coffin, on the table.  

The battery is dead, its current dry.  
The screen which once it filled with light is dark.  
But if one asked its ghost how it did die,  
Its ghost would not regret a single spark.  

The battery is dead.  We cannot weep!  
It is too precious for the likes of Death.  
We will not leave it in its silent sleep;  
Our knowledge can give it another breath.  

We'll use adapters even as we mourn,  
And Battery will rise again, reborn.  

### Day 11: Lazy Limerick #2

If you're quick, you'll get dibs on a seat  
With a property unusually neat:  
Despite all the folks there,  
You'll still have your own chair,  
And an second, to prop up your feet.  

### Day 12: It Could Be Worse

No question that this new delay's as vexing as can be.  
Storms swirl around with crashing waves, and noise like in a war.  
Except...we still can navigate.  We are not lost at sea.  
When waypoints guide us on our way, we'll find a safer shore.  

Look up and smile at our course; it could be worse than this:  
Rough seas and a few days' delay?  Nuisance is all it is,  
For I have heard of Gilligan; our luck's not worse than his.  






