{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Agent: 
An Individual Agent is an Individual Operating Asset that exists in space/time and that is able to participate actively to Action Process Typees and/or to conduct Action Process Typees.

Documentation : https://framework.sysfeat.com/pages/9e3837e46192fcad.htm

External references:
  OpenGroup - ArchiMate - Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Active-Structure-Elements
  OMG - KerML - Object: https://www.omg.org/spec/KerML/1.0/PDF#page=338
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.9e3837e46192fcad where -- ========== Individual Agent

open import Agda.Primitive
open import SysFEAT.SOF.9f61cf9166833fb7 public -- Individual Operating Asset
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

IndividualAgent : AgentType
IndividualAgent = BoundedIndividual

--  IndividualAgent is subTypeOf IndividualOperatingAsset
st-9e3837e46192fcad-9f61cf9166833fb7 : IndividualAgent ⊏ₑ IndividualOperatingAsset
st-9e3837e46192fcad-9f61cf9166833fb7 = polySubTypeOf-identity

postulate -- IndividualAgent is PowerInstanceOf Agent Type
  64ad81da68ce5cb9 : IndividualAgent ∷ₚₑ AgentType
postulate -- AgentType is ReflexivePowerType 
  41909af76aaa453d : AgentType ⊏ₘₑ IndividualAgent

-- == Relations =======================

{- Agent Part: 
An Agent Part is the Aggregate Holonymy of an Individual Agent in a parent Individual Agent.
-}
-- Aggregate Member : Agent Part
AgentPart : AggregateHolonymyType
AgentPart = AggregateHolonymy


-- Membership relation
membershipOfAgentPart :  Linkage IndividualAgent AgentPart
membershipOfAgentPart = make_upwardNestingRelation "agentPart membership" "nested agentPart"

-- Aggregation relation
aggregationOfIndividualAgentAgentPart :  Linkage AgentPart IndividualAgent
aggregationOfIndividualAgentAgentPart = make_Relation "IndividualAgent aggregation" "aggregated IndividualAgent"

{- agentPart : derived relation obtained by composing
   membershipOfAgentPart and aggregationOfIndividualAgentAgentPart
   It directly links an Individual Agent to the final aggregated IndividualAgent
   hiding the reifying AgentPart
-}
agentPart : Linkage IndividualAgent IndividualAgent
agentPart = membershipOfAgentPart  ∘  aggregationOfIndividualAgentAgentPart

postulate -- agentPart is subTypeOf individualOperatingPart
  st-9d389f6761c4127d-d8ee780d68d224c2  : agentPart   ⊏⋆ᵣ  individualOperatingPart 

