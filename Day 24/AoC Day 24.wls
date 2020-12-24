#!/usr/bin/env wolframscript
(* ::Package:: *)


(*Written December 24th, 2020.*)


(*Import*)


(* ::Input:: *)

input = Characters /@ 
   Import[FileNameJoin[{NotebookDirectory[], "Day24Input.txt"}], 
    "List"];
input = Table[
   StringJoin /@ 
    Split[i, MemberQ[{"n", "s"}, #1] \[And] MemberQ[{"e", "w"}, #2] &],
   {i, input}];

(* Part 1 *)

ClearAll@grid;
grid = <||>;
Do[
  x = 0; y = 0;
  Do[
   	Which[
     		i == "e", x += 2,
     		i == "ne", x++; y++,
     		i == "se", x++; y--,
     		i == "w", x -= 2,
     		i == "sw", x--; y--,
     		i == "nw", x--; y++
     	];,
   {i, j}];
  If[KeyMemberQ[grid, {x, y}],
   grid[{x, y}] = Mod[grid[{x, y}] + 1, 2],
   grid[{x, y}] = 1],
  {j, input}];
  
newGrid = Select[grid, # == 1 &];
part1 = Total[Values[newGrid]];

(* Part 2 *)

ClearAll@neighbor;
neighbor[{x_, y_}] :=
  Module[{},
   Do[
    If[! KeyMemberQ[newGrid, k], newGrid[k] = 0];,
    {k, {x, y} + # & /@ {{0, 0}, {2, 0}, {-2, 0}, {1, 1}, {-1, 
        1}, {1, -1}, {-1, -1}}}];
   
   {x, y} + # & /@ {{2, 0}, {-2, 0}, {1, 1}, {-1, 
      1}, {1, -1}, {-1, -1}}];
gridList = {};
Do[
  AppendTo[gridList, newGrid];
  newGrid = Select[grid, # == 1 &];
  spotsToCheck = 
   Union@Flatten[Join[neighbor /@ Keys[newGrid], {Keys[newGrid]}], 
     1];
  globalWatch = i;
  Do[
   count = Total[grid[#] & /@ neighbor[spot]] /. _Missing -> 0;
   If[! IntegerQ[count], Print["Problem"]; Pause[1]];
   If[i == 6 \[And] spot === {2, 4}, 1];
   Which[
    newGrid[spot] == 1 \[And] (count == 0 \[Or] count > 2),
    newGrid[spot] = 0,
    
    newGrid[spot] == 0 \[And] count == 2,
    newGrid[spot] = 1
    ];
   , {spot, spotsToCheck}];
  grid = newGrid;
  , {i, 100}];
part2 = Total@Values[newGrid];

Print["Part 1: "<>ToString[part1]];
Print["Part 2: "<>ToString[part2]];
