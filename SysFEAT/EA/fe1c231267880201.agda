{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Agent: 
An Individual Resource Agent is an Individual Operating Asset that exists in space/time and that is able to participate actively to Processes and/or to conduct Processes.

Documentation : https://framework.sysfeat.com/pages/fe1c231267880201.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c231267880201 where -- ========== Individual Resource Agent

open import Agda.Primitive
open import SysFEAT.EA.fe1c24fa6788036e public -- Individual Resource Asset
open import SysFEAT.SOF.9e3837e46192fcad public -- Individual Agent
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

IndividualResourceAgent : ClassOfBoundedIndividual
IndividualResourceAgent = BoundedIndividual

--  IndividualResourceAgent is subTypeOf IndividualResourceAsset
st-fe1c231267880201-fe1c24fa6788036e : IndividualResourceAgent ⊏ₑ IndividualResourceAsset
st-fe1c231267880201-fe1c24fa6788036e = polySubTypeOf-identity

--  IndividualResourceAgent is subTypeOf IndividualAgent
st-fe1c231267880201-9e3837e46192fcad : IndividualResourceAgent ⊏ₑ IndividualAgent
st-fe1c231267880201-9e3837e46192fcad = polySubTypeOf-identity

-- == Relationships =======================

{- Individual Resource Agent Part: -}
-- Aggregate Member : Individual Resource Agent Part
IndividualResourceAgentPart : ClassOfOrderedEntity (lsuc(lzero))
IndividualResourceAgentPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfIndividualResourceAgentPart :  Linkage IndividualResourceAgent IndividualResourceAgentPart
membershipOfIndividualResourceAgentPart = make_upwardNestingRelation "individualResourceAgentPart membership" "nested individualResourceAgentPart"

-- Aggregation relation
aggregationOfIndividualResourceAgentIndividualResourceAgentPart :  Linkage IndividualResourceAgentPart IndividualResourceAgent
aggregationOfIndividualResourceAgentIndividualResourceAgentPart = make_Relation "IndividualResourceAgent aggregation" "aggregated IndividualResourceAgent"

{- individualResourceAgentPart : derived relation obtained by composing
   membershipOfIndividualResourceAgentPart and aggregationOfIndividualResourceAgentIndividualResourceAgentPart
   It directly links an Individual Resource Agent to the final aggregated IndividualResourceAgent
   hiding the reifying IndividualResourceAgentPart
-}
individualResourceAgentPart : Linkage IndividualResourceAgent IndividualResourceAgent
individualResourceAgentPart = membershipOfIndividualResourceAgentPart  ∘  aggregationOfIndividualResourceAgentIndividualResourceAgentPart

postulate -- individualResourceAgentPart is subTypeOf agentPart
  st-fe1c2ae667880c06-9d389f6761c4127d  : individualResourceAgentPart   ⊏⋆ᵣ  agentPart 

