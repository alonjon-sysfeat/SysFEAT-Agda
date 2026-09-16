{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Block: 


Documentation : https://framework.sysfeat.com/pages/8f1cad7d68ca9df0.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1cad7d68ca9df0 where -- ========== Physical Data Block

open import Agda.Primitive
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block

PhysicalDataBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
PhysicalDataBlock u = MixedOrderEntity u

--  PhysicalDataBlock is subTypeOf DataBlock
st-8f1cad7d68ca9df0-8f1c937168ca8195 : ∀ {u v} → (PhysicalDataBlock u) ⊏⋆ₑ (DataBlock v)
st-8f1cad7d68ca9df0-8f1c937168ca8195 = trivialPolySubTypeOfEntity

-- == Relationships =======================
