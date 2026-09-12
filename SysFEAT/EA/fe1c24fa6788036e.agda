{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Asset: 
An Individual Resource Asset is a Functional Asset that describes the way Outcomes are produced and consumed: how (Individual Processes) and by whom (Individual Agents).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c24fa6788036e where -- ========== Individual Resource Asset

open import Agda.Primitive
open import SysFEAT.SOF.9f61cf9166833fb7 public -- Individual Operating Asset
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability

IndividualResourceAsset : ClassOfBoundedIndividual
IndividualResourceAsset = BoundedIndividual

--  IndividualResourceAsset is subTypeOf IndividualOperatingAsset
st-fe1c255f6788049e : IndividualResourceAsset ⊏ₑ IndividualOperatingAsset
st-fe1c255f6788049e = polySubTypeOf-identity

-- == Relationships =======================

{- Exhibited Resource Capability: 
Set of Resource Capabilitys that an Individual Resource Asset exhibits.
-}
exhibitedResourceCapability :  Linkage IndividualResourceAsset ResourceCapability
exhibitedResourceCapability = make_instanceOf "Exhibited Resource Capability" "exhibitedResourceCapability"

postulate -- exhibitedResourceCapability is subTypeOf exhibitedCapability
  st-e44105a768d5bf7a-e44104b768d586bb  : exhibitedResourceCapability   ⊏⋆ᵣ  exhibitedCapability 
