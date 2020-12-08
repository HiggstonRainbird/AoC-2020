#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Text:: *)
(*Written December 8th, 2020.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day8Input.txt"}],"List"]];*)
(*input[[;;,2]]=ToExpression[input[[;;,2]]];*)


(* Part 1 *)

findLoop[inp_List] :=
 Module[
  {visited, acc, pos},
  acc = 0; pos = 1;
  visited[n_Integer] := False;
  While[0 < pos <= Length[inp],
   (visited[pos] = True;
      Which[
       #[[1]] == "jmp", pos += #[[2]],
       #[[1]] == "acc", acc += #[[2]]; pos += 1,
       #[[1]] == "nop", pos += 1];
      If[visited[pos] == True, Break[]]
      ) &@inp[[pos]]];
  {pos, acc}]

part1 = findLoop[input];

(* Part 2 *)

Do[
  newInput = input;
  Which[
   input[[i, 1]] == "jmp", newInput[[i, 1]] = "nop",
   input[[i, 1]] == "nop", newInput[[i, 1]] = "jmp"];
  result = findLoop[newInput];
  If[
   0 < result[[1]] <= Length[input],
   Continue[],
   Break[]]
  , {i, Length[input]}];
part2 = result;

Print["Part 1: "<>ToString[part1]];
Print["Part 2: "<>ToString[part2]];





