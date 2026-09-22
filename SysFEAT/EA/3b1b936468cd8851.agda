{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Agent Configuration: 
An Individual Resource Agent Configuration is a Individual Resource Agent that is combination of Individual Human Agents and Individual Artifacts.

Documentation : https://framework.sysfeat.com/pages/3b1b936468cd8851.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b936468cd8851 where -- ========== Individual Resource Agent Configuration

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.ffdf64a868608999 public -- Resource Agent Configuration

IndividualResourceAgentConfiguration : AgentType
IndividualResourceAgentConfiguration = IndividualAgent


--  IndividualResourceAgentConfiguration is subTypeOf IndividualResourceAgent
st-3b1b936468cd8851-fe1c231267880201 : IndividualResourceAgentConfiguration ⊏ₑ IndividualResourceAgent
st-3b1b936468cd8851-fe1c231267880201 = polySubTypeOf-identity


-- == Relations =======================
