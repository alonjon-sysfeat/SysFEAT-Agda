{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Building Block: 
A Model Building Block is a Building Block used to represent aspects of the reality. It comprises:-  Asset Blocks are used to describe the how the enterprise and its systems operate (function) is their eco-systems.-  Initiatives are used to manage enterprise and systems functional transformations, as well as assurance objectives and activities.-  Governance Instruments are used to ensure that these objectives and activities are understood and fulfilled.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95e566855bed9 where -- ========== Model Building Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

ModelBuildingBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
ModelBuildingBlock u = MixedOrderEntity u

--  ModelBuildingBlock is subTypeOf BuildingBlock
st-0eb95e646855bf13 : ∀ {u v} → (ModelBuildingBlock u) ⊏⋆ₑ (BuildingBlock v)
st-0eb95e646855bf13 = trivialPolySubTypeOfEntity

-- == Relationships =======================
