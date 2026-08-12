{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Property Block: 
A Model Property Block is a Building Block used to provide classification and qualification of Model Building Blocks.For instance, Tags are used for classification. Condition Value are used for qualification or quantification.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb97aff6855cd23 where -- ========== Model Property Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

ModelPropertyBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
ModelPropertyBlock u = MixedOrderEntity u

postulate --  ModelPropertyBlock is subTypeOf BuildingBlock
  st-0eb97b056855cd4d : ∀ {u v} → (ModelPropertyBlock u) ⊏⋆ₑ (BuildingBlock v)

-- == Relationships =======================
