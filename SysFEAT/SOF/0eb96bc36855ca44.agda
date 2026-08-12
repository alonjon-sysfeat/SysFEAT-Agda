{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Package: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb96bc36855ca44 where -- ========== Model Package

open import Agda.Primitive
open import SysFEAT.SOF.0eb95dce6855be2e public -- Model Container
open import SysFEAT.UpperOntology.0eb947546854a13d public -- Container Package

ModelPackage : FirstOrderClass
ModelPackage = FirstOrderEntity


postulate --  ModelPackage withAspect ModelContainer
  st-0eb96bc96855ca70 : ModelPackage ⊏ₐₑ (ModelContainer lzero)

postulate --  ModelPackage is subTypeOf ContainerPackage
  st-3346ae766878462c : ModelPackage ⊏ₑ ContainerPackage

-- == Relationships =======================

{- Sub Model Package: -}
subModelPackage :  Linkage ModelPackage ModelPackage
subModelPackage = make_nestingRelation "Sub Model Package" "subModelPackage"

postulate -- subModelPackage is subTypeOf subContainer
  st-0eb96c446855cb6c-0eb9824a6855d23d  : subModelPackage   ⊏⋆ᵣ  subContainer 
