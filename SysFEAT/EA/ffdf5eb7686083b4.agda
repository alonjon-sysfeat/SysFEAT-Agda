{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Artifact: 
An Artifact is a man made  Resource Agent Type that can actively participate to Resource Behaviors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf5eb7686083b4 where -- ========== Artifact

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

Artifact : ClassOfClassOfBoundedIndividual
Artifact = ClassOfBoundedIndividual

postulate --  Artifact is subTypeOf ResourceAgentType
  st-ffdf607b68608649 : Artifact ⊏ₑ ResourceAgentType

-- == Relationships =======================
