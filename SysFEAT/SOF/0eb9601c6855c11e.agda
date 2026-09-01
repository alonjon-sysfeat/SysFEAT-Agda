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


--  Library is subTypeOf ModelPackage
st-0f6418c268598b03 : Library ⊏ₑ ModelPackage
st-0f6418c268598b03 = polySubTypeOf-identity

--  Library withAspect ArchitectureContainer
st-0eb960326855c14a : Library ⊏ₐₑ (ArchitectureContainer lzero)
st-0eb960326855c14a = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Library: -}
parentLibrary :  Linkage Library Library
parentLibrary = make_Relation "Parent Library" "parentLibrary"

postulate -- parentLibrary is subTypeOf parentModelPackage
  st-e7cb01db6a976047-e7cb000b6a975e4c  : parentLibrary   ⊏⋆ᵣ  parentModelPackage 
