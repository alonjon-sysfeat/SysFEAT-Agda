{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Annotation Block: 
An Annotation Block is a Building Block used to provide additional characteristics such as Documentations,Examples:. Description Note.. Tag.

Documentation : https://framework.sysfeat.com/pages/d745e6ea6aa386e5.htm

External references:
  OMG - KerML - AnnotatingElement: https://www.omg.org/spec/KerML/1.0/PDF#page=252
  WordNet - Annotation: https://en-word.net/ili/i72033
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d745e6ea6aa386e5 where -- ========== Annotation Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.5425a2df6aa225cf public -- First Order Entity
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
open import SysFEAT.UpperOntology.23d5249e68510ff9 public -- Element

AnnotationBlock : ClassOfIndividual
AnnotationBlock = Individual

--  AnnotationBlock is subTypeOf FirstOrderEntity
st-d745ec016aa38d7a : AnnotationBlock ⊏ₑ FirstOrderEntity
st-d745ec016aa38d7a = polySubTypeOf-identity

--  AnnotationBlock withAspect BuildingBlock
st-d745e7256aa3877d : AnnotationBlock ⊏ₐₑ (BuildingBlock lzero)
st-d745e7256aa3877d = polySubTypeOf-identity

-- == Relationships =======================

{- Annoted Element: -}
annotedElement : ∀ {u} →  Linkage AnnotationBlock (Element u)
annotedElement = make_Relation "Annoted Element" "Annoted Element"

postulate -- annotedElement is subTypeOf referenceRelation
  st-3346b23668784855-23d5398f68511bc1  : annotedElement  {lzero}  ⊏⋆ᵣ  referenceRelation {lzero} {lzero}
postulate -- annotedElement is subTypeOf existentialDependency
  st-3346b23668784855-cbfce7da685358e9  : annotedElement  {lzero}  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
