#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 19th, 2020.*)

input=Import[FileNameJoin[{NotebookDirectory[],"Day19Input.txt"}],"List"];

(*Part 1*)

ClearAll@rules;
Table[
  (rules[#[[1]]] = {#[[2]], #[[3]]}) &@
   StringCases[
     line,
     {x : DigitCharacter .. ~~ ":" ~~
        
        y : (DigitCharacter .. | " ") .. ~~ "|" ... ~~
        
        z : (DigitCharacter .. | " ") ... :>
       {x, StringSplit[y], StringSplit[z]}}][[1]],
  {line, input[[;; 128]]}];
rules["54"] = "b"; rules["122"] = "a";

ClearAll@possibilities;
possibilities[r_String] := possibilities[r] =
   If[
    MemberQ[{"54", "122"}, r], rules[r],
    If[Length[rules[r][[2]]] == 0,
     StringExpression @@ (possibilities /@ rules[r][[1]]),
     Alternatives @@ {
       StringExpression @@ (possibilities /@ rules[r][[1]]),
       StringExpression @@ (possibilities /@ rules[r][[2]])}]
    ];

Count[
  Table[
   StringMatchQ[
    line,
    possibilities["0"]],
   {line, input[[130 ;;]]}],
  True] // AbsoluteTiming

(*Part 2*)


ClearAll@rules;
Table[
  (rules[#[[1]]] = {#[[2]], #[[3]]}) &@
   StringCases[
     line,
     {x : DigitCharacter .. ~~ ":" ~~
        
        y : (DigitCharacter .. | " ") .. ~~ "|" ... ~~
        
        z : (DigitCharacter .. | " ") ... :>
       {x, StringSplit[y], StringSplit[z]}}][[1]],
  {line, input[[;; 128]]}];
rules["54"] = "b"; rules["122"] = "a";
rules["8"] = {{"42"}, {"42", "8"}}; 
rules["11"] = {{"42", "31"}, {"42", "11", "31"}};

ClearAll@possibilities;
    possibilities[r_String] := possibilities[r] =
       Which[
        MemberQ[{"54", "122"}, r], rules[r],
        Length@Stack[] > 100, "",
        
        True, If[Length[rules[r][[2]]] == 0,
         StringExpression @@ (possibilities /@ rules[r][[1]]),
         Alternatives @@ {
           StringExpression @@ (possibilities /@ rules[r][[1]]),
           StringExpression @@ (possibilities /@ rules[r][[2]])}]
        ];
$RecursionLimit = 1024;

Count[
  Table[
   StringMatchQ[
    line,
    possibilities["0"]],
   {line, input[[130 ;;]]}],
  True] // AbsoluteTiming
