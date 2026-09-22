{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Risk Type: 
A Technology Risk Type refers to a distinct category or classification of risk associated to the use of Technology Systems.

Documentation : https://framework.sysfeat.com/pages/5d4e752066f27329.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.5d4e752066f27329 where -- ========== Technology Risk Type

open import Agda.Primitive
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type

TechnologyRiskType : ThirdOrderClass
TechnologyRiskType = SecondOrderClass


--  TechnologyRiskType is subTypeOf RiskType
st-5d4e752066f27329-0e55206a66f11ec5 : TechnologyRiskType ⊏ₑ RiskType
st-5d4e752066f27329-0e55206a66f11ec5 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Technology Risk Type: -}
technologyRiskType :  Linkage TechnologyRiskType TechnologyRiskType
technologyRiskType = make_subTypeOf "Technology Risk Type" "Technology Risk Type"

postulate -- technologyRiskType is subTypeOf parentRisk
  st-5d4e765c66f27434-332c410066f1656d  : technologyRiskType  ⊏⋆ᵣ  parentRisk
