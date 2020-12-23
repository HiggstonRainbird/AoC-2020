#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 23rd, 2020.*)

input=Import[FileNameJoin[{NotebookDirectory[],"Day23Input.txt"}],"Table"];
sampleInput=Import[FileNameJoin[{NotebookDirectory[],"Day23SampleInput.txt"}],"Table"];


(*Part 1*)

move[l_List] :=
 Module[
  {grabbed = l[[2 ;; 4]], dest, pos, newL},
  newL = Drop[l, {2, 4}];
  dest = Mod[l[[1]] - 1, Length[l], 1];
  While[
   MemberQ[grabbed, dest] \[Or] ! MemberQ[l, dest],
   dest = Mod[dest - 1, Length[l], 1]
   ];
  pos = FirstPosition[newL, dest][[1]] + 1;
  newL = Flatten[Insert[newL, grabbed, pos]];
  newL = RotateLeft[newL, 1]
  ]


part1 = Nest[
   move,
   IntegerDigits[input[[1, 1]]],
   100] // 
  RotateLeft[#, FirstPosition[#, 1][[1]]][[;; -2]] & // FromDigits;


(*Part 2*)


ClearAll@next; ClearAll@onePrev;
max = 10^6;
list = IntegerDigits[input[[1, 1]]];
config = Join[list, Range[Length@list + 1, max]];
onePrev = FirstPosition[list, 1][[1]];

Do[
  next[config[[i]]] = config[[Mod[i + 1, Length[config], 1]]],
  {i, Length[config]}];

move2[curr_] :=
  Module[
   {grabbed, grabbedAfter, dest, destAfter, pos, newL},
   
   grabbed = NestList[next, curr, 3][[2 ;;]];
   dest = Mod[curr - 1, max, 1];
   While[
    MemberQ[grabbed, dest] \[Or] dest < 1,
    dest = Mod[dest - 1, max, 1]
    ];
   grabbedAfter = next[grabbed[[-1]]];
   destAfter = next[dest];
   If[grabbedAfter == 1, onePrev = curr];
   If[destAfter == 1, onePrev = dest];
   
   next[dest] = grabbed[[1]];
   next[grabbed[[-1]]] = destAfter;
   
   next[curr] = grabbedAfter;
   grabbedAfter
   ];
globalWatch = 1;
Nest[
  (globalWatch += 1; move2[#]) &,
  config[[1]],
  10^7];
  
part2 = #[[3]]*#[[4]]&@NestList[next, onePrev, 3]]

Print["Part 1: "<>part1];
Print["Part 2: "<>part2];
