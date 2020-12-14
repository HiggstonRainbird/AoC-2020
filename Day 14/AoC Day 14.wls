#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 14th, 2020.*)

input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day14Input.txt"}],"List"]];*)

(*Part 1*)


mem = <||>;
Do[
 If[
  line[[1]] == "mask",
  mask = {
	StringPosition[#, "0"][[;; , 1]] &@line[[3]],
	StringPosition[#, "1"][[;; , 1]] &@line[[3]]},
  
  register = StringTake[line[[1]], {5, -2}];
  value = PadLeft[IntegerDigits[ToExpression[line[[3]]], 2], 36];
  value[[mask[[1]]]] = 0; value[[mask[[2]]]] = 1; 
  value = FromDigits[value, 2];
  
  mem[[register]] = value
  ]
 , {line, input}]

part1 = Total[Values[mem]]


(*Part 2*)

ClearAll@mem;
mem = <||>;
Do[
  If[
   line[[1]] == "mask",
   mask = {
     StringPosition[#, "0"][[;; , 1]] &@line[[3]],
     StringPosition[#, "1"][[;; , 1]] &@line[[3]],
     StringPosition[#, "X"][[;; , 1]] &@line[[3]]},
   
   register = StringTake[line[[1]], {5, -2}];
   value = PadLeft[IntegerDigits[ToExpression[register], 2], 36];
   value[[mask[[2]]]] = 1; value[[mask[[3]]]] = 0;
   
   AppendTo[mem, 
      ToString[#] -> ToExpression[line[[3]]]] & /@ (FromDigits[value, 
       2] + (Total /@ Subsets[2^(36 - mask[[3]])]))
   ]
  , {line, input}];

part2 = Total[Values[mem]];

Print["Part 1: " <> part1];
Print["Part 2: " <> part2];
