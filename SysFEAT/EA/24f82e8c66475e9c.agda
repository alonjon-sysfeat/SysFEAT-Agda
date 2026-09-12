{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Management Initiative: 
An Asset Management Initiative is a Management Initiative aimed at developing and maintaining in operational conditions a set of Resource Operating Assets delivering functionalities required by Business Operations.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24f82e8c66475e9c where -- ========== Application Management Initiative

open import Agda.Primitive
open import SysFEAT.EA.05201bc866475765 public -- Asset Management Initiative
open import SysFEAT.EA.dd26389d68a071f0 public -- Functionality Map

ApplicationManagementInitiative : ClassOfBoundedIndividual
ApplicationManagementInitiative = BoundedIndividual

--  ApplicationManagementInitiative is subTypeOf AssetManagementInitiative
st-24f82ebc66475f13 : ApplicationManagementInitiative ⊏ₑ AssetManagementInitiative
st-24f82ebc66475f13 = polySubTypeOf-identity

-- == Relationships =======================

{- Functional Scope: -}
functionalScope :  Linkage ApplicationManagementInitiative FunctionalityMap
functionalScope = make_instanceOf "Functional Scope" "functionalScope"

