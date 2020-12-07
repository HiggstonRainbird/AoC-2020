#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 7th, 2020.*)


ClearAll@weights;
input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day7Input.txt"}],"List"],Alternatives[" ",".",","]];
newInput=Select[input,!MemberQ[#,"other"]&];

weights =
  Association @@
   Flatten[
    Table[
     StringJoin[line[[;; 2]]] ->
          <|((StringJoin[#[[2]], #[[3]]] -> ToExpression[#[[1]]]) & /@
             Transpose[{line[[5 ;; ;; 5]], line[[6 ;; ;; 5]], line[[7 ;; ;; 5]]}])|>
     , {line, input}]];

graph = Graph[Flatten[Table[w -> # & /@ Keys[weights[[w]]], {w, Keys[weights]}]]];


(*Part 1*)

part1 = Count[
  Table[
    GraphDistance[graph, v, "shinygold"],
    {v, VertexList[graph]}], 
  _?(0 < # < \[Infinity] &)];


(*Part 2*)

bagCount[bag_String] := bagCount[bag] =
  If[Head[weights[[bag]]] === Missing,
   1,
   1 + Total[bagCount[#]*weights[[bag, #]] & /@ (Keys[weights[[bag]]])]];

part2 = bagCount["shinygold"] - 1;

Print["Part 1: " <> ToString[part1]];
Print["Part 2: " <> ToString[part2]];

