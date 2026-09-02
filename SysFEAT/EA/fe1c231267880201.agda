{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Agent: 
An Individual Resource Agent is an Individual Operating Asset that exists in space/time and that is able to participate actively to Processes and/or to conduct Processes.
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
st-fe1c27c1678807c6 : IndividualResourceAgent ⊏ₑ IndividualResourceAsset
st-fe1c27c1678807c6 = polySubTypeOf-identity

--  IndividualResourceAgent is subTypeOf IndividualAgent
st-fe1c25b167880564 : IndividualResourceAgent ⊏ₑ IndividualAgent
st-fe1c25b167880564 = polySubTypeOf-identity

-- == Relationships =======================

{- Individual Resource Agent Part: -}
-- Aggregate Member : Individual Resource Agent Part
IndividualResourceAgentPart : ClassOfOrderedEntity (lsuc(lzero))
IndividualResourceAgentPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfIndividualResourceAgentPart :  Linkage IndividualResourceAgent IndividualResourceAgentPart
membershipOfIndividualResourceAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualResourceAgentIndividualResourceAgentPart :  Linkage IndividualResourceAgentPart IndividualResourceAgent
aggregationOfIndividualResourceAgentIndividualResourceAgentPart = aggregationOfBuildingBlock

{- individualResourceAgentPart : derived relation obtained by composing
   membershipOfIndividualResourceAgentPart and aggregationOfIndividualResourceAgentIndividualResourceAgentPart
   It directly links an Individual Resource Agent to the final aggregated IndividualResourceAgent
   hiding the reifying IndividualResourceAgentPart
-}
individualResourceAgentPart : Linkage IndividualResourceAgent IndividualResourceAgent
individualResourceAgentPart = membershipOfIndividualResourceAgentPart  ∘  aggregationOfIndividualResourceAgentIndividualResourceAgentPart
