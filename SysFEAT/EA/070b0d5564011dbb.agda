{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Networking System: 
A Networking System is a Technology System that provides networking capabilities offered through Network Interfaces.

Documentation : https://framework.sysfeat.com/pages/070b0d5564011dbb.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.070b0d5564011dbb where -- ========== Networking System

open import Agda.Primitive
open import SysFEAT.EA.26b8384f5eeae33c public -- Networking System
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System

NetworkingSystem : ClassOfClassOfBoundedIndividual
NetworkingSystem = ClassOfBoundedIndividual


--  NetworkingSystem is subTypeOf NetworkingSystem
st-070b0d5564011dbb-26b8384f5eeae33c : NetworkingSystem ⊏ₑ NetworkingSystem
st-070b0d5564011dbb-26b8384f5eeae33c = polySubTypeOf-identity

--  NetworkingSystem is subTypeOf TechnologySystem
st-070b0d5564011dbb-0cbd1fa663fe18ac : NetworkingSystem ⊏ₑ TechnologySystem
st-070b0d5564011dbb-0cbd1fa663fe18ac = polySubTypeOf-identity


-- == Relations =======================
