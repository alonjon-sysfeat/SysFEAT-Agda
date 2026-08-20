{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Asset: 
An Operating Asset is a kind of Asset Block which is architectured accross Systemic Levels.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c4559c86a033792 where -- ========== Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity
open import SysFEAT.SOF.52b05a616a104fab public -- Conceptualization Level
open import SysFEAT.SOF.0c450e776a031ff0 public -- Systemic Level

OperatingAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u
OperatingAsset u = MixedOrderEntity u

--  OperatingAsset is subTypeOf AssetBlock
st-0c455d016a033cf0 : ∀ {u v} → (OperatingAsset u) ⊏⋆ₑ (AssetBlock v)
st-0c455d016a033cf0 = trivialPolySubTypeOfEntity

--  OperatingAsset is subTypeOf MixedOrderEntity
st-0212cb0e6a7a0385 : ∀ {u v} → (OperatingAsset u) ⊏⋆ₑ (MixedOrderEntity v)
st-0212cb0e6a7a0385 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Dependent Conceptual Level: -}
dependentConceptualLevel : ∀ {u v} →  Linkage (OperatingAsset u) (ConceptualizationLevel v)
dependentConceptualLevel = make_Relation "Dependent Conceptual Level" "dependentConceptualLevel"


{- Dependent Level Type: 
The Systemic Level that an Operating Asset is parametred by. 
-}
dependentLevelType : ∀ {u v} →  Linkage (OperatingAsset u) (SystemicLevel v)
dependentLevelType = make_Relation "Dependent Level Type" "dependentLevelType"

