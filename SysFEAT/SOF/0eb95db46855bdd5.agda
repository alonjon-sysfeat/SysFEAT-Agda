{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Lexical Scope: 
A Model Lexical Scope is Block Lexical Scope for Model Building Blocks.It also adds the ability to nest Annotation Blocks.

Documentation : https://framework.sysfeat.com/pages/0eb95db46855bdd5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95db46855bdd5 where -- ========== Model Lexical Scope

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c494685141b5 public -- Block Lexical Scope
open import SysFEAT.SOF.0eb95e566855bed9 public -- Model Building Block
open import SysFEAT.SOF.d745e6ea6aa386e5 public -- Annotation Block
open import SysFEAT.SOF.d745e8936aa388e0 public -- Description Note

ModelLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u
ModelLexicalScope u = MixedOrderEntity u

--  ModelLexicalScope is subTypeOf BlockLexicalScope
st-0eb95e126855be7d : ∀ {u v} → (ModelLexicalScope u) ⊏⋆ₑ (BlockLexicalScope v)
st-0eb95e126855be7d = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Scoped Model Block: -}
scopedModelBlock : ∀ {u v} →  Linkage (ModelLexicalScope u) (ModelBuildingBlock v)
scopedModelBlock = make_nestingRelation "Scoped Model Block" "Scoped Model Block"

postulate -- scopedModelBlock is subTypeOf scopedBuildingBlock
  st-0eb96a306855c816-0eb946496854a02e  : ∀ {u v} → scopedModelBlock {u} {v}  ⊏⋆ᵣ  scopedBuildingBlock {u} {v}

{- Scoped Annotation Block: 
Nesting of Annotation Blocks within a Model Lexical Scope.
-}
scopedAnnotationBlock : ∀ {u} →  Linkage (ModelLexicalScope u) AnnotationBlock
scopedAnnotationBlock = make_nestingRelation "Scoped Annotation Block" "Scoped Annotation Block"

postulate -- scopedAnnotationBlock is subTypeOf scopedBuildingBlock
  st-0eb97bc46855ce52-0eb946496854a02e  : scopedAnnotationBlock {u}  ⊏⋆ᵣ  scopedBuildingBlock {u} {v}

{- Nested Description Note: -}
nestedDescriptionNote : ∀ {u} →  Linkage (ModelLexicalScope u) DescriptionNote
nestedDescriptionNote = make_nestingRelation "Nested Description Note" "Nested Description Note"

postulate -- nestedDescriptionNote is subTypeOf scopedAnnotationBlock
  st-3346bde868784e38-0eb97bc46855ce52  : nestedDescriptionNote {v}  ⊏⋆ᵣ  scopedAnnotationBlock {v}
