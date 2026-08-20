{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Set of Environmental Condition Type: 
A Set of Environmental Condition Type is an  and  combination of Condition Property Types.Example:.  Delivery time  at  appropriate cost  in  stormy conditions .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e53af87666e37fcd where -- ========== Set of Environmental Condition Type

open import Agda.Primitive
open import SysFEAT.SOF.e53af71366e37de2 public -- Condition Property Type

SetOfEnvironmentalConditionType : ThirdOrderClass
SetOfEnvironmentalConditionType = SecondOrderClass

--  SetOfEnvironmentalConditionType is subTypeOf ConditionPropertyType
st-e53af88066e38012 : SetOfEnvironmentalConditionType ⊏ₑ ConditionPropertyType
st-e53af88066e38012 = polySubTypeOf-identity

-- == Relationships =======================

{- Combined Condition Type: 
Set of Condition Property Types.
-}
combinedConditionType :  Linkage SetOfEnvironmentalConditionType SetOfEnvironmentalConditionType
combinedConditionType = make_classOfHolonymy "Combined Condition Type" "combinedConditionType"

postulate -- combinedConditionType is subTypeOf propertyTypeHolonymy
  st-c2f278bb66ea258a-9653a4ad6970107b  : combinedConditionType   ⊏⋆ᵣ  propertyTypeHolonymy 
