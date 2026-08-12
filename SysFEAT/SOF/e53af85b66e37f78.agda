{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environmental Property Type: 
An Environmental Property Type is a characteristic of the environment in which an Enterprise or its sub-systems are required to operate.Examples:. Terrain Type: muddy, frozen ground, deep snow, etc;. Light conditions: broad daylight, dusk, moonlit, etc;. Weather condition: stormy, sunny, cloudy, etc;. Polical conditions: political stability, level of education;. Economical conditions: exchange rates, inflation rate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e53af85b66e37f78 where -- ========== Environmental Property Type

open import Agda.Primitive
open import SysFEAT.SOF.e53af71366e37de2 public -- Condition Property Type
open import SysFEAT.SOF.6f9c78916a0f34e5 public -- Environmental Condition Type

EnvironmentalPropertyType : ThirdOrderClass
EnvironmentalPropertyType = SecondOrderClass

postulate --  EnvironmentalPropertyType is subTypeOf ConditionPropertyType
  st-e53af86866e37fa2 : EnvironmentalPropertyType ⊏ₑ ConditionPropertyType

-- == Relationships =======================

{- Environmental Condition Type: 
The Environmental Condition Type that an Environmental Property Type belongs to.For instance,  Economic growth  belongs to the  Policital Factor  category. 
-}
environmentalConditionType : ∀ {u} →  Linkage EnvironmentalPropertyType (EnvironmentalConditionType u)
environmentalConditionType = make_classOfRelation "Environmental Condition Type" "environmentalConditionType"

postulate -- environmentalConditionType is subTypeOf conditionCategory
  st-6f9c790e6a0f35b2-6f9c72c26a0f3238  : environmentalConditionType  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  conditionCategory  {lsuc(lsuc(lzero))}
