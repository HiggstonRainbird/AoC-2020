#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Text:: *)
(*Written December 18th, 2020.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=Import[FileNameJoin[{NotebookDirectory[],"Day18Input.txt"}],"List"];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total@Table[*)
(*ToExpression[StringReplace[line,{"+"->"\[CirclePlus]","*"->"\[CircleMinus]"}]]/.*)
(*{CirclePlus->Plus,CircleMinus->Times},*)
(*{line,input}]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Total@Table[*)
(*ToExpression[StringReplace[line,{"+"->"\[CircleTimes]","*"->"\[CirclePlus]"}]]/.*)
(*{CircleTimes->Plus,CirclePlus->Times},*)
(*{line,input}]*)
