#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 6th, 2020.*)


input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day6Input.txt"}]],"\n\n"];


(*Part 1*)


part1 = Total@Table[Length[DeleteCases[Union[Characters[line]],"\n"]],{line,input}];


(*Part 2*)


part2 = Total@Table[Length[Intersection@@(Characters/@StringSplit[line,"\n"])],{line,input}];

Print["Part 1: "<>ToString[part1]];
Print["Part 2: "<>ToString[part2]];
