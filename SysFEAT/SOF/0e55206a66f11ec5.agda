{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Risk Type: 
A Risk Type is a distinct category or classification of risk based on its origin, nature, or potential impact. It helps in organizing and addressing different sources of uncertainty or potential harm that an individual, organization, or system might face. By categorizing risks into different types, entities can develop more targeted mitigation strategies and response plans. Common risk types include Operational Risk Type, Privacy Risk Type, and Compliance Risk Type, among others,
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0e55206a66f11ec5 where -- ========== Risk Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type

RiskType : ThirdOrderClass
RiskType = SecondOrderClass

postulate --  RiskType is subTypeOf PropertyType
  st-427c1ca364b5d50a : RiskType ⊏ₑ PropertyType

-- == Relationships =======================

{- Parent Risk: -}
parentRisk :  Linkage RiskType RiskType
parentRisk = make_subTypeOf "Parent Risk" "parentRisk"

postulate -- parentRisk is subTypeOf specializedPropertyType
  st-332c410066f1656d-12b01dee66e92b43  : parentRisk   ⊏⋆ᵣ  specializedPropertyType 
