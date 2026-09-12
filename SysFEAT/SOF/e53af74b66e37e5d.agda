{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measure Property Type: 
A Measure Property Type is a Condition Property Type that expresses a type of measurement (Time, Mass, Cost, ..) and define the units used for measures (minutes, kg, euros, etc.).Examples:- Time to deliver in minutes.- Delivery cost in kilo Euros.Condition Property Types are described by Measure Unit: kg, Liter, Gallon, Hour, Minute.Condition Property Types are used to constrain Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.

Documentation : https://framework.sysfeat.com/pages/e53af74b66e37e5d.htm

External references:
  Wikipeddia - List of quality attributes: https://en.wikipedia.org/wiki/List_of_system_quality_attributes
  ISO 15926 - ClassOfProperty: https://15926.blog/topics/data-model/index.htm#ClassOfProperty
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e53af74b66e37e5d where -- ========== Measure Property Type

open import Agda.Primitive
open import SysFEAT.SOF.e53af71366e37de2 public -- Condition Property Type
open import SysFEAT.SOF.6f9c701b6a0f2d87 public -- Measurement Type

MeasurePropertyType : ThirdOrderClass
MeasurePropertyType = SecondOrderClass

--  MeasurePropertyType is subTypeOf ConditionPropertyType
st-e53af77e66e37eb5 : MeasurePropertyType ⊏ₑ ConditionPropertyType
st-e53af77e66e37eb5 = polySubTypeOf-identity

-- == Relationships =======================

{- Measurement Type: 
The Measurement Type that a Measure Property Type belongs to.For instance,  Delivery Time  belongs to the  Performance  category.
-}
measurementType : ∀ {u} →  Linkage MeasurePropertyType (MeasurementType u)
measurementType = make_classOfRelation "Measurement Type" "Measurement Type"

postulate -- measurementType is subTypeOf conditionCategory
  st-6f9c70516a0f2e90-6f9c72c26a0f3238  : measurementType  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  conditionCategory  {lsuc(lsuc(lzero))}
