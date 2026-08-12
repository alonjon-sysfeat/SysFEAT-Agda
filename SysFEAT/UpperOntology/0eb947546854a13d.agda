{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Container Package: 
A Container Package is a Container which sole purpose is model management.Examples:  Library, Information DictionaryConterexamples: Enterprises or Infrastructure Landscapes are Containers but are not Container Packages because they have functional purposes that go beyond model management.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.0eb947546854a13d where -- ========== Container Package

open import Agda.Primitive
open import SysFEAT.UpperOntology.0eb93b4268549a66 public -- Container
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity

ContainerPackage : FirstOrderClass
ContainerPackage = FirstOrderEntity


postulate --  ContainerPackage withAspect Container
  st-0eb947626854a167 : ContainerPackage ⊏ₐₑ (Container lzero)

postulate --  ContainerPackage is subTypeOf FirstOrderEntity
  st-e2780fbf68f17d72 : ContainerPackage ⊏ₑ FirstOrderEntity

-- == Relationships =======================

{- Sub-Container: 
Nesting Relation that asserts the existence of a given Sub-Container Package in the context of a parent Container Package.
-}
subContainer :  Linkage ContainerPackage ContainerPackage
subContainer = make_nestingRelation "Sub-Container" "subContainer"

postulate -- subContainer is subTypeOf nestingRelation
  st-0eb9824a6855d23d-02a506a968540333  : subContainer   ⊏⋆ᵣ  nestingRelation {lzero} {lzero}
