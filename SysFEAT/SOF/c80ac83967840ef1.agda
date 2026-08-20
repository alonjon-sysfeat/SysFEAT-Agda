{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Whole Life Agent Type: 
A Whole Life Agent Type is an Agent Type that is not the temporal slice type of any other Agent Type. Examples:. A type of building such as a skycraper.. A type of person such as a philosopher.. A type of facility such as a Hospital.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c80ac83967840ef1 where -- ========== Whole Life Agent Type

open import Agda.Primitive
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type
open import SysFEAT.SOF.e13ce1cd678f1111 public -- Whole Life Asset Type

WholeLifeAgentType : ClassOfClassOfBoundedIndividual
WholeLifeAgentType = ClassOfBoundedIndividual

--  WholeLifeAgentType is subTypeOf AgentType
st-c80ac883678410ac : WholeLifeAgentType ⊏ₑ AgentType
st-c80ac883678410ac = polySubTypeOf-identity

--  WholeLifeAgentType is subTypeOf WholeLifeAssetType
st-c80ac87d67841083 : WholeLifeAgentType ⊏ₑ WholeLifeAssetType
st-c80ac87d67841083 = polySubTypeOf-identity

-- == Relationships =======================
