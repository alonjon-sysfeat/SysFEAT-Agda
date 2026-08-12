{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environmental Property: 
An Environmental Property is a specific value of an Environmental Property Type.Environmental Propertys are used as constraints on Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.Examples:- Muddy, frozen ground, deep snow (Terrain Type),- Broad daylight, dusk, moonlit  (Light condition).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed58f3689c19f4 where -- ========== Environmental Property

open import Agda.Primitive
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property
open import SysFEAT.SOF.e53af85b66e37f78 public -- Environmental Property Type

EnvironmentalProperty : PropertyType
EnvironmentalProperty = ClassOfProperty

postulate --  EnvironmentalProperty is subTypeOf ConditionProperty
  st-dd264a59689f47c3 : EnvironmentalProperty ⊏ₑ ConditionProperty

-- == Relationships =======================

{- Environmental Property Type: -}
environmentalPropertyType :  Linkage EnvironmentalProperty EnvironmentalPropertyType
environmentalPropertyType = make_instanceOf "Environmental Property Type" "environmentalPropertyType"

postulate -- environmentalPropertyType is subTypeOf conditionPropertyType
  st-21ed5b67689c1c35-21ed5a16689c1a59  : environmentalPropertyType   ⊏⋆ᵣ  conditionPropertyType 
