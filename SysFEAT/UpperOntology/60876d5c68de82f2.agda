{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Class of Bounded Individual: 
A Class of Class of Bounded Individual is a Class of Class of Individual which is the powertype of  Class of Bounded Individual . It means that all sub-types of Class of Bounded Individual are instances of Class of Class of Bounded Individual.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.60876d5c68de82f2 where -- ========== Class of Class of Bounded Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.608767a668de7fb6 public -- Class of Class of Individual

ClassOfClassOfBoundedIndividual : ThirdOrderClass
ClassOfClassOfBoundedIndividual = ClassOfClassOfIndividual

postulate --  ClassOfClassOfBoundedIndividual is subTypeOf ClassOfClassOfIndividual
  st-87d3223566e34385 : ClassOfClassOfBoundedIndividual ⊏ₑ ClassOfClassOfIndividual

-- == Relationships =======================
