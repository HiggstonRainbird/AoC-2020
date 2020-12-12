#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 12th, 2020.*)

input = 
	{StringTake[#,{1}],ToExpression@StringTake[#,{2,-1}]}&/@
	Import[FileNameJoin[{NotebookDirectory[],"Day12Input.txt"}],"List"];

facing = {{1, 0}, {0, -1}, {-1, 0}, {0, 1}};
ship = {0, 0};
Do[
  Which[
    d[[1]] == "N", ship += {0, -1}*d[[2]],
    d[[1]] == "S", ship += {0, 1}*d[[2]],
    d[[1]] == "E", ship += {1, 0}*d[[2]],
    d[[1]] == "W", ship += {-1, 0}*d[[2]],
    
    d[[1]] == "L", facing = RotateLeft[facing, d[[2]]/90],
    d[[1]] == "R", facing = RotateRight[facing, d[[2]]/90],
    
    d[[1]] == "F", ship += facing[[1]]*d[[2]]
    ];
  , {d, input}];
part1 = Total[Abs[ship]]

(* Part 2 *)

rotations[{x_, y_}, r_] := ReIm[(Complex @@ {x, y})*I^(r/90)];
ship = {0, 0};
way = {10, -1};
Do[
  Which[
    d[[1]] == "N", way += {0, -1}*d[[2]],
    d[[1]] == "S", way += {0, 1}*d[[2]],
    d[[1]] == "E", way += {1, 0}*d[[2]],
    d[[1]] == "W", way += {-1, 0}*d[[2]],
    
    d[[1]] == "L", way = rotations[way, -(d[[2]]/90)],
    d[[1]] == "R", way = rotations[way, (d[[2]]/90)],
    
    d[[1]] == "F", ship += (way)*d[[2]];
    ];
  , {d, input}];
part2 = Total[Abs[ship]]

Print["Part 1: "<>part1];
Print["Part 2: "<>part2];
