{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Block Collection: 
An Architecture Block Collection is a collection of Asset Blocks usually created for model management purposes, such as validating or sharing a set of Asset Blocks.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb960766855c180 where -- ========== Architecture Block Collection

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5aa4868513f43 public -- Block Collection
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

ArchitectureBlockCollection : FirstOrderClass
ArchitectureBlockCollection = FirstOrderEntity


--  ArchitectureBlockCollection withAspect BlockCollection
st-0eb963f66855c298 : ArchitectureBlockCollection ⊏ₐₑ (BlockCollection lzero)
st-0eb963f66855c298 = polySubTypeOf-identity

--  ArchitectureBlockCollection is subTypeOf FirstOrderEntity
st-fbc4fc366a5d64c8 : ArchitectureBlockCollection ⊏ₑ FirstOrderEntity
st-fbc4fc366a5d64c8 = polySubTypeOf-identity

-- == Relationships =======================

{- Grouped Architecture Block: -}
groupedArchitectureBlock : ∀ {u} →  Linkage ArchitectureBlockCollection (AssetBlock u)
groupedArchitectureBlock = make_Relation "Grouped Architecture Block" "groupedArchitectureBlock"

postulate -- groupedArchitectureBlock is subTypeOf groupedBuildingBlock
  st-0eb964546855c2dc-23d5c4b66851421c  : groupedArchitectureBlock  {lzero}  {lzero}  ⊏⋆ᵣ  groupedBuildingBlock {lzero} {lzero}
