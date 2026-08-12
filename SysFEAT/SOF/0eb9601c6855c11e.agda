{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Library: 
A Library is a kind of Architecture Container used to group Asset Blocks into several independent modules (aka package).They allow virtual partitions of model repositories used for model management. In particular, Asset Blocks owned by different Library(ies) can have the same name (namespacing).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb9601c6855c11e where -- ========== Library

open import Agda.Primitive
open import SysFEAT.SOF.0eb96bc36855ca44 public -- Model Package
open import SysFEAT.SOF.0eb95f1b6855bf64 public -- Architecture Container

Library : FirstOrderClass
Library = FirstOrderEntity


postulate --  Library is subTypeOf ModelPackage
  st-0f6418c268598b03 : Library ⊏ₑ ModelPackage

postulate --  Library withAspect ArchitectureContainer
  st-0eb960326855c14a : Library ⊏ₐₑ (ArchitectureContainer lzero)

-- == Relationships =======================

{- Sub-Library: -}
subLibrary :  Linkage Library Library
subLibrary = make_nestingRelation "Sub-Library" "subLibrary"

postulate -- subLibrary is subTypeOf includedArchitectureDictionary
  st-0f64228e685999f8-0f6416aa685987e1  : subLibrary   ⊏⋆ᵣ  includedArchitectureDictionary {lzero} {lzero}
