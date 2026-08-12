{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Decision Type: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.366c4dbc675c2776 where -- ========== Architecture Decision Type

open import Agda.Primitive
open import SysFEAT.SOF.366c47e1675c1c07 public -- Decision Type

ArchitectureDecisionType : ThirdOrderClass
ArchitectureDecisionType = SecondOrderClass

postulate --  ArchitectureDecisionType is subTypeOf DecisionType
  st-366c4dc1675c27bb : ArchitectureDecisionType ⊏ₑ DecisionType

-- == Relationships =======================
