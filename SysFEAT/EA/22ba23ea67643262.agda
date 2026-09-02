{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Management Initiative: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.22ba23ea67643262 where -- ========== Technology Management Initiative

open import Agda.Primitive
open import SysFEAT.EA.05201bc866475765 public -- Asset Management Initiative

TechnologyManagementInitiative : ClassOfBoundedIndividual
TechnologyManagementInitiative = BoundedIndividual

--  TechnologyManagementInitiative is subTypeOf AssetManagementInitiative
st-22ba292367643641 : TechnologyManagementInitiative ⊏ₑ AssetManagementInitiative
st-22ba292367643641 = polySubTypeOf-identity

-- == Relationships =======================
