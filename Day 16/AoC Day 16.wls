#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Written December 15th, 2020.*)

toExpression[inputText_] :=
 Map[
  If[! IntegerQ[#] \[And] 
     StringMatchQ[#, Alternatives["+", "-", ""] ~~ DigitCharacter ..],
     ToExpression[#], #] &,
  inputText,
  {2}]

input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day16Input.txt"}]],"\n"];

(*Part 1*)

valid = Union[
   Flatten[
    Table[
     Range @@ # & /@
      toExpression[
       Partition[
        Select[StringSplit[line, Alternatives[":", "or", " ", "-"]],
         StringMatchQ[#, DigitCharacter ..] &],
        2]],
     {line, input[[;; 20]]}]
    ]];

yourTicket = ToExpression[StringSplit[input[[23]], ","]];
nearbyTickets = toExpression[StringSplit[input[[26 ;;]], ","]];

part1 = Total@Select[Flatten[nearbyTickets],!MemberQ[valid,#]&]


(*Part 2*)

nearbyTickets =
  Join[
   {yourTicket},
   Select[nearbyTickets, Length[Complement[#, valid]] == 0 &]
   ];
ranges =
  Table[
   Range @@ # & /@
      toExpression[
       Partition[
        Select[StringSplit[line, Alternatives[":", "or", " ", "-"]],
         StringMatchQ[#, DigitCharacter ..] &],
        2]]
     // Flatten
    // Union,
   {line, input[[;; 20]]}];
excludedValues = Table[
   {FirstPosition[#, _?IntegerQ][[1]], Flatten[#][[1]]} &@
    Table[
     Complement[
      Range[20],
      Select[Range[20], MemberQ[ranges[[#]], field] &]
      ],
     {field, ticket}],
   {ticket, nearbyTickets[[2 ;;]]}];
excludedValues = Sort@GatherBy[excludedValues, First];
map = {#[[1, 1]], Complement[Range[20], #[[;; , 2]]]} & /@ 
    excludedValues // Reverse;
transformationList = {{map[[1, 1]], map[[1, 2, 1]]}};
Do[
  AppendTo[
   transformationList, {column[[1]], 
    Complement[column[[2]], transformationList[[;; , 2]]][[1]]}]
  , {column, map[[2 ;;]]}];
part2 = Times @@ yourTicket[[
  Select[
    transformationList,
    #[[2]] <= 6 &][[;; , 1]]]]
    
Print["Part 1: "<>part1];
Print["Part 2: "<>part2];
    
    
