{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Asset: 
A Control Asset is a Policy Asset that is part of a Control Framework.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b9477ae68a4926d where -- ========== Control Asset

open import Agda.Primitive
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

ControlAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u
ControlAsset u = MixedOrderEntity u

--  ControlAsset is subTypeOf PolicyAsset
st-4b9478d268a4944f : ∀ {u v} → (ControlAsset u) ⊏⋆ₑ (PolicyAsset v)
st-4b9478d268a4944f = trivialPolySubTypeOfEntity

-- == Relationships =======================
