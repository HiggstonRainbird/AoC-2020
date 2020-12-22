#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 22nd, 2020.*)


input=Import[FileNameJoin[{NotebookDirectory[],"Day22Input.txt"}],"Table"];

(* Part 1 *)

player1 = Flatten[input[[2 ;; 26]]];
player2 = Flatten[input[[29 ;;]]];
globalWatch = 0;
While[
 Length[player1] > 0 \[And] Length[player2] > 0,
 If[
  player1[[1]] > player2[[1]],
  player1 = Join[player1[[2 ;;]], {player1[[1]], player2[[1]]}];
  player2 = Delete[player2, 1];,
  
  player2 = Join[player2[[2 ;;]], {player2[[1]], player1[[1]]}];
  player1 = Delete[player1, 1];
  ];
 globalWatch += 1
 ]

part1 = Total[Reverse[Range[Length[#]]]*# &@player1];


(* Part 2 *)


globalWatch = {1, 1};
ClearAll@combatRound; ClearAll@combatGame;
combatRound[{hist_, p1_, p2_, n_}] :=
  Which[
   MemberQ[hist, {p1, p2}],
   {hist, p1, p2, 1},
   
   Length[p1] >= p1[[1]] + 1 \[And] Length[p2] >= p2[[1]] + 1,
   If[#[[3]] == 1,
      {Join[hist, {{p1, p2}}],
       Join[p1[[2 ;;]], {p1[[1]], p2[[1]]}],
       p2[[2 ;;]],
       0},
      {Join[hist, {{p1, p2}}],
       p1[[2 ;;]],
       Join[p2[[2 ;;]], {p2[[1]], p1[[1]]}],
       0}
      ] &@
    combatGame[{p1[[2 ;; p1[[1]] + 1]], p2[[2 ;; p2[[1]] + 1]]}],
   
   True,
   If[p1[[1]] > p2[[1]],
    {Join[hist, {{p1, p2}}],
     Join[p1[[2 ;;]], {p1[[1]], p2[[1]]}],
     p2[[2 ;;]],
     0},
    {Join[hist, {{p1, p2}}],
     p1[[2 ;;]],
     Join[p2[[2 ;;]], {p2[[1]], p1[[1]]}],
     0}
    ]];
combatGame[{p1_, p2_}] :=
  
  Module[{hist, n = 0, p1Local = p1, p2Local = p2},
   hist = {};
   globalWatch = {globalWatch[[1]], globalWatch[[2]] + 1};
   While[
    Length[p1Local] > 0 \[And] Length[p2Local] > 0 \[And] n == 0,
    globalWatch = {globalWatch[[1]] + 1, globalWatch[[2]]};
    (*Print[{Length[hist]+1,p1Local,p2Local,n}];Pause[
    0.5];*)
    {hist, p1Local, p2Local, n} = 
     combatRound[{hist, p1Local, p2Local, 0}];
    ];
   globalWatch = {globalWatch[[1]], globalWatch[[2]] - 1};
   Which[
    n != 0, {p1Local, p2Local, n},
    Length[p1Local] == 0, n = 2; {p1Local, p2Local, n},
    Length[p2Local] == 0, n = 1; {p1Local, p2Local, n}]
   
   ];

player1 = Flatten[input[[2 ;; 26]]];
player2 = Flatten[input[[29 ;;]]];

result = combatGame[{player1, player2}];
part2 = Total[Reverse[Range[Length[#]]]*#&@result[[result[[3]]]]];

Print["Part 1: "<>ToString[part1]];
Print["Part 2: "<>ToString[part2]];
