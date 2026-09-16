{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concrete Software System: 
A Concrete Software System is a Software System Category that is the concrete implementation of an Business Software System.

Documentation : https://framework.sysfeat.com/pages/24035cc65fc7ad7f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24035cc65fc7ad7f where -- ========== Concrete Software System

open import Agda.Primitive
open import SysFEAT.EA.ffdf5e1f68608352 public -- Software System Category
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.dd27aff168a108b9 public -- Software Technology Capability

ConcreteSOftwareSystem : ClassOfClassOfBoundedIndividual
ConcreteSOftwareSystem = ClassOfBoundedIndividual

--  ConcreteSOftwareSystem is subTypeOf SOftwareSystemCategory
st-24035cc65fc7ad7f-ffdf5e1f68608352 : ConcreteSOftwareSystem ⊏ₑ SOftwareSystemCategory
st-24035cc65fc7ad7f-ffdf5e1f68608352 = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Software System: -}
realizedSOftwareSystem :  Linkage ConcreteSOftwareSystem BusinessSOftwareSystem
realizedSOftwareSystem = make_subTypeOf "Realized Software System" "Realized Software System"


{- Fulfilled Technology Capability: -}
fulfilledTechnologyCapability :  Linkage ConcreteSOftwareSystem SOftwareTechnologyCapability
fulfilledTechnologyCapability = make_subTypeOf "Fulfilled Technology Capability" "Fulfilled Technology Capability"

postulate -- fulfilledTechnologyCapability is subTypeOf fulfilledTechnologyCapability
  st-dd27d12668a11786-dd27b1d668a10d0a  : fulfilledTechnologyCapability   ⊏⋆ᵣ  fulfilledTechnologyCapability 
