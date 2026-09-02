{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Vendor Catalog: 
A Vendor Catalog is a package of resources offered by a Vendor.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.81c3ab5a6054f637 where -- ========== Vendor Catalog

open import Agda.Primitive
open import SysFEAT.SOF.0f6418e568598b38 public -- Reference Dictionary
open import SysFEAT.EA.8d8d242467a32a6f public -- Vendor

VendorCatalog : ClassOfBoundedIndividual
VendorCatalog = BoundedIndividual

--  VendorCatalog is subTypeOf ReferenceDictionary
st-81c3ab746054f6a1 : VendorCatalog ⊏ₑ ReferenceDictionary
st-81c3ab746054f6a1 = polySubTypeOf-identity

-- == Relationships =======================

{- Provider: -}
provider :  Linkage VendorCatalog Vendor
provider = make_holonymyRelation "Provider" "provider"

