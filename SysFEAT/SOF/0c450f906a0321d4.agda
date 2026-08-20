{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Macro Operating Asset: 
A Macro Operating Asset is an Operating Asset which corresponds to a large-scale enterprise assets. This level of analysis is concerned with understanding how large enterprise systems operate and how they interact with each other. Examples of macro-level systems:. Legal entities. The overall enterprise IT System. The internet. System of Systems . The Enterprise itself., 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c450f906a0321d4 where -- ========== Macro Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.0c450e776a031ff0 public -- Systemic Level

MacroOperatingAsset : ∀ (u : Level) → MixedOrderMetaClass u
MacroOperatingAsset u = ClassOfMixedOrderEntity u

--  MacroOperatingAsset is subTypeOf SystemicLevel
st-0c450faa6a032221 : ∀ {u v} → (MacroOperatingAsset u) ⊏⋆ₑ (SystemicLevel v)
st-0c450faa6a032221 = trivialPolySubTypeOfEntity

-- == Relationships =======================
