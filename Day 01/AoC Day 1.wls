#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 1st, 2020.*)

(*Import*)

input=Import[FileNameJoin[{Directory[],"Day1Input.txt"}],"List"];


(*Part 1*)

Print["Part 1:"]
Print[Times@@SelectFirst[Subsets[input,{2}],Total[#]==2020&]]


(*Part 2*)

Print["Part 2:"]
Print[Times@@SelectFirst[Subsets[input,{3}],Total[#]==2020&]]
