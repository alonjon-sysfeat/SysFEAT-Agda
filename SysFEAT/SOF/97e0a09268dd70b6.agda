{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Decision Type: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.97e0a09268dd70b6 where -- ========== Policy Decision Type

open import Agda.Primitive
open import SysFEAT.SOF.366c47e1675c1c07 public -- Decision Type

PolicyDecisionType : ThirdOrderClass
PolicyDecisionType = SecondOrderClass

postulate --  PolicyDecisionType is subTypeOf DecisionType
  st-97e0a09968dd70fd : PolicyDecisionType ⊏ₑ DecisionType

-- == Relationships =======================
