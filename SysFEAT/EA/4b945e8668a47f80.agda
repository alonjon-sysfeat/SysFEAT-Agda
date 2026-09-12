{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework Asset: 
A Policy Framework Asset is a Policy Asset that is declared in a Business Policy Framework.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b945e8668a47f80 where -- ========== Policy Framework Asset

open import Agda.Primitive
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

PolicyFrameworkAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u
PolicyFrameworkAsset u = MixedOrderEntity u

--  PolicyFrameworkAsset is subTypeOf PolicyAsset
st-9e1ddbe6636b5f00 : ∀ {u v} → (PolicyFrameworkAsset u) ⊏⋆ₑ (PolicyAsset v)
st-9e1ddbe6636b5f00 = trivialPolySubTypeOfEntity

-- == Relationships =======================
