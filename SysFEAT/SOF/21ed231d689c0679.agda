{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Condition Property: 
A Condition Property is a possible value of a Condition Property Type such as a delivery time of 30 minutes, a weight of 20 kg, a high level of confidentiality, stormy conditions.A Condition Property is either a single measure (Measure Property: a weight of 20 kg), an Environmental Property (stormy conditions.) or a Set of Condition Propertiess.Condition Propertys are used to constrain Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.Examples:. Cost of 100€. Delivery time of 30 minutes.. Weight of 20 kg.. Temperature of 18 degree Celcius.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed231d689c0679 where -- ========== Condition Property

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property
open import SysFEAT.SOF.e53af71366e37de2 public -- Condition Property Type

ConditionProperty : PropertyType
ConditionProperty = ClassOfProperty

postulate --  ConditionProperty is subTypeOf AssetProperty
  st-21ed234f689c06bb : ConditionProperty ⊏ₑ AssetProperty

-- == Relationships =======================

{- Condition Property Type: -}
conditionPropertyType :  Linkage ConditionProperty ConditionPropertyType
conditionPropertyType = make_instanceOf "Condition Property Type" "conditionPropertyType"

postulate -- conditionPropertyType is subTypeOf assetPropertyType
  st-21ed5a16689c1a59-190c1f03689649e5  : conditionPropertyType   ⊏⋆ᵣ  assetPropertyType 
