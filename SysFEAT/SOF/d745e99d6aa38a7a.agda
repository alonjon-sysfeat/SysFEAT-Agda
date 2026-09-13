{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Tag: 
A Tag is a general classification description which permits non formal characterization of Entitys.All Entitys can be tagged.

Documentation : https://framework.sysfeat.com/pages/d745e99d6aa38a7a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d745e99d6aa38a7a where -- ========== Tag

open import Agda.Primitive
open import SysFEAT.SOF.d745e6ea6aa386e5 public -- Annotation Block
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity

Tag : ClassOfIndividual
Tag = Individual

--  Tag is subTypeOf AnnotationBlock
st-d745e9b86aa38b12 : Tag ⊏ₑ AnnotationBlock
st-d745e9b86aa38b12 = polySubTypeOf-identity

--  Tag withAspect ElementaryBlock
st-d745e9b16aa38adf : Tag ⊏ₐₑ (ElementaryBlock lzero)
st-d745e9b16aa38adf = polySubTypeOf-identity

-- == Relationships =======================

{- Tagged Element: -}
taggedElement : ∀ {u} →  Linkage Tag (Entity u)
taggedElement = make_Relation "Tagged Element" "Tagged Element"

