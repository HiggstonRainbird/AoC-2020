#!/usr/bin/env wolframscript
(* ::Package:: *)

input=Characters[Import[FileNameJoin[{NotebookDirectory[],"Day11Input.txt"}],"List"]];


newState[state_List]:=Partition[state,{3,3},{1,1},{2,-2},{}];


state = input;
part1 = -1;

While[
 part1 != Count[state, "#", 2],
 part1 = Count[state, "#", 2];
 surroundings = newState[state];
 state =
  Table[
   state[[i, 
     j]] /.
    {"L" -> 
      If[Count[surroundings[[i, j]], "#", 2] == 0, "#", "L"],
     "#" -> If[Count[surroundings[[i, j]], "#", 2] >= 5, "L", "#"]},
   {i, Length[state]}, {j, Length[state[[i]]]}];
 ]


indicesToCheck =
  Table[
   Select[
    Table[
     NestWhile[# + d &,
      {i, j} + d,
      1 <= #[[1]] + d[[1]] <= Length[input] \[And]
        1 <= #[[2]] + d[[2]] <= Length[input[[i]]] \[And]
        input[[#[[1]], #[[2]]]] == "." &]
     , {d, 
      Drop[Flatten[Table[{a, b}, {a, -1, 1}, {b, -1, 1}], 1], {5}]}],
    0 < #[[1]] <= Length[input] \[And] 
      0 < #[[2]] <= Length[input[[2]]] &]
   , {i, Length[input]}, {j, Length[input[[i]]]}];

state = input;
part2 = -1;

While[
  part2 != Count[state, "#", 2],
  part2 = Count[state, "#", 2];
  surroundings = newState[state];
  state =
   Table[
    state[[i, 
      j]] /.
     {"L" -> 
       If[Count[state[[#[[1]], #[[2]]]] & /@ indicesToCheck[[i, j]], 
          "#", 1] == 0, "#", "L"],
      "#" -> 
       If[Count[state[[#[[1]], #[[2]]]] & /@ indicesToCheck[[i, j]], 
          "#", 1] >= 5, "L", "#"]},
    {i, Length[state]}, {j, Length[state[[i]]]}];
  ];


Print["Part 1: "<>part1];
Print["Part 2: "<>part2];
