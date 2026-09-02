{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Endpoint: 
It represents an establishment. It allows to add a geographic location to an organization. This is a minimum requirement to use the organization when documenting a data flow.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.5ef269cd5a2a6de8 where -- ========== Privacy Endpoint

open import Agda.Primitive
open import SysFEAT.EA.7d3786425fd04ea2 public -- Privacy Block
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location

PrivacyEndpoint : ClassOfBoundedIndividual
PrivacyEndpoint = BoundedIndividual

--  PrivacyEndpoint is subTypeOf PrivacyBlock
st-364214b360080a59 : PrivacyEndpoint ⊏ₑ PrivacyBlock
st-364214b360080a59 = polySubTypeOf-identity

-- == Relationships =======================

{- Location: -}
location :  Linkage PrivacyEndpoint Location
location = make_holonymyRelation "Location" "location"

