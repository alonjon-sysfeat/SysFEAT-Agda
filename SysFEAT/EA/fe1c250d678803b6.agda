{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Behavior: 


Documentation : https://framework.sysfeat.com/pages/fe1c250d678803b6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c250d678803b6 where -- ========== Individual Resource Behavior

open import Agda.Primitive
open import SysFEAT.EA.fe1c24fa6788036e public -- Individual Resource Asset
open import SysFEAT.SOF.e9af119866e86785 public -- Individual Behavior

IndividualResourceBehavior : ClassOfBoundedIndividual
IndividualResourceBehavior = BoundedIndividual


--  IndividualResourceBehavior is subTypeOf IndividualResourceAsset
st-fe1c250d678803b6-fe1c24fa6788036e : IndividualResourceBehavior ⊏ₑ IndividualResourceAsset
st-fe1c250d678803b6-fe1c24fa6788036e = polySubTypeOf-identity

--  IndividualResourceBehavior is subTypeOf IndividualBehavior
st-fe1c250d678803b6-e9af119866e86785 : IndividualResourceBehavior ⊏ₑ IndividualBehavior
st-fe1c250d678803b6-e9af119866e86785 = polySubTypeOf-identity


-- == Relations =======================
