{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployable Package: 
A Deployable Package is a split of Application code and data according to deployment and runtime purposes. 

Documentation : https://framework.sysfeat.com/pages/4c7883cd5fca4d5b.htm

External references:
  C4 Model - Level 2 - Container Diagram: https://c4model.com/#ContainerDiagram
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
st-4c7883cd5fca4d5b-d5e6d8015c464b40 : DeployablePackage ⊏ₑ DeployableSOftwareSystem
st-4c7883cd5fca4d5b-d5e6d8015c464b40 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Required Software Technology: -}
requiredSOftwareTechnology :  Linkage DeployablePackage SOftwareTechnology
requiredSOftwareTechnology = make_classOfHolonymy "Required Software Technology" "Required Software Technology"


-- -------------------------------------------------------------------------------------------- 
{- Specialized Package: -}
specializedPackage :  Linkage DeployablePackage DeployablePackage
specializedPackage = make_subTypeOf "Specialized Package" "Specialized Package"

postulate -- specializedPackage is subTypeOf specializedDeployableSOftware
  st-325a380c66f35025-325a39da66f35441  : specializedPackage  ⊏⋆ᵣ  specializedDeployableSOftware

-- -------------------------------------------------------------------------------------------- 
{- Packaged Application: -}
packagedApplication :  Linkage DeployablePackage Application
packagedApplication = make_subTypeOf "Packaged Application" "Packaged Application"

postulate -- packagedApplication is subTypeOf deployableSOftwareSystem
  st-ca58cc0c684f7487-ca58cad6684f737d  : packagedApplication  ⊏⋆ᵣ  deployableSOftwareSystem
