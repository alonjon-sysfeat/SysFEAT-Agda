{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Block Collection: 
An Architecture Block Collection is a collection of Asset Blocks usually created for model management purposes, such as validating or sharing a set of Asset Blocks.

Documentation : https://framework.sysfeat.com/pages/0eb960766855c180.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb960766855c180 where -- ========== Architecture Block Collection

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5aa4868513f43 public -- Block Collection
open import SysFEAT.UpperOntology.5425a2df6aa225cf public -- First Order Entity
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

ArchitectureBlockCollection : ∀ (u : Level) → ClassOfMixedOrderEntity u
ArchitectureBlockCollection u = MixedOrderEntity u

--  ArchitectureBlockCollection is subTypeOf BlockCollection
st-0eb963f66855c298 : ∀ {u v} → (ArchitectureBlockCollection u) ⊏⋆ₑ (BlockCollection v)
st-0eb963f66855c298 = trivialPolySubTypeOfEntity

--  ArchitectureBlockCollection is subTypeOf FirstOrderEntity
st-fbc4fc366a5d64c8 : ∀ {u} → (ArchitectureBlockCollection u) ⊏ₘₑ FirstOrderEntity
st-fbc4fc366a5d64c8 = polySubTypeOf-identity

-- == Relationships =======================

{- Grouped Architecture Block: -}
groupedArchitectureBlock : ∀ {u v} →  Linkage (ArchitectureBlockCollection u) (AssetBlock v)
groupedArchitectureBlock = make_Relation "Grouped Architecture Block" "Grouped Architecture Block"

postulate -- groupedArchitectureBlock is subTypeOf groupedBuildingBlock
  st-0eb964546855c2dc-23d5c4b66851421c  : ∀ {u v} → groupedArchitectureBlock {u} {v}  ⊏⋆ᵣ  groupedBuildingBlock {u} {v}
