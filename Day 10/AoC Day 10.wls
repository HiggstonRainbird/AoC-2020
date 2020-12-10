#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 10th, 2020.*)


input=ToExpression/@Import[FileNameJoin[{NotebookDirectory[],"Day10Input.txt"}],"List"];*)
AppendTo[input,Max[input]+3];
AppendTo[input,0];
input=Sort[input];


(*Part 1*)

part1 = Times @@ Tally[Differences[Sort[input]]][[;; , 2]];

(*Part 2*)

g[n_Integer] := g[n] = Which[n == 0, 0, n <= 2, 1, True, g[n - 1] + g[n - 2] + g[n - 3]];
part2 = Times @@ (g /@ (Length /@ Split[input, Abs[#1 - #2] == 1 &]));

Print["Part 1: "<>ToString[part1]];
Print["Part 2: "<>ToString[part2]];
