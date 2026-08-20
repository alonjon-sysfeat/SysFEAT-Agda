{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measure Property: 
A Measure Property is a possible value of a Measure Property Type such as a delivery time of 30 minutes, a weight of 20 kg, a high level of confidentiality.It represents how much there is or how many there are of something that you can quantify according to its Constraining Measurable Property.Measure Propertys are used as constraints on Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed2aa6689c12ba where -- ========== Measure Property

open import Agda.Primitive
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property
open import SysFEAT.SOF.e53af74b66e37e5d public -- Measure Property Type

MeasureProperty : PropertyType
MeasureProperty = ClassOfProperty

--  MeasureProperty is subTypeOf ConditionProperty
st-21ed2adc689c12fc : MeasureProperty ⊏ₑ ConditionProperty
st-21ed2adc689c12fc = polySubTypeOf-identity

-- == Relationships =======================

{- Measure Property Type: -}
measurePropertyType :  Linkage MeasureProperty MeasurePropertyType
measurePropertyType = make_instanceOf "Measure Property Type" "measurePropertyType"

postulate -- measurePropertyType is subTypeOf conditionPropertyType
  st-21ed59d8689c1a21-21ed5a16689c1a59  : measurePropertyType   ⊏⋆ᵣ  conditionPropertyType 
