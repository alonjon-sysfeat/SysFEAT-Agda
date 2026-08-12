{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Behavior: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c250d678803b6 where -- ========== Individual Resource Behavior

open import Agda.Primitive
open import SysFEAT.EA.fe1c24fa6788036e public -- Individual Resource Asset
open import SysFEAT.SOF.e9af119866e86785 public -- Individual Behavior

IndividualResourceBehavior : ClassOfBoundedIndividual
IndividualResourceBehavior = BoundedIndividual

postulate --  IndividualResourceBehavior is subTypeOf IndividualResourceAsset
  st-fe1c27c6678807f1 : IndividualResourceBehavior ⊏ₑ IndividualResourceAsset

postulate --  IndividualResourceBehavior is subTypeOf IndividualBehavior
  st-fe1c25bf67880591 : IndividualResourceBehavior ⊏ₑ IndividualBehavior

-- == Relationships =======================
