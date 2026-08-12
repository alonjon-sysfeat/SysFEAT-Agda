{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Container: 
A Model Container is a Container of Model Building Blocks used to describe both the architecture of the enterprise and Initiatives aimed at designing, developing, running, adapting and maintaining this architecture over time.Model Containers range from Information Dictionary(ies), architecture Library(ies) up to an entire Enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95dce6855be2e where -- ========== Model Container

open import Agda.Primitive
open import SysFEAT.SOF.0eb95db46855bdd5 public -- Model Lexical Scope
open import SysFEAT.UpperOntology.0eb93b4268549a66 public -- Container
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.0eb95e566855bed9 public -- Model Building Block
open import SysFEAT.SOF.3346b1c668784780 public -- Documentation
open import SysFEAT.SOF.3346c3266878522f public -- Tag

ModelContainer : ∀ (u : Level) → ClassOfMixedOrderEntity u
ModelContainer u = MixedOrderEntity u

postulate --  ModelContainer is subTypeOf ModelLexicalScope
  st-0eb96a976855c898 : ∀ {u v} → (ModelContainer u) ⊏⋆ₑ (ModelLexicalScope v)

postulate --  ModelContainer is subTypeOf Container
  st-0eb97c486855cebd : ∀ {u v} → (ModelContainer u) ⊏⋆ₑ (Container v)

-- == Relationships =======================

{- Packaged Property Block: -}
packagedPropertyBlock : ∀ {u v} →  Linkage (ModelContainer u) (ModelPropertyBlock v)
packagedPropertyBlock = make_nestingRelation "Packaged Property Block" "packagedPropertyBlock"

postulate -- packagedPropertyBlock is subTypeOf scopedModelBlock
  st-0eb97c566855cef7-0eb96a306855c816  : ∀ {u v} → packagedPropertyBlock {u} {v}  ⊏⋆ᵣ  scopedModelBlock {u} {v}

{- Packaged Model Block: -}
packagedModelBlock : ∀ {u v} →  Linkage (ModelContainer u) (ModelBuildingBlock v)
packagedModelBlock = make_nestingRelation "Packaged Model Block" "packagedModelBlock"

postulate -- packagedModelBlock is subTypeOf packagedBuildingBlock
  st-3346b0ad687846e9-3346a99968784284  : ∀ {u v} → packagedModelBlock {u} {v}  ⊏⋆ᵣ  packagedBuildingBlock {u} {v}
postulate -- packagedModelBlock is subTypeOf scopedModelBlock
  st-3346b0ad687846e9-0eb96a306855c816  : ∀ {u v} → packagedModelBlock {u} {v}  ⊏⋆ᵣ  scopedModelBlock {u} {v}

{- Packaged Documentation: -}
packagedDocumentation : ∀ {u} →  Linkage (ModelContainer u) Documentation
packagedDocumentation = make_nestingRelation "Packaged Documentation" "packagedDocumentation"

postulate -- packagedDocumentation is subTypeOf scopedAnnotationBlock
  st-3346bc0568784d28-0eb97bc46855ce52  : packagedDocumentation {v}  ⊏⋆ᵣ  scopedAnnotationBlock {v}

{- Packaged Tag: -}
packagedTag : ∀ {u} →  Linkage (ModelContainer u) Tag
packagedTag = make_nestingRelation "Packaged Tag" "packagedTag"

postulate -- packagedTag is subTypeOf scopedAnnotationBlock
  st-3346c67e68785433-0eb97bc46855ce52  : packagedTag {v}  ⊏⋆ᵣ  scopedAnnotationBlock {v}

{- Imported Model Container: 
The Imported Model Container relationship extends the Model Lexical Scope of a Model Container to Model Building Blocks of the imported Model Container.
-}
importedModelContainer : ∀ {u v} →  Linkage (ModelContainer u) (ModelContainer v)
importedModelContainer = make_Relation "Imported Model Container" "importedModelContainer"

postulate -- importedModelContainer is subTypeOf importedContainer
  st-0eb97ce26855cf57-0eb94b9b6854a563  : ∀ {u v} → importedModelContainer {u} {v}  ⊏⋆ᵣ  importedContainer {u} {v}
