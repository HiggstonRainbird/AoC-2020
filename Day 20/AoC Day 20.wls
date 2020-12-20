#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 20th, 2020.*)

input =
  StringSplit[
    StringSplit[
     Import[FileNameJoin[{NotebookDirectory[], "Day20Input.txt"}]], 
     "\n\n"], "\n"] //
   ToExpression@StringCases[#[[1]], DigitCharacter ..][[1]] -> 
        Characters[#[[2 ;;]]] /. {"#" -> 1, "." -> 0} & /@ # &;


(*Part 1*)


rotations[m_] := {m, m\[Transpose], Reverse[m, {2}]\[Transpose], 
  Reverse[m\[Transpose], {2}], 
  Reverse[m\[Transpose], {2}]\[Transpose], Reverse[m, {1, 2}], 
  Reverse[m\[Transpose], {1, 2}], 
  Reverse[m\[Transpose], {1, 2}]\[Transpose]}

tileNumbers = DeleteDuplicates[input[[;; , 1]]];
allTiles = 
  Thread[Flatten[Table[{tile, i}, {tile, tileNumbers}, {i, 8}], 1] -> 
    Flatten[rotations /@ input[[;; , 2]], 1]];
tilePositions = 
  Table[i -> FirstPosition[tileNumbers, i][[1]], {i, tileNumbers}];

ClearAll@validVertices;
validVertices[m_, s_] := validVertices[m, s] =
   Which[
    s == 1, Select[allTiles, #[[2, -1, ;;]] === m[[1, ;;]] &],
    s == 2, Select[allTiles, #[[2, ;; , 1]] === m[[;; , -1]] &],
    s == 3, Select[allTiles, #[[2, 1, ;;]] === m[[-1, ;;]] &],
    s == 4, Select[allTiles, #[[2, ;; , -1]] === m[[;; , 1]] &]];

configurations = 
  Flatten[ReplacePart[{Table[0, {i, 12}, {j, 12}]}, {1, 1, 
        1} -> #] & /@ allTiles[[;; , 1]], 1];
Do[
  globalWatch = {1, i, Length[configurations]};
  configurations =
   Flatten[
    Table[
     ReplacePart[conf, {1, i} -> #] & /@
      Complement[
       Union @@ {
         If[i > 1, 
          validVertices[conf[[1, i - 1]] /. allTiles, 2][[;; , 1]], 
          Nothing],
         If[1 > 1, 
          validVertices[conf[[1 - 1, i]] /. allTiles, 3][[;; , 1]], 
          Nothing]},
       Select[Flatten[conf, 1], Length[#] == 2 &],
       SameTest -> (#1[[1]] == #2[[1]] &)]
     , {conf, configurations}],
    1],
  {i, 2, 12}];
Do[
  globalWatch = {j, i, Length[configurations]};
  configurations =
   Flatten[
    Table[
     ReplacePart[conf, {j, i} -> #] & /@
      Complement[
       Intersection @@ {
         If[i > 1, 
          validVertices[conf[[j, i - 1]] /. allTiles, 2][[;; , 1]], 
          Nothing],
         If[j > 1, 
          validVertices[conf[[j - 1, i]] /. allTiles, 3][[;; , 1]], 
          Nothing]},
       Select[Flatten[conf, 1], Length[#] == 2 &],
       SameTest -> (#1[[1]] == #2[[1]] &)]
     , {conf, configurations}],
    1],
  {j, 2, 12},
  {i, 1, 12}];

picture = ArrayFlatten[
   Map[
    #[[2 ;; -2, 2 ;; -2]] &,
    (configurations[[1]] /. allTiles),
    {2}]];


part1 = #[[1,1]]*#[[-1,1]]*#[[1,-1]]*#[[-1,-1]]&@configurations[[1,;;,;;,1]];


(*Part 2*)


seaMonster =
  Characters /@
   StringSplit["                  # 
    #    ##    ##    ###
     #  #  #  #  #  #   ", "\n"];
spotsToCheck = Reverse /@ Position[seaMonster, "#"];
spotsToCheck = {{19, 1}, {1, 2}, {6, 2}, {7, 2}, {12, 2}, {13, 2}, {18, 2}, {19, 2}, {20, 2}, {2, 3}, {5, 3}, {8, 3}, {11, 3}, {14, 3}, {17, 3}};

monsterCount = Max[Table[
    Count[
     Flatten[
      Table[
       p[[#[[1]], #[[2]]]] & /@ ({i, j} + # & /@ spotsToCheck),
       {i, 0, Length[p] - 20},
       {j, 0, Length[p[[i]]] - 3}], 1],
     _?(Total[#] == Length[spotsToCheck] &)],
    {p, rotations[picture]}]];
    
part2 = Total[Flatten@picture] - 15*monsterCount;

Print["Part 1: "<>ToString@part1];
Print["Part 2: "<>ToString@part2];
