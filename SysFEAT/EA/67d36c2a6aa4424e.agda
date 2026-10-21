{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Language: 


Documentation : https://framework.sysfeat.com/pages/67d36c2a6aa4424e.htm

External references:
  Russel Ackoff - Choice & Communication - Language: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Language
  OMG - SBVR - Language: https://www.omg.org/spec/SBVR/1.5/PDF#page=52
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d36c2a6aa4424e where -- ========== Language

open import Agda.Primitive
open import SysFEAT.UpperOntology.3aca52346aa6418d public -- Abstract Entity

Language : ClassOfAbstractEntity
Language = AbstractEntity


--  Language is subTypeOf AbstractEntity
st-67d36c2a6aa4424e-3aca52346aa6418d : Language ⊏ₑ AbstractEntity
st-67d36c2a6aa4424e-3aca52346aa6418d = polySubTypeOf-identity


