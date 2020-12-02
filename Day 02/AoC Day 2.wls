#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 2nd, 2020.*)


input=
	StringSplit[
		Import[FileNameJoin[{NotebookDirectory[],"Day2Input.txt"}],"List"],
		Alternatives[" ",":","-"]];


(*Part 1*)

Print["Part 1:];
Print@Count[
 Table[
  ToExpression[line[[1]]] <= StringCount[line[[-1]], line[[3]]] <= ToExpression[line[[2]]],
  {line, input}],
 True];


(*Part 2*)

Print[""];
Print["Part 2:"];
Print@Count[
 Table[
  Count[
   {StringTake[line[[-1]], {ToExpression[line[[1]]]}],
    StringTake[line[[-1]], {ToExpression[line[[2]]]}]},
   line[[3]]],
  {line, input}],
 1]

