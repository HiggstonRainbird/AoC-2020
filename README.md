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
* Day 13: **Shuttle Search** (The code represents the Mathematica built-in; the poem below represents the brute-force)
* Day 14: Docking Data
* Day 15: Rambunctious Recitation
* Day 16: Ticket Translation
* Day 17: Conway Cubes
* Day 18: **Operation Order** (Some fun abuse of Mathematica's `ToExpression` function)
* Day 19: Monster Messages
* Day 20: Jurassic Jigsaw
* Day 21: Allergen Assessment
* Day 22: Crab Combat
* Day 23: Crab Cups
* Day 24: **Lobby Layout** (This code is terrible; [/u/Adereth's code on Reddit](https://old.reddit.com/r/adventofcode/comments/kj96iw/2020_day_24_solutions/ggvlwoc/) is both more efficient and much more elegant.)
* Day 25: Combo Breaker

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
The incredible secrets of Toboggan Inc.,  
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

### Day 13: Remains

*Setup*

You're waiting for a shuttle    
That'll take you far away.    
But you're counting every second    
And you've been here for a day.    

And you're counting all the buses    
'Cause there's nothing else to see,    
And you notice bus `11`'s    
Twice the speed of `23`.    

So you take your pen and paper    
To transcribe when each departs,    
But your fingers start to tingle,    
And your hand just really smarts.    

Rather than write forever,    
You'll use other 'smarts' instead.    
And you'll swap the pen and paper    
For a table in your head.    

Since the buses never linger    
And they never change their route,    
You can chart them for an eon,    
With no second's worth of doubt.    

*Part 1*

So just how long will you linger    
By these shuttles on the port?    
When's the first flight off this island?    
Where's the spa at the resort?    

Simply find the 'mod's of buses    
Labeled up to `59`,    
With respect to timestamp `input`    
To find out where they align.    

The remains of the division    
Of your timestamp by the bus    
Is the `modulus` you're after    
So that you may use it thus:    

Whichever `mod`'s the smallest    
Represents the first to show.    
Multiply the wait, in minutes,    
By the bus, and off you go.    

*Part 2*

This alignment is a problem    
That's much harder than the first.    
See, you *start* with all the offsets    
And need what you did, reversed!    

Bus `7` comes at timestamp `t`.    
Bus `13`, `t` plus `1`.    
Bus `59` at `t` plus `4`,    
Plus `6` for `31`.    

But counting's not an option    
For a trillion steps or more.    
Your head still hurts from shuffling    
[all those cards the year before](https://adventofcode.com/2020/day/13).    

There's a Theorem, made in China,    
That would be the perfect fit.    
But alas, your web connection    
Is just awful where you sit.    

So you start to ponder offsets    
As you scribble down them all    
"Do I *have* to start so early?    
Must the increment be small?"    

"What if I", you think, "skip further    
And begin at `7` flat?    
Surely there's no smaller number     
Which still fits with all of that."    

So you start your count at `7`,    
But the going's pretty slow.    
"It's the increment," you realize.    
"It *starts* small, but it could grow!"    

So you start again at `7`    
But from there, jump to `14`,    
Since that first offset's impossible    
For numbers in between.    

And, iterating upwards,    
You quickly reach the spot    
Where `13` is just one minute off,    
And `7`'s on the dot.    

Three score plus fourteen minutes    
Tells you where those two will meet.    
And you realize there's a *second*    
Jump to write down on your sheet.    

Bus `13` and bus `7`    
Won't align again until    
Ninety-one more minutes happen    
And the next one, further still.    

So bus `59` must line up    
With the buses that you've done.    
So you're counting not by `7` -    
You go up by `91`!    

On and upwards do you take this,    
Taking steps with longer gait,    
And eleven hundred later,    
You know just how long you'd wait.    

*Epilogue*

I enjoyed this one immensely,    
For the knowledge that it taught.    
Thanks to Tim, I really pondered    
What I'd yet to give much thought.    

In conclusion, this will manage,    
But the leaderboard's for me.    
Mathematica is awesome,    
I love built-ins.  Q.E.D.    

### Day 14: I Can't Read

When Advent comes around each year I pause,    
And ponder whether I should play the game.    
The contest's fun; I hesitate because,    
To enter will reveal my secret shame.    

It is not skill in coding that I lack;    
I'm not the greatest, but I'm good enough.    
I know the difference 'twixt a `deque` and `stack`,    
And know my `moduli`, and other stuff.    

My shame is this: I don't know how to read.    
I've gotten by thus far on simple luck.    
On days like these, I skim the text for speed,    
And spend an hour, frustrated and stuck.    

But maybe, in some Advent yet to be,    
I'll learn to read the problems.  That's the key.    

### Day 15: Lazy Limerick #3

If you use an array, be emphatic  
To preallocate it (but not static).  
For you can't beat brute force  
For this problem, of course,  
But you can beat an order quadratic.  

### Day 16: Self-Reflection

There are times I stop and ponder,  
As I'm waiting to depart,  
Whether I'm in fact, the bad guy,  
Though I'm innocent at heart.  

Hacking into airport cameras  
Doesn't fit your average geek,  
But I've hacked through those (and networks)  
Thrice or more, just this past week.  

I've scanned through people's tickets  
Both for land trains and for flights.  
I've forgotten last week's passwords,  
'Cause I'm busy with tonight's.  

Is there coal bound for my stocking,  
When I hang it up at last,  
Even though I've aided Santa  
Several times in Christmas Past?  

I suppose there is an option,  
When the Big Guy makes his list.  
Since he checks it two times only,  
Maybe I can still be missed.  

If the list is based on hashes,  
I think I'll know what to do.  
When the Naughty List comes calling...  

...I think I'll just hack that too.  

### Day 17: [A Game of Life](https://poets.org/poem/you-it-act-ii-scene-vii-all-worlds-stage)

All the world's a game,  
And all the cubes and spaces merely pieces;  
Void remains the same,  
And next to cubes, activity increases.  

All the world's a stage,  
And one cube in its time plays but a part.  
Spaces never age,  
Unless three cubes adjoin them one apart.  

All the world's a grid.  
And states all change in unison each minute.  
Fractions are forbid,  
And cubes which stand alone shall fail to win it.  

All the world's a knot:  
One's neighbors keep one living, or deceased.  
4D is a lot,  
But six timesteps aren't terrible, at least.  

### Day 18: Operator

The operator called me back  
And told me not to fret.  
"There's precedence for this", she said.  
"So don't you give up yet."  

I was surprised she held the line;  
Perhaps a quiet night.  
"I'm sure your friend just dropped the phone.  
I'm sure that he's alright."  

She must have heard that awful noise  
That came across the line.  
An instant later, it was cut;  
That second scream was mine.  

"I've never heard a sound like that"  
I told her.  "But have you?"  
She talked as though she forced a smile.  
"Like that?  I've heard a few."  

"You'd be surprised," she said to me,  
"At just how bad things sound  
When there's some static on the line.  
I'm sure he'll come around."  

I must confess that I lost hope,  
But I stayed on the phone.  
I would have panicked and hung up,  
Had I been there alone.  

And suddenly, she said to me,  
"Ahh, there's his line right now.  
I'll patch him through on back to you.  
Enjoy your evening.  Ciao!"  

I thanked the operator and  
I got my pad and pen.  
"Where were we?  Ahh, nested parens-"  
I heard him scream again.  

### Day 19: ABAB AAAAA BBBA BA

I got word from the elves that there's something at sea  
When I got to the airport today.  
They were very excited, inside M.I.B.,  
At the [Snark](https://www.gutenberg.org/files/29888/29888-h/29888-h.htm) they had seen in the spray.  

They were certain the pictures they'd forwarded me  
Showed a Snark - and they noted the waves and debris  
On the side that was windward and that which was lee,  
But while most types of Snarks wander friendly and free,  
There's a subtype - a Boojum - that's lethal to see!  

I attempted to warn them, while hitting replay,  
That to picture a Boojum brings danger your way!  

But I told them to stop and they did not obey;  
They said nothing whatever to me.  
They had softly and suddenly vanished away -  
For the Snark *was* a Boojum, you see.  

### Day 20: Monster

There were whispers and rumors that drifted about  
When the weeks passed on by, parsing problems throughout,  
That the problems this year were not quite up to snuff;  
"From the times on the board, they just can't be that tough!"  

For the parsers were simple (in theory) to write,  
And the moduli, too, could be brute forced alright.  
There was no theme like Intcode that stretched through the year,  
So we waited, breath bated, for one to appear.  

There were hints, like day nineteen (and sixteen as well),  
Of the monster, submerged in the depth of the swell,  
Until, twenty days in, we all witnessed with glee  
As a challenge rose up like a beast from the sea.  

### Day 21: Ingredients

There are a few ingredients  
This product may contain.  
There's shellfish, dairy, eggs, and soy,  
And onions grown in Spain.  

There's peanuts somewhere in the mix,  
And pumpkin's in there too.  
We think we dropped some eggs inside;  
The case was loose.  Who knew?  

There is a little water, too.  
Don't fret: it's gluten-free.  
There's not much salt inside it, though;  
Just grab some out at sea.  

There's not a chemical in sight;  
No additives are here.  
No harmful processed stuff to vex  
A daring bucanner.  

The mercury should hit the spot,  
E. Coli's there for taste,  
And trace amounts of lead inside  
Won't go towards your waist.  

We cook like Mama used to cook.  
We think that she'd be proud.  
Though she's not the greatest cook-  
(Whoops, can't say that aloud).  

### Day 22: Just Me and the Crab

That crab and I go back a while;  
We met one day at sea.  
We sailed to reach a beachy isle,  
'Twas just the crab and me.  

We played some cards, the crab and I,  
To while the time away,  
He's good at Combat, clever guy.  
He'd win most times we'd play.  

The games were much too short to last  
Until we reached the shore,  
So we recursed, using the mast  
To help us keep the score.  

We talked a lot, the crab and I,   
As we recursed and played.  
Of puzzles past and friends gone by  
And pools we used to wade.  

And as those days went by, I knew  
That I had found a friend:  
Opponent, but a buddy too.  
But all such travels end.  
 
[I didn't hug him, t'would be rude.](https://tearlessrain.tumblr.com/post/183703323457)  
I simply shook his claw.  
But I still felt such gratitude;  
I'd like to think he saw.  

And one small tear rolled down my cheek,  
As we said our goodbye.  
I'll always miss him when I speak  
About the crab and I.  

### Day 23: A Million Cups

There's now a million cups aboard the boat,  
And I have no idea whence they came.  
I'm baffled as to how we stay afloat,  
For long enough to play this second game.  

This cornucopia won't phase the crab;  
A tad less philosophical is he.  
But I can't help but try to take a stab,  
At just how all these goblets came to be.  

Did I bring them aboard?  And if so, how?  
Were they inside my `gold` and `shiny` case?  
If that's the case, I think the question now  
Is how I'm gonna get them back in place.  

The elves play games like this one back at home,  
And so a million rounds?  No sweat for me.  
So I suppose I'll sit here, drifting on the foam,  
Beside a million cups gone out to sea.  

### Day 24: One Day More

We've reached the shore at last;  
This trip's been awfully slow.  
Three weeks and change have passed,  
With one more day to go.  

But even Christmas Eve,  
Appears to have construction.  
We can't just quit and leave;  
Instead we'll try deduction.  

We have a path to walk,  
But we can make it better;  
We're not in shape, and balk  
At hiking every letter.  

The exhibition, too  
We'll think and simulate.  
A hundred-day debut  
Is just too long to wait.  

A moment's more delay,  
Would only bring us sorrow,  
But we've arrived today,  
And Christmas comes tomorrow!  

### Day 25: The Stars

There's a star by the pole, looking over the snow,  
Where a forest has patterns for trees all to grow,  
And a toboggan pauses a moment or two,  
As a suit in the seat ponders up at the view.  

We've been chasing the stars, everywhere that we've gone.  
We've been up way past midnight, or well before dawn.  
And each day, there are two precious stars that we seek,  
So we skip out on sleep for a month (less a week).  

There's a star in the north that you see from the plane,  
While departing the airport (with customs insane),  
And the baggage attendant, with bags by the score,  
Wondered why that one star wasn't noticed before.  

There are stars that are easy and stars that are tough,  
And the going's all smooth 'till the waters get rough.  
We have found when the buses will all be in sync,  
And we've learned not to wait for an eon, but think.  

There's a star by the sea a crustacean regards  
For a moment or two while he's playing with cards,  
And much further away is the gigantic eye  
Of a monster observing a star in the sky.  

Every year we come back and re-enter the game.  
Every year it is different, but somehow the same.  
In the story, we sigh when we're called for repair,  
But in truth, we enjoy these, whenever or where.  

ENVOI  

There's a star in the back, where the problems are made,  
And the website is hosted and bandwidth is paid,  
So the puzzle creator's a star, with no doubt;  
Merry Christmas to Topaz - with sleep or without.  

These three weeks and four days are exhausting, but fun,  
And I'll miss all the puzzles, and miss everyone.  
Merry Christmas to coders, wherever you are:  
Like the wise men, we'll meet chasing after a star.
