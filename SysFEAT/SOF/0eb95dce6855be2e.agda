{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Container: 
A Model Container is a Container of Model Building Blocks used to describe both the architecture of the enterprise and Initiatives aimed at designing, developing, running, adapting and maintaining this architecture over time.Model Containers range from Information Dictionary(ies), architecture Library(ies) up to an entire Enterprise.

Documentation : https://framework.sysfeat.com/pages/0eb95dce6855be2e.htm

External references:
  OMG - UML - Namespace: https://www.omg.org/spec/UML/2.5.1/PDF#page=69
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95dce6855be2e where -- ========== Model Container

open import Agda.Primitive
open import SysFEAT.SOF.0eb95db46855bdd5 public -- Model Lexical Scope
open import SysFEAT.UpperOntology.0eb93b4268549a66 public -- Container
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.0eb95e566855bed9 public -- Model Building Block
open import SysFEAT.SOF.d745e99d6aa38a7a public -- Tag

ModelContainer : ∀ (u : Level) → ClassOfMixedOrderEntity u
ModelContainer u = MixedOrderEntity u

--  ModelContainer is subTypeOf ModelLexicalScope
st-0eb96a976855c898 : ∀ {u v} → (ModelContainer u) ⊏⋆ₑ (ModelLexicalScope v)
st-0eb96a976855c898 = trivialPolySubTypeOfEntity

--  ModelContainer is subTypeOf Container
st-0eb97c486855cebd : ∀ {u v} → (ModelContainer u) ⊏⋆ₑ (Container v)
st-0eb97c486855cebd = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Packaged Property Block: -}
packagedPropertyBlock : ∀ {u v} →  Linkage (ModelContainer u) (ModelPropertyBlock v)
packagedPropertyBlock = make_nestingRelation "Packaged Property Block" "Packaged Property Block"

postulate -- packagedPropertyBlock is subTypeOf scopedModelBlock
  st-0eb97c566855cef7-0eb96a306855c816  : ∀ {u v} → packagedPropertyBlock {u} {v}  ⊏⋆ᵣ  scopedModelBlock {u} {v}

{- Packaged Model Block: -}
packagedModelBlock : ∀ {u v} →  Linkage (ModelContainer u) (ModelBuildingBlock v)
packagedModelBlock = make_nestingRelation "Packaged Model Block" "Packaged Model Block"

postulate -- packagedModelBlock is subTypeOf packagedBuildingBlock
  st-3346b0ad687846e9-3346a99968784284  : ∀ {u v} → packagedModelBlock {u} {v}  ⊏⋆ᵣ  packagedBuildingBlock {u} {v}
postulate -- packagedModelBlock is subTypeOf scopedModelBlock
  st-3346b0ad687846e9-0eb96a306855c816  : ∀ {u v} → packagedModelBlock {u} {v}  ⊏⋆ᵣ  scopedModelBlock {u} {v}

{- Packaged Tag: -}
packagedTag : ∀ {u} →  Linkage (ModelContainer u) Tag
packagedTag = make_nestingRelation "Packaged Tag" "Packaged Tag"

postulate -- packagedTag is subTypeOf scopedAnnotationBlock
  st-3346c67e68785433-0eb97bc46855ce52  : packagedTag {v}  ⊏⋆ᵣ  scopedAnnotationBlock {v}

{- Imported Model Container: 
The Imported Model Container relationship extends the Model Lexical Scope of a Model Container to Model Building Blocks of the imported Model Container.
-}
importedModelContainer : ∀ {u v} →  Linkage (ModelContainer u) (ModelContainer v)
importedModelContainer = make_Relation "Imported Model Container" "Imported Model Container"

postulate -- importedModelContainer is subTypeOf importedContainer
  st-0eb97ce26855cf57-0eb94b9b6854a563  : ∀ {u v} → importedModelContainer {u} {v}  ⊏⋆ᵣ  importedContainer {u} {v}
