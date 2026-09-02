{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Natural Resource: 
An Individual Natural Resource is an Individual Business Agent that refers to any material or substance that occurs naturally in the environment and can be used by humans for various purposes. These resources are derived from the Earth and include a wide range of physical entities such as water, minerals, forests, fossil fuels, soil, and air. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a3bc867858386 where -- ========== Individual Natural Resource

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.3b1bb56c68cd9bfa public -- Individual Physical Resource Agent
open import SysFEAT.EA.861987db6372446e public -- Natural Resource Category

IndividualNaturalResource : ClassOfBoundedIndividual
IndividualNaturalResource = BoundedIndividual

--  IndividualNaturalResource is subTypeOf IndividualResourceAgent
st-3b1b907f68cd8302 : IndividualNaturalResource ⊏ₑ IndividualResourceAgent
st-3b1b907f68cd8302 = polySubTypeOf-identity

--  IndividualNaturalResource is subTypeOf IndividualPhysicalResourceAgent
st-3b1bb7ce68cd9f2d : IndividualNaturalResource ⊏ₑ IndividualPhysicalResourceAgent
st-3b1bb7ce68cd9f2d = polySubTypeOf-identity

-- == Relationships =======================
