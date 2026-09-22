{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Human Agent: 
A Individual Human Agent is a kind of Individual Resource Agent that represents any entity with intentionality, decision-making capacity, and the ability to act-whether as an individual person or a collective social unit.

Documentation : https://framework.sysfeat.com/pages/3b1b943568cd8922.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b943568cd8922 where -- ========== Individual Human Agent

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent

IndividualHumanAgent : AgentType
IndividualHumanAgent = IndividualAgent


--  IndividualHumanAgent is subTypeOf IndividualResourceAgent
st-3b1b943568cd8922-fe1c231267880201 : IndividualHumanAgent ⊏ₑ IndividualResourceAgent
st-3b1b943568cd8922-fe1c231267880201 = polySubTypeOf-identity


-- == Relations =======================
