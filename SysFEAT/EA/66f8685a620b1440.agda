{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Business Agent: 
An Individual Business Agent is an Individual Resource Agent which produces Business Outcome Events of the enterprise.

Documentation : https://framework.sysfeat.com/pages/66f8685a620b1440.htm

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
st-66f8685a620b1440-62ff75f363765899 : IndividualBusinessAgent ⊏ₑ IndividualBusinessAsset
st-66f8685a620b1440-62ff75f363765899 = polySubTypeOf-identity

--  IndividualBusinessAgent is subTypeOf IndividualResourceAgent
st-66f8685a620b1440-fe1c231267880201 : IndividualBusinessAgent ⊏ₑ IndividualResourceAgent
st-66f8685a620b1440-fe1c231267880201 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Deployed Business Agent Part: -}
-- Aggregate Member : Deployed Business Agent Part
DeployedBusinessAgentPart : AgentType
DeployedBusinessAgentPart = IndividualAgent



--  DeployedBusinessAgentPart is subTypeOf IndividualResourceAgentPart
st-66f868de620b14e6-fe1c2ae667880c06 : DeployedBusinessAgentPart ⊏ₑ IndividualResourceAgentPart
st-66f868de620b14e6-fe1c2ae667880c06 = polySubTypeOf-identity

--  DeployedBusinessAgentPart is subTypeOf IndividualBusinessAgent
st-66f868de620b14e6-66f8685a620b1440 : DeployedBusinessAgentPart ⊏ₑ IndividualBusinessAgent
st-66f868de620b14e6-66f8685a620b1440 = polySubTypeOf-identity

-- Membership relation
membershipOfDeployedBusinessAgentPart :  Linkage IndividualBusinessAgent DeployedBusinessAgentPart
membershipOfDeployedBusinessAgentPart = make_upwardNestingRelation "deployedBusinessAgentPart membership" "nested deployedBusinessAgentPart"

-- Aggregation relation
aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart :  Linkage DeployedBusinessAgentPart IndividualBusinessAgent
aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart = make_Relation "IndividualBusinessAgent aggregation" "aggregated IndividualBusinessAgent"

{- deployedBusinessAgentPart : derived relation obtained by composing
   membershipOfDeployedBusinessAgentPart and aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart
   It directly links an Individual Business Agent to the final aggregated IndividualBusinessAgent
   hiding the reifying DeployedBusinessAgentPart
-}
deployedBusinessAgentPart : Linkage IndividualBusinessAgent IndividualBusinessAgent
deployedBusinessAgentPart = membershipOfDeployedBusinessAgentPart  ∘  aggregationOfIndividualBusinessAgentDeployedBusinessAgentPart


