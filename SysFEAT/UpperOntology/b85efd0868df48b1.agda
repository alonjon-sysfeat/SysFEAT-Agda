{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Property Value: 
Property Value is the power instance of Property. All its subtypes are instances of Property such as: - 10 degree celcius;- Ability to cook (a capability);- Red;- 12 kg;-  Top Secret (TS) confidentiality.- 7/7 availability
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.b85efd0868df48b1 where -- ========== Property Value

open import Agda.Primitive
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property

PropertyValue : ClassOfProperty
PropertyValue = Individual

--  PropertyValue is subTypeOf Individual
st-d67ee75b68e436d1 : PropertyValue ⊏ₑ Individual
st-d67ee75b68e436d1 = polySubTypeOf-identity

--  PropertyValue withAspect BuildingBlock
st-96581db06993059e : PropertyValue ⊏ₐₑ (BuildingBlock lzero)
st-96581db06993059e = polySubTypeOf-identity

-- == Relationships =======================
