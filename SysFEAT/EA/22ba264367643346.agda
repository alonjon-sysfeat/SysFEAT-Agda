{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Portfolio Stage: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.22ba264367643346 where -- ========== Technology Portfolio Stage

open import Agda.Primitive
open import SysFEAT.EA.22ba23ea67643262 public -- Technology Management Initiative

TechnologyPortfolioStage : StateClass
TechnologyPortfolioStage = StateConcept


--  TechnologyPortfolioStage is subTypeOf TechnologyManagementInitiative
st-22ba260567643324 : TechnologyPortfolioStage ⊏ₑ TechnologyManagementInitiative
st-22ba260567643324 = polySubTypeOf-identity

-- == Relationships =======================
