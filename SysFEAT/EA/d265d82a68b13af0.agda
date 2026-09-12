{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Rule: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d265d82a68b13af0 where -- ========== Technology Rule

open import Agda.Primitive
open import SysFEAT.SOF.190c74f868966584 public -- Behavioral Rule

TechnologyRule : PropertyType
TechnologyRule = ClassOfProperty

--  TechnologyRule is subTypeOf BehavioralRule
st-97889f5866176346 : TechnologyRule ⊏ₑ BehavioralRule
st-97889f5866176346 = polySubTypeOf-identity

-- == Relationships =======================
