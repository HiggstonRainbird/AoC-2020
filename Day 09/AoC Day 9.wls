#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 9th, 2020.*)

input=ToExpression/@Import[FileNameJoin[{NotebookDirectory[],"Day9Input.txt"}],"List"];

(*Part 1*)

part1 = 
	Quiet[input[[
		SelectFirst[
			Table[
				{i,IntegerPartitions[input[[i]],{2},input[[i-25;;i]],1]},
				{i,26,Length[input]}],
			Length[#[[2]]]==0&][[1]]
			]]
		]


(*Part 2*)

part2 = NestWhile[
	If[
		#[[3]]>part1,
		{#[[1]]+1,#[[2]],#[[3]]-input[[#[[1]]]]},
		{#[[1]],#[[2]]+1,#[[3]]+input[[#[[2]]+1]]}
	]&,
	{1,1,input[[1]]},
	#[[3]]!=part1&
	] //input[[#[[1]];;#[[2]]]]& // Min[#]+Max[#]&]
	
Print["Part 1: "<>ToString[part1]];
Print["Part 2: "<>ToString[part2]];
