{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Micro Operating Asset: 
A Micro Operating Asset represents the foundational level at which a systems structure and interactions can be analyzed without further subdivision into smaller constituent parts.Micro Operating Assets set the stage for how higher-level behaviors emerge. As one moves up to higher hierarchical levels (mezzo, macro, etc.), the signals and boundaries at each of those levels are influenced by the foundational interactions set at the micro level.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c4510f76a032396 where -- ========== Micro Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.0c450e776a031ff0 public -- Systemic Level

MicroOperatingAsset : ∀ (u : Level) → MixedOrderMetaClass u
MicroOperatingAsset u = ClassOfMixedOrderEntity u

--  MicroOperatingAsset is subTypeOf SystemicLevel
st-0c45110e6a0323fd : ∀ {u v} → (MicroOperatingAsset u) ⊏⋆ₑ (SystemicLevel v)
st-0c45110e6a0323fd = trivialPolySubTypeOfEntity

-- == Relationships =======================
