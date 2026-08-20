{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Building Block: 
A Building Block is an autonomous Entity that contributes to the makeup of other Building Blocks.Building Blocks can be either reusable entities (packaged in Containers) or be local to the Aggregate Block that references them (see Block Lexical Scope and Hierarchical Member).Examples:- Functionality(ies), Business Process(es), Data Entity(ies), Tags, ARE Building Blocks. - Process Steps or Attributes of a data entity ARE NOT Building Blocks. They are members on an internal structure (see Aggregate Member).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5a9ea68513ced where -- ========== Building Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity

BuildingBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
BuildingBlock u = MixedOrderEntity u

--  BuildingBlock is subTypeOf MixedOrderEntity
st-6bf1a7126859cd3f : ∀ {u v} → (BuildingBlock u) ⊏⋆ₑ (MixedOrderEntity v)
st-6bf1a7126859cd3f = trivialPolySubTypeOfEntity

-- == Relationships =======================
