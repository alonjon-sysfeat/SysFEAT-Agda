{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Level: 
The  Conceptual Level classifies concepts describing the conceptual views of the enterprise.The conceptual view is independant of any commitment to physical resources. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.52b05b596a1050ba where -- ========== Conceptual Level

open import Agda.Primitive
open import SysFEAT.SOF.52b05a616a104fab public -- Conceptualization Level

ConceptualLevel : ∀ (u : Level) → MixedOrderMetaClass u
ConceptualLevel u = ClassOfMixedOrderEntity u

--  ConceptualLevel is subTypeOf ConceptualizationLevel
st-52b05b606a10511c : ∀ {u v} → (ConceptualLevel u) ⊏⋆ₑ (ConceptualizationLevel v)
st-52b05b606a10511c = trivialPolySubTypeOfEntity

-- == Relationships =======================
