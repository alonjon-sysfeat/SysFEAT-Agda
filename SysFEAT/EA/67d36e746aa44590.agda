{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Term: 
A Term is word or expression used to designate a Conceptual Element.

Documentation : https://framework.sysfeat.com/pages/67d36e746aa44590.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d36e746aa44590 where -- ========== Term

open import Agda.Primitive
open import SysFEAT.UpperOntology.c463c6106aa23c35 public -- First Order Class

Term : ClassOfClassOfIndividual
Term = ClassOfIndividual

--  Term is subTypeOf FirstOrderClass
st-67d36e746aa44590-c463c6106aa23c35 : Term ⊏ₑ FirstOrderClass
st-67d36e746aa44590-c463c6106aa23c35 = polySubTypeOf-identity


