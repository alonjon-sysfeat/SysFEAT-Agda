{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Property: 
Property is the power instance of Class of Property. All its subtypes are instances of Class of Property such as: - 10 degree celcius;- Ability to cook (a capability);- Red;- 12 kg;-  Top Secret (TS) confidentiality.- 7/7 availability
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.b85efd0868df48b1 where -- ========== Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Class of Property

Property : ClassOfProperty
Property = Individual

postulate --  Property is subTypeOf Individual
  st-d67ee75b68e436d1 : Property ⊏ₑ Individual

-- == Relationships =======================
