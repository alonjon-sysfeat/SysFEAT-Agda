{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Reference Dictionary: 
A Reference Dictionary is a kind of Architecture Container that is used as a reference library to hold reference materials used to develop architectures.Example:- Vendor Catalog- Regulatory Framework- 

Documentation : https://framework.sysfeat.com/pages/0f6418e568598b38.htm

External references:
  OpenGroup - TOGAF - Method - Reference Libraries: https://pubs.opengroup.org/togaf-standard/architecture-content/chap07.html#tag_07_03
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0f6418e568598b38 where -- ========== Reference Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.d745dbaa6aa3840b public -- Model Package
open import SysFEAT.SOF.0eb95f1b6855bf64 public -- Architecture Container

ReferenceDictionary : ∀ (u : Level) → ClassOfMixedOrderEntity u
ReferenceDictionary u = MixedOrderEntity u

--  ReferenceDictionary is subTypeOf ModelPackage
st-0f6418f168598b8d : ∀ {u} → (ReferenceDictionary u) ⊏ₘₑ ModelPackage
st-0f6418f168598b8d = polySubTypeOf-identity

--  ReferenceDictionary is subTypeOf ArchitectureContainer
st-0f64190268598bc7 : ∀ {u v} → (ReferenceDictionary u) ⊏⋆ₑ (ArchitectureContainer v)
st-0f64190268598bc7 = trivialPolySubTypeOfEntity

-- == Relationships =======================
