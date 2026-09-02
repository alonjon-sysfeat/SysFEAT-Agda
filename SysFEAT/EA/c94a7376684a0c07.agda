{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operational Asset: 
A Resource Operational Asset is a kind of Resource Operating Asset (agent or behavior) that is involved in core operations, as distinct from Resource Operating Assets that govern their security and reliability (Control Measures).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c94a7376684a0c07 where -- ========== Resource Operational Asset

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset

ResourceOperationalAsset : ClassOfClassOfBoundedIndividual
ResourceOperationalAsset = ClassOfBoundedIndividual

--  ResourceOperationalAsset is subTypeOf ResourceOperatingAsset
st-c94a73a0684a0c5b : ResourceOperationalAsset ⊏ₑ ResourceOperatingAsset
st-c94a73a0684a0c5b = polySubTypeOf-identity

-- == Relationships =======================
