{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware System Category: 
A Hardware System Category is a type of physical, material Artifact engineered to produce and consume physical effects.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf60af68608674 where -- ========== Hardware System Category

open import Agda.Primitive
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact
open import SysFEAT.EA.340f52dc686212f5 public -- Physical Resource Agent

HardwareSystemCategory : ClassOfClassOfBoundedIndividual
HardwareSystemCategory = ClassOfBoundedIndividual

postulate --  HardwareSystemCategory is subTypeOf Artifact
  st-ffdf60b9686086bb : HardwareSystemCategory ⊏ₑ Artifact

postulate --  HardwareSystemCategory is subTypeOf PhysicalResourceAgent
  st-340f5377686213d8 : HardwareSystemCategory ⊏ₑ PhysicalResourceAgent

-- == Relationships =======================
