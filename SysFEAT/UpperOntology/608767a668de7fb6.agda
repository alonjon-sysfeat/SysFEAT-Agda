{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Class of Individual: 
A Class of Class of Individual is a that classifies Class of Individuals.Class of Class of Individual is the powertype of Class of Individual.Example:- Property Types such as Temperatures or colors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.608767a668de7fb6 where -- ========== Class of Class of Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.78e382a768ef0daa public -- Second Order Class

ClassOfClassOfIndividual : ThirdOrderClass
ClassOfClassOfIndividual = MetaClass lzero

--  ClassOfClassOfIndividual is subTypeOf SecondOrderClass
st-87d309d966e33aa3 : ClassOfClassOfIndividual ⊏ₑ SecondOrderClass
st-87d309d966e33aa3 = polySubTypeOf-identity

-- == Relationships =======================

{- Super Class of Class of Individual: -}
superClassOfClassOfIndividual :  Linkage ClassOfClassOfIndividual ClassOfClassOfIndividual
superClassOfClassOfIndividual = make_subTypeOf "Super Class of Class of Individual" "superClassOfClassOfIndividual"

postulate -- superClassOfClassOfIndividual is subTypeOf subTypeOfEntity
  st-60876c6168de81be-8336837268e9448b  : superClassOfClassOfIndividual   ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}
