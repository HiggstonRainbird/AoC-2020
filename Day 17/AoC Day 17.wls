#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 17th, 2020.*)

input=Characters/@Import[FileNameJoin[{NotebookDirectory[],"Day17Input.txt"}],"List"];

(*Part 1*)


newState[state_List] := Partition[state, {3, 3, 3}, {1, 1, 1}, {2, -2}, {}];
stateList = {};
state = Normal[
   SparseArray[
    Join[{7}, #] -> 1 & /@ (Position[input, "#"] + 7), {15, 30, 30}]];
AppendTo[stateList, state];
Do[
 new = newState[state];
 new = Table[
   Which[
    state[[i, j, k]] == 1 \[And] 3 <= Count[Flatten[new[[i, j, k]]], 1] <= 4, 1,
    state[[i, j, k]] == 1, 0,
    state[[i, j, k]] == 0 \[And] Count[Flatten[new[[i, j, k]]], 1] == 3, 1,
    state[[i, j, k]] == 0, 0],
    {i, Length[new]}, {j, Length[new[[i]]]}, {k, Length[new[[i, j]]]}];
 state = new;
 AppendTo[stateList, state];,
 {n, 6}]
part1 = Total[Flatten[new]];


(*Part 2*)

newState[state_List] := Partition[state, {3, 3, 3}, {1, 1, 1}, {2, -2}, {}];
state = Normal[
   SparseArray[
    Join[{7, 7}, #] -> 1 & /@ (Position[input, "#"] + 7), {15, 15, 30, 30}]];
Do[
 new = newState[state];
 new = Table[
   Which[
    state[[i, j, k, l]] == 1 \[And] 3 <= Count[Flatten[new[[i, j, k, l]]], 1] <= 4, 1,
    state[[i, j, k, l]] == 1, 0,
    state[[i, j, k, l]] == 0 \[And] Count[Flatten[new[[i, j, k, l]]], 1] == 3, 1,
    state[[i, j, k, l]] == 0, 0],
    {i, Length[new]}, {j, Length[new[[i]]]}, {k, Length[new[[i, j]]]}, {l, Length[new[[i, j, k]]]}];
 state = new;
 AppendTo[stateList, state];,
 {n, 6}]
part2 = Total[Flatten[new]];

Print["Part 1: "<>part1];
Print["Part 2: "<>part2];
