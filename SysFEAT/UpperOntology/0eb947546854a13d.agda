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


--  ContainerPackage withAspect Container
st-0eb947626854a167 : ContainerPackage ⊏ₐₑ (Container lzero)
st-0eb947626854a167 = polySubTypeOf-identity

--  ContainerPackage is subTypeOf FirstOrderEntity
st-e2780fbf68f17d72 : ContainerPackage ⊏ₑ FirstOrderEntity
st-e2780fbf68f17d72 = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Package: 
Existential Dependency that asserts the existence of a Container Package in a Parent Package.
-}
parentPackage :  Linkage ContainerPackage ContainerPackage
parentPackage = make_Relation "Container Basing" "Parent Package"

postulate -- parentPackage is subTypeOf referenceRelation
  st-e7cbfde76a965b64-23d5398f68511bc1  : parentPackage   ⊏⋆ᵣ  referenceRelation {lzero} {lzero}
postulate -- parentPackage is subTypeOf existentialDependency
  st-e7cbfde76a965b64-cbfce7da685358e9  : parentPackage   ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
