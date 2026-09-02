{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Portfolio Stage: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.052015c666474dfe where -- ========== Application Portfolio Stage

open import Agda.Primitive
open import SysFEAT.EA.0520133e66474954 public -- Asset Portfolio Stage
open import SysFEAT.EA.24f82e8c66475e9c public -- Application Management Initiative

ApplicationPortfolioStage : StateClass
ApplicationPortfolioStage = StateConcept


--  ApplicationPortfolioStage is subTypeOf AssetPortfolioStage
st-052015cf66474e52 : ApplicationPortfolioStage ⊏ₑ AssetPortfolioStage
st-052015cf66474e52 = polySubTypeOf-identity

--  ApplicationPortfolioStage is subTypeOf ApplicationManagementInitiative
st-052015a866474dfb : ApplicationPortfolioStage ⊏ₑ ApplicationManagementInitiative
st-052015a866474dfb = polySubTypeOf-identity

-- == Relationships =======================
