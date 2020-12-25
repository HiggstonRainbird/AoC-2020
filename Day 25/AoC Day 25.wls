#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 25th, 2020.*)

(* Import *)

input=Import[FileNameJoin[{NotebookDirectory[],"Day25Input.txt"}],"List"];


(*Part 1*)

mod=20201227;
part1 = PowerMod[input[[2]],MultiplicativeOrder[7,mod,input[[1]]],mod];

Print["Part 1: "<>part1];
Print["Part 2: "<>"Merry Christmas!"];
