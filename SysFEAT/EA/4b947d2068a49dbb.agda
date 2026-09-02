{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory Asset: 
A Regulatory Asset is a Policy Asset that is part of of a Regulatory Framework.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b947d2068a49dbb where -- ========== Regulatory Asset

open import Agda.Primitive
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

RegulatoryAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u
RegulatoryAsset u = MixedOrderEntity u

--  RegulatoryAsset is subTypeOf PolicyAsset
st-4b947d3668a49e1f : ∀ {u v} → (RegulatoryAsset u) ⊏⋆ₑ (PolicyAsset v)
st-4b947d3668a49e1f = trivialPolySubTypeOfEntity

-- == Relationships =======================
