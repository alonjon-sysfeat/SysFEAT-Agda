{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Management Initiative: 


Documentation : https://framework.sysfeat.com/pages/22ba23ea67643262.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.22ba23ea67643262 where -- ========== Technology Management Initiative

open import Agda.Primitive
open import SysFEAT.EA.05201bc866475765 public -- Asset Management Initiative

TechnologyManagementInitiative : ClassOfBoundedIndividual
TechnologyManagementInitiative = BoundedIndividual


--  TechnologyManagementInitiative is subTypeOf AssetManagementInitiative
st-22ba23ea67643262-05201bc866475765 : TechnologyManagementInitiative ⊏ₑ AssetManagementInitiative
st-22ba23ea67643262-05201bc866475765 = polySubTypeOf-identity


-- == Relations =======================
