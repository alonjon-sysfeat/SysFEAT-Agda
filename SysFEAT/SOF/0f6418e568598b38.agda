{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Reference Dictionary: 
A Reference Dictionary is a kind of Architecture Container that is used as a reference library to hold reference materials used to develop architectures.Example:- Vendor Catalog- Regulatory Framework- 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0f6418e568598b38 where -- ========== Reference Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.0eb96bc36855ca44 public -- Model Package
open import SysFEAT.SOF.0eb95f1b6855bf64 public -- Architecture Container

ReferenceDictionary : FirstOrderClass
ReferenceDictionary = FirstOrderEntity


postulate --  ReferenceDictionary is subTypeOf ModelPackage
  st-0f6418f168598b8d : ReferenceDictionary ⊏ₑ ModelPackage

postulate --  ReferenceDictionary withAspect ArchitectureContainer
  st-0f64190268598bc7 : ReferenceDictionary ⊏ₐₑ (ArchitectureContainer lzero)

-- == Relationships =======================
