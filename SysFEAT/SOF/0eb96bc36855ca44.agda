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


--  ModelPackage withAspect ModelContainer
st-0eb96bc96855ca70 : ModelPackage ⊏ₐₑ (ModelContainer lzero)
st-0eb96bc96855ca70 = polySubTypeOf-identity

--  ModelPackage is subTypeOf ContainerPackage
st-3346ae766878462c : ModelPackage ⊏ₑ ContainerPackage
st-3346ae766878462c = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Model Package: 
Existential Dependency that asserts the existence of a Model Package in a parent Model Package
-}
parentModelPackage :  Linkage ModelPackage ModelPackage
parentModelPackage = make_Relation "Parent Model Package" "parentModelPackage"

postulate -- parentModelPackage is subTypeOf parentPackage
  st-e7cb000b6a975e4c-e7cbfde76a965b64  : parentModelPackage   ⊏⋆ᵣ  parentPackage 
