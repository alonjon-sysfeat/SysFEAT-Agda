{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Human Agent Category: 
A Human Agent Category is a kind of Resource Agent Type that represents any type of entity with intentionality, decision-making capacity, and the ability to act-whether as an individual person or a collective social unit.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf61506860875a where -- ========== Human Agent Category

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

HumanAgentCategory : ClassOfClassOfBoundedIndividual
HumanAgentCategory = ClassOfBoundedIndividual

postulate --  HumanAgentCategory is subTypeOf ResourceAgentType
  st-ffdf615a686087a1 : HumanAgentCategory ⊏ₑ ResourceAgentType

-- == Relationships =======================
