{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Documentation: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3346b1c668784780 where -- ========== Documentation

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
open import SysFEAT.SOF.0eb97ada6855ccb4 public -- Annotation Block
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

Documentation : FirstOrderClass
Documentation = FirstOrderEntity


--  Documentation withAspect ElementaryBlock
st-fb59081369445da0 : Documentation ⊏ₐₑ (ElementaryBlock lzero)
st-fb59081369445da0 = polySubTypeOf-identity

--  Documentation is subTypeOf AnnotationBlock
st-3346b1d6687847c7 : Documentation ⊏ₑ AnnotationBlock
st-3346b1d6687847c7 = polySubTypeOf-identity

-- == Relationships =======================

{- Documented Block: -}
documentedBlock : ∀ {u} →  Linkage Documentation (BuildingBlock u)
documentedBlock = make_Relation "Documented Block" "documentedBlock"

postulate -- documentedBlock is subTypeOf annotedElement
  st-3346be6a68784eee-3346b23668784855  : documentedBlock  {lzero}  ⊏⋆ᵣ  annotedElement  {lzero}
