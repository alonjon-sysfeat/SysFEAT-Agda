{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployable Package: 
A Deployable Package is a split of Application code and data according to deployment and runtime purposes. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4c7883cd5fca4d5b where -- ========== Deployable Package

open import Agda.Primitive
open import SysFEAT.EA.d5e6d8015c464b40 public -- Deployable Software System
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology
open import SysFEAT.EA.bcebd8e9549144db public -- Application

DeployablePackage : ClassOfClassOfBoundedIndividual
DeployablePackage = ClassOfBoundedIndividual

--  DeployablePackage is subTypeOf DeployableSOftwareSystem
st-4c7883d45fca4dc5 : DeployablePackage ⊏ₑ DeployableSOftwareSystem
st-4c7883d45fca4dc5 = polySubTypeOf-identity

-- == Relationships =======================

{- Required Software Technology: -}
requiredSOftwareTechnology :  Linkage DeployablePackage SOftwareTechnology
requiredSOftwareTechnology = make_classOfHolonymy "Required Software Technology" "requiredSOftwareTechnology"


{- Specialized Package: -}
specializedPackage :  Linkage DeployablePackage DeployablePackage
specializedPackage = make_subTypeOf "Specialized Package" "specializedPackage"

postulate -- specializedPackage is subTypeOf specializedDeployableSOftware
  st-325a380c66f35025-325a39da66f35441  : specializedPackage   ⊏⋆ᵣ  specializedDeployableSOftware 

{- Packaged Application: -}
packagedApplication :  Linkage DeployablePackage Application
packagedApplication = make_subTypeOf "Packaged Application" "packagedApplication"

postulate -- packagedApplication is subTypeOf deployableSOftwareSystem
  st-ca58cc0c684f7487-ca58cad6684f737d  : packagedApplication   ⊏⋆ᵣ  deployableSOftwareSystem 
