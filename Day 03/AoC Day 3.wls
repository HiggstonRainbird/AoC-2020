#!/usr/bin/env wolframscript
(* ::Package:: *)


(*Written December 3rd, 2020.*)


input=Characters/@Import[FileNameJoin[{NotebookDirectory[],"Day3Input.txt"}],"List"];


solutions =
Table[
 Count[Table[
   input[[
    Mod[s[[2]]*i - (s[[2]] - 1), Length[input]],
    Mod[s[[1]]*i - (s[[1]] - 1), Length[input[[i]]], 1]]],
   {i, 1, Length[input]/s[[2]]}], "#"],
 {s, {{1, 1}, {3, 1}, {5, 1}, {7, 1}, {1, 2}}}]

Print["Part 1:"]
Print[solutions[[2]]]
Print[""]
Print["Part 2:"]
Print[Times@@solutions]
