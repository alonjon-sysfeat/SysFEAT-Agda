{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Agent: 
An Individual Agent is an Individual Operating Asset that exists in space/time and that is able to participate actively to Action Process Typees and/or to conduct Action Process Typees.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.9e3837e46192fcad where -- ========== Individual Agent

open import Agda.Primitive
open import SysFEAT.SOF.9f61cf9166833fb7 public -- Individual Operating Asset
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

IndividualAgent : ClassOfBoundedIndividual
IndividualAgent = BoundedIndividual

--  IndividualAgent is subTypeOf IndividualOperatingAsset
st-9e38381c6192fe47 : IndividualAgent ⊏ₑ IndividualOperatingAsset
st-9e38381c6192fe47 = polySubTypeOf-identity

-- == Relationships =======================

{- Agent Part: 
An Agent Part is the Aggregate Holonymy of an Individual Agent in a parent Individual Agent.
-}
-- Aggregate Member : Agent Part
AgentPart : ClassOfOrderedEntity (lsuc(lzero))
AgentPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfAgentPart :  Linkage IndividualAgent AgentPart
membershipOfAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualAgentAgentPart :  Linkage AgentPart IndividualAgent
aggregationOfIndividualAgentAgentPart = aggregationOfBuildingBlock

{- agentPart : derived relation obtained by composing
   membershipOfAgentPart and aggregationOfIndividualAgentAgentPart
   It directly links an Individual Agent to the final aggregated IndividualAgent
   hiding the reifying AgentPart
-}
agentPart : Linkage IndividualAgent IndividualAgent
agentPart = membershipOfAgentPart  ∘  aggregationOfIndividualAgentAgentPart
