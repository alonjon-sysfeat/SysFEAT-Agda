{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Agent Configuration: 
A Resource Agent Configuration is a Resource Agent Type that is combination of Human Agent Categorys and Artifacts.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf64a868608999 where -- ========== Resource Agent Configuration

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

ResourceAgentConfiguration : ClassOfClassOfBoundedIndividual
ResourceAgentConfiguration = ClassOfBoundedIndividual

--  ResourceAgentConfiguration is subTypeOf ResourceAgentType
st-ffdf64c0686089e8 : ResourceAgentConfiguration ⊏ₑ ResourceAgentType
st-ffdf64c0686089e8 = polySubTypeOf-identity

-- == Relationships =======================
