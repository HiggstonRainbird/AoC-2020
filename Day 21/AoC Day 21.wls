#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 21st, 2020.*)

input=StringSplit/@StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day21Input.txt"}],"List"],Alternatives["(",")",","]];


(*Part 1*)

ingredients = input[[;; , 1]];
allergens = input[[;; , 2 ;;, -1]];
positions = {#, Position[allergens, #][[;; , 1]]} & /@ Union[Flatten[allergens]];
contains = SortBy[{#[[1]], Intersection @@ ingredients[[#[[2]]]]} & /@ positions, Length[#[[-1]]] &];

part1 = Total@Select[Tally[Flatten[input[[;;,1]]]],!MemberQ[Union[Flatten[contains[[;;,2]]]],#[[1]]]&][[;;,2]];


(* ::Subsubsection:: *)
(*Part 2*)


canonical = {}; 
Quiet@Do[
  AppendTo[canonical, #[[1]] -> #[[2, 1]] &@ SelectFirst[contains, Length[#[[2]]] == 1 &]];
  contains = DeleteCases[contains, _?(#[[1]] == canonical[[-1, 1]] \[Or] # == canonical[[-1, 2]] &), Infinity];
  , {i, Length[contains]}];
  
part2 = StringJoin[Riffle[Sort[canonical][[;; , 2]], ","]];
