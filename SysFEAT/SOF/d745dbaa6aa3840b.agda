{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Package: 
A Model Package is a Container Package that packages Model Building Blocks.

Documentation : https://framework.sysfeat.com/pages/d745dbaa6aa3840b.htm

External references:
  OMG - UML - Package: https://www.omg.org/spec/UML/2.5.1/PDF#page=283
  OMG - KerML - LibraryPackage: https://www.omg.org/spec/KerML/1.0/PDF#page=238
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d745dbaa6aa3840b where -- ========== Model Package

open import Agda.Primitive
open import SysFEAT.UpperOntology.542599db6aa21e06 public -- Container Package
open import SysFEAT.SOF.0eb95dce6855be2e public -- Model Container

ModelPackage : ClassOfIndividual
ModelPackage = Individual

--  ModelPackage is subTypeOf ContainerPackage
st-d745e6006aa385be : ModelPackage ⊏ₑ ContainerPackage
st-d745e6006aa385be = polySubTypeOf-identity

--  ModelPackage withAspect ModelContainer
st-d745dbfb6aa384b4 : ModelPackage ⊏ₐₑ (ModelContainer lzero)
st-d745dbfb6aa384b4 = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Model Package: 
Existential Dependency that asserts the existence of a Model Package in a parent Model Package.
-}
parentModelPackage :  Linkage ModelPackage ModelPackage
parentModelPackage = make_Relation "Model Package Basing" "Parent Model Package"

postulate -- parentModelPackage is subTypeOf parentPackage
  st-e7cb000b6a975e4c-e7cbfde76a965b64  : parentModelPackage   ⊏⋆ᵣ  parentPackage 
