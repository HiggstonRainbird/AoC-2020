#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 5th, 2020.*)



input = Characters/@Import[FileNameJoin[{NotebookDirectory[],"Day5Input.txt"}],"List"];


(*Part 1*)


part1 = Max@
	Table[
		FromDigits[line/.{"R"->1,"L"->0,"B"->1,"F"->0},2],
	{line,input}]

(*Part 2*)

part2 = Complement[Range[Min[#],Max[#]],#][[1]]&@
	Table[
		FromDigits[line/.{"R"->1,"L"->0,"B"->1,"F"->0},2],
	{line,input}]
	
Print["Part 1: "<>ToString[part1]]
Print["Part 2: "<>ToString[part2]]
