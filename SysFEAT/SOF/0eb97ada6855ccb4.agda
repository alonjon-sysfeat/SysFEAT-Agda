{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Annotation Block: 
An Annotation Block is a Building Block used to provide additional characteristics such as Documentations,Examples: Description Notes .Tags.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb97ada6855ccb4 where -- ========== Annotation Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity
open import SysFEAT.UpperOntology.23d5249e68510ff9 public -- Element

AnnotationBlock : FirstOrderClass
AnnotationBlock = FirstOrderEntity


--  AnnotationBlock withAspect BuildingBlock
st-0eb97ae96855ccf8 : AnnotationBlock ⊏ₐₑ (BuildingBlock lzero)
st-0eb97ae96855ccf8 = polySubTypeOf-identity

--  AnnotationBlock is subTypeOf FirstOrderEntity
st-da29e2ed69d4782b : AnnotationBlock ⊏ₑ FirstOrderEntity
st-da29e2ed69d4782b = polySubTypeOf-identity

-- == Relationships =======================

{- Annoted Element: -}
annotedElement : ∀ {u} →  Linkage AnnotationBlock (Element u)
annotedElement = make_Relation "Annoted Element" "annotedElement"

postulate -- annotedElement is subTypeOf referenceRelation
  st-3346b23668784855-23d5398f68511bc1  : annotedElement  {lzero}  ⊏⋆ᵣ  referenceRelation {lzero} {lzero}
postulate -- annotedElement is subTypeOf existentialDependency
  st-3346b23668784855-cbfce7da685358e9  : annotedElement  {lzero}  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
