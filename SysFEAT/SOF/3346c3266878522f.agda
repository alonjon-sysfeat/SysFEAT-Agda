{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Tag: 
A Tag is a general classification description which permits non formal characterization of Entitys.All Entitys can be tagged.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3346c3266878522f where -- ========== Tag

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
open import SysFEAT.SOF.0eb97ada6855ccb4 public -- Annotation Block
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity

Tag : FirstOrderClass
Tag = FirstOrderEntity


--  Tag withAspect ElementaryBlock
st-fb5907d669445d73 : Tag ⊏ₐₑ (ElementaryBlock lzero)
st-fb5907d669445d73 = polySubTypeOf-identity

--  Tag is subTypeOf AnnotationBlock
st-3346c34068785295 : Tag ⊏ₑ AnnotationBlock
st-3346c34068785295 = polySubTypeOf-identity

-- == Relationships =======================

{- Tagged Element: -}
taggedElement : ∀ {u} →  Linkage Tag (Entity u)
taggedElement = make_Relation "Tagged Element" "taggedElement"

postulate -- taggedElement is subTypeOf annotedElement
  st-3346c41a6878530e-3346b23668784855  : taggedElement  {lzero}  ⊏⋆ᵣ  annotedElement  {lzero}
