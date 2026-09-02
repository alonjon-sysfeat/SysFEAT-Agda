{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Facility: 
A Facility is a class of System of Resources that represents the physical infrastructure (e.g., buildings, plants, warehouses, offices, or laboratories) that houses personnel, equipment, and processes, enabling enterprises activities.Examples: - Data Center- Factory- Outlet- Outdoors construction
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be0e865ee1d53b where -- ========== Facility

open import Agda.Primitive
open import SysFEAT.EA.f4be11b15ee1e0fa public -- System of Resources

Facility : ClassOfClassOfBoundedIndividual
Facility = ClassOfBoundedIndividual

--  Facility is subTypeOf SystemOfResources
st-f4be14be5ee1eab0 : Facility ⊏ₑ SystemOfResources
st-f4be14be5ee1eab0 = polySubTypeOf-identity

-- == Relationships =======================
