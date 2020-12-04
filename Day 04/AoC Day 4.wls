#!/usr/bin/env wolframscript
(* ::Package:: *)


(*Written December 3rd, 2020.*)


input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day4Input.txt"}]],"\n\n"];


(*Part 1*)


part1 = Count[Table[
  Length@Intersection[
    StringSplit[line, Alternatives[":", " ", "\n"]],
    {"byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid"}],
  {line, input}], 7]


(*Part 2*)


newInput = StringSplit[#,Alternatives[":"," ","\n"]]&/@input;
newInput = Partition[#,2]&/@Select[newInput,
	Length[Intersection[#,
		{"byr","iyr","eyr","hgt","hcl","ecl","pid"}
		]]==7&];

assocInput=Table[Association[#[[1]]->#[[2]]&/@line],{line,newInput}];


part2 = Length@Select[
  Table[
   {1920 <= ToExpression[element[["byr"]]] <= 2002,
    2010 <= ToExpression[element[["iyr"]]] <= 2020,
    2020 <= ToExpression[element[["eyr"]]] <= 2030,
    Which[
       StringTake[#, -2] == "cm",
       150 <= ToExpression[StringSplit[#, "cm"][[1]]] <= 193,
       StringTake[#, -2] == "in",
       59 <= ToExpression[StringSplit[#, "in"][[1]]] <= 76,
       True,
       False
       ] &@element[["hgt"]],
    StringTake[#, 1] == 
        "#" \[And] (Length[
          Complement[Characters@#, 
           Join[CharacterRange["a", "f"], 
            CharacterRange["0", "9"], {"#"}]]] == 0) &@
     element[["hcl"]],
    MemberQ[{"amb", "blu", "brn", "gry", "grn", "hzl", "oth"}, 
     element[["ecl"]]],
    StringLength[#] == 9 \[And] 
       Length[Complement[Characters@#, CharacterRange["0", "9"]]] == 
        0 &@element[["pid"]]
    },
   {element, assocInput}],
  ! MemberQ[#, False] &]
  
Print["Part 1: "<>ToString[part1]]
Print["Part 2: "<>ToString[part2]]
