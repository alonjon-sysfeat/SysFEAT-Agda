{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Portfolio Stage: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24f84973664783b4 where -- ========== Hardware Portfolio Stage

open import Agda.Primitive
open import SysFEAT.EA.24f8475766477e0a public -- Hardware Management Initiative

HardwarePortfolioStage : StateClass
HardwarePortfolioStage = StateConcept


--  HardwarePortfolioStage is subTypeOf HardwareManagementInitiative
st-24f8494e664783af : HardwarePortfolioStage ⊏ₑ HardwareManagementInitiative
st-24f8494e664783af = polySubTypeOf-identity

-- == Relationships =======================
