{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Block: 
An Asset Block is an Architecture Block used to describe the System Operating Framework - SOF of the enterprise and its systems.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95f356855bf94 where -- ========== Asset Block

open import Agda.Primitive
open import SysFEAT.SOF.9397b45268777e3b public -- Architecture Block

AssetBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
AssetBlock u = MixedOrderEntity u

--  AssetBlock is subTypeOf ArchitectureBlock
st-9397ca1368779299 : ∀ {u v} → (AssetBlock u) ⊏⋆ₑ (ArchitectureBlock v)
st-9397ca1368779299 = trivialPolySubTypeOfEntity

-- == Relationships =======================
