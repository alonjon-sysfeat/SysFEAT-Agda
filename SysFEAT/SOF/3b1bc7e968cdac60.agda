{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measurement Value: 
A Measurement Value is the value of Measure Property Type that result from a Measurement, at specific point in time in the context of a Key Indicator.A Measurement Value is always nested by its Measurement.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3b1bc7e968cdac60 where -- ========== Measurement Value

open import Agda.Primitive
open import SysFEAT.SOF.21ed2aa6689c12ba public -- Measure Property
open import SysFEAT.SOF.e53af74b66e37e5d public -- Measure Property Type

MeasurementValue : PropertyType
MeasurementValue = ClassOfProperty

--  MeasurementValue is subTypeOf MeasureProperty
st-3b1bc87f68cdaf0c : MeasurementValue ⊏ₑ MeasureProperty
st-3b1bc87f68cdaf0c = polySubTypeOf-identity

-- == Relationships =======================

{- Measured Property Type: -}
measuredPropertyType :  Linkage MeasurementValue MeasurePropertyType
measuredPropertyType = make_instanceOf "Measured Property Type" "measuredPropertyType"

postulate -- measuredPropertyType is subTypeOf measurePropertyType
  st-3b1bc80968cdad31-21ed59d8689c1a21  : measuredPropertyType   ⊏⋆ᵣ  measurePropertyType 
