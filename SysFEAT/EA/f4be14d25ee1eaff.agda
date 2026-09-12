{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Configuration: 
A Resource Configuration is a generic class of System of Resources that represents System of Resources that are not Facilitys.(Data centers, Factories, Outlets).Examples: - Configured Nuclear power plant (with operating teams),  - Configured aircraft carrier (with crew), Configured rescue ship (with rescue team).When specific characteristics need to be considered for a given type of Resource Configuration, it is recommended to create a new sub-type of System of Resources to host these characteristics.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be14d25ee1eaff where -- ========== Resource Configuration

open import Agda.Primitive
open import SysFEAT.EA.f4be11b15ee1e0fa public -- System of Resources

ResourceConfiguration : ClassOfClassOfBoundedIndividual
ResourceConfiguration = ClassOfBoundedIndividual

--  ResourceConfiguration is subTypeOf SystemOfResources
st-f4be14d95ee1ebd8 : ResourceConfiguration ⊏ₑ SystemOfResources
st-f4be14d95ee1ebd8 = polySubTypeOf-identity

-- == Relationships =======================
