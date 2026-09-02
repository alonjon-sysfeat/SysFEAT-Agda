{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Business Agent: 
An Individual Business Agent is an Individual Resource Agent which produces Business Outcome Events of the enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.66f8685a620b1440 where -- ========== Individual Business Agent

open import Agda.Primitive
open import SysFEAT.EA.62ff75f363765899 public -- Individual Business Asset
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type

IndividualBusinessAgent : ClassOfBoundedIndividual
IndividualBusinessAgent = BoundedIndividual

--  IndividualBusinessAgent is subTypeOf IndividualBusinessAsset
st-62ff764263765920 : IndividualBusinessAgent ⊏ₑ IndividualBusinessAsset
st-62ff764263765920 = polySubTypeOf-identity

--  IndividualBusinessAgent is subTypeOf IndividualResourceAgent
st-fe1c2cb167880dfe : IndividualBusinessAgent ⊏ₑ IndividualResourceAgent
st-fe1c2cb167880dfe = polySubTypeOf-identity

-- == Relationships =======================

{- Deployed Business Agent Part: -}
-- Aggregate Member : Deployed Business Agent Part
DeployedBusinessAgentPart : ClassOfOrderedEntity (lsuc(lzero))
DeployedBusinessAgentPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfDeployedBusinessAgentPart :  Linkage IndividualBusinessAgent DeployedBusinessAgentPart
membershipOfDeployedBusinessAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart :  Linkage DeployedBusinessAgentPart IndividualBusinessAgent
aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart = aggregationOfBuildingBlock

{- deployedBusinessAgentPart : derived relation obtained by composing
   membershipOfDeployedBusinessAgentPart and aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart
   It directly links an Individual Business Agent to the final aggregated IndividualBusinessAgent
   hiding the reifying DeployedBusinessAgentPart
-}
deployedBusinessAgentPart : Linkage IndividualBusinessAgent IndividualBusinessAgent
deployedBusinessAgentPart = membershipOfDeployedBusinessAgentPart  ∘  aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart
