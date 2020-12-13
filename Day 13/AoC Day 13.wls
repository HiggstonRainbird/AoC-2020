#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 12th, 2020.*)

toExpression[inputText_]:=
	Map[
		If[!IntegerQ[#]\[And]StringMatchQ[#,Alternatives["+","-",""]~~DigitCharacter..],ToExpression[#],#]&,
		inputText,
	{2}];


input=toExpression/@Import[FileNameJoin[{NotebookDirectory[],"Day13Input.txt"}],"List"];
input[[2]]=ToExpression/@StringSplit[input[[2]],","];


(*Part 1*)


{#,(#-Mod[input[[1]],#])}&/@Select[input[[2]],IntegerQ[#]&]//MinimalBy[#,Last][[1]]&//Times@@#&


(*Part 2*)


ChineseRemainder[-(Flatten[Position[input[[2]],_?(IntegerQ)]]-1),Select[input[[2]],IntegerQ[#]&]]
