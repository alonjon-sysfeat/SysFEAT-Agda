{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Vendor Catalog: 
A Vendor Catalog is a package of resources offered by a Vendor.

Documentation : https://framework.sysfeat.com/pages/81c3ab5a6054f637.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.81c3ab5a6054f637 where -- ========== Vendor Catalog

open import Agda.Primitive
open import SysFEAT.SOF.3aca50c46aa63f3b public -- Reference Dictionary
open import SysFEAT.EA.8d8d242467a32a6f public -- Vendor

VendorCatalog : ClassOfAbstractEntity
VendorCatalog = AbstractEntity


--  VendorCatalog is subTypeOf ReferenceDictionary
st-81c3ab5a6054f637-3aca50c46aa63f3b : VendorCatalog ⊏ₑ ReferenceDictionary
st-81c3ab5a6054f637-3aca50c46aa63f3b = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Provider: -}
provider :  Linkage VendorCatalog Vendor
provider = make_holonymyRelation "Provider" "Provider"

