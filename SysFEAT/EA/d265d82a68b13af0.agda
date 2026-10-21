{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Rule: 


Documentation : https://framework.sysfeat.com/pages/d265d82a68b13af0.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d265d82a68b13af0 where -- ========== Technology Rule

open import Agda.Primitive
open import SysFEAT.SOF.190c74f868966584 public -- Behavioral Rule

TechnologyRule : PropertyType
TechnologyRule = Property

--  TechnologyRule is subTypeOf BehavioralRule
st-d265d82a68b13af0-190c74f868966584 : TechnologyRule ⊏ₑ BehavioralRule
st-d265d82a68b13af0-190c74f868966584 = polySubTypeOf-identity


-- == Relations =======================
