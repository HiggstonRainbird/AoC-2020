#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 15th, 2020.*)

input={5,2,8,16,18,0,1}


ClearAll@hist;
hist[n_Integer] := {};
Do[hist[input[[i]]] = {i}, {i, Length[input]}];
pos = Length[input] + 1;
current = input[[-1]];
Do[
 If[
  Length[hist[current]] == 1,
  
  hist[0] = {hist[0][[-1]], pos};
  current = 0;,
  
  current = hist[current][[2]] - hist[current][[1]];
  hist[current] = {If[Length[hist[current]] == 0, Nothing, 
     hist[current][[-1]]], pos};
  ];
 pos += 1;,
 {i, 2020 - Length[input]}]
part1 = current;
 
(*Part 2*)

ClearAll@hist;
hist[n_Integer] := {};
Do[hist[input[[i]]] = {i}, {i, Length[input]}];
pos = Length[input] + 1;
current = input[[-1]];
Do[
 If[
  Length[hist[current]] == 1,
  
  hist[0] = {hist[0][[-1]], pos};
  current = 0;,
  
  current = hist[current][[2]] - hist[current][[1]];
  hist[current] = {If[Length[hist[current]] == 0, Nothing, 
     hist[current][[-1]]], pos};
  ];
 pos += 1;,
 {i, 30000000 - Length[input]}]
part2 = current;

Print["Part 1: "<>current];
Print["Part 2: "<>current];
