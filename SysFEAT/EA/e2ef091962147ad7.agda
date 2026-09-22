{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Agent Type: 
A Resource Agent Type is an entity type which instance belongs to the physical space, and comprises Human Agent Categorys, Hardware System Categorys, Software System Categorys and Natural Resource Categorys. Resource Agent Type is the supertype of all types of Agent Types that produce and react to Resource Outcome Events.This includes:1) Business Agent Types which represent  physical resources that produce and react to Business Outcome Events of the enterprise.2) Technology Systems which represents enabling systems that produce and react to  Technology Outcome Events.

Documentation : https://framework.sysfeat.com/pages/e2ef091962147ad7.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e2ef091962147ad7 where -- ========== Resource Agent Type

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type
open import SysFEAT.EA.6a70c21067876cd8 public -- Resource Service Interface
open import SysFEAT.EA.7d337d67628134c5 public -- Resource Interaction Process
open import SysFEAT.EA.e2ef095b62147bf9 public -- Resource Action Process
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain

ResourceAgentType : ClassOfClassOfBoundedIndividual
ResourceAgentType = ClassOfBoundedIndividual


--  ResourceAgentType is subTypeOf ResourceOperatingAsset
st-e2ef091962147ad7-f8e61da0621db6fa : ResourceAgentType ⊏ₑ ResourceOperatingAsset
st-e2ef091962147ad7-f8e61da0621db6fa = polySubTypeOf-identity

--  ResourceAgentType is subTypeOf AgentType
st-e2ef091962147ad7-79368381561716a6 : ResourceAgentType ⊏ₑ AgentType
st-e2ef091962147ad7-79368381561716a6 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Business Operating Agent: -}
specializedBusinessOperatingAgent :  Linkage ResourceAgentType ResourceAgentType
specializedBusinessOperatingAgent = make_subTypeOf "Specialized Business Operating Agent" "Specialized Business Operating Agent"

postulate -- specializedBusinessOperatingAgent is subTypeOf specializedAgent
  st-325a377166f3470f-2b5b440b66ed56d4  : specializedBusinessOperatingAgent  ⊏⋆ᵣ  specializedAgent
postulate -- specializedBusinessOperatingAgent is subTypeOf specializedResourceOperatingAsset
  st-325a377166f3470f-82a9879766ec3a29  : specializedBusinessOperatingAgent  ⊏⋆ᵣ  specializedResourceOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Resource Connection: -}
-- Aggregate Member : Resource Connection
ResourceConnection : ClassOfClassOfIndividual
ResourceConnection = ClassOfIndividual


--  ResourceConnection is subTypeOf InteractionChannel
st-e2c5927d61dee3e7-24ae34bb5ed1cb17 : ResourceConnection ⊏ₑ InteractionChannel
st-e2c5927d61dee3e7-24ae34bb5ed1cb17 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceConnection :  Linkage ResourceAgentType ResourceConnection
membershipOfResourceConnection = make_upwardNestingRelation "resourceConnection membership" "nested resourceConnection"

-- Aggregation relation
aggregationOfResourceServiceInterfaceResourceConnection :  Linkage ResourceConnection ResourceServiceInterface
aggregationOfResourceServiceInterfaceResourceConnection = make_Relation "ResourceServiceInterface aggregation" "aggregated ResourceServiceInterface"

{- resourceConnection : derived relation obtained by composing
   membershipOfResourceConnection and aggregationOfResourceServiceInterfaceResourceConnection
   It directly links an Resource Agent Type to the final aggregated ResourceServiceInterface
   hiding the reifying ResourceConnection
-}
resourceConnection : Linkage ResourceAgentType ResourceServiceInterface
resourceConnection = membershipOfResourceConnection  ∘  aggregationOfResourceServiceInterfaceResourceConnection



-- -------------------------------------------------------------------------------------------- 
{- Resource Agent Part: -}
-- Aggregate Member : Resource Agent Part
ResourceAgentPart : ClassOfClassOfBoundedIndividual
ResourceAgentPart = ClassOfBoundedIndividual



--  ResourceAgentPart is subTypeOf AgentPart
st-e2ef09de62147eb7-1da6216a5ebc65f7 : ResourceAgentPart ⊏ₑ AgentPart
st-e2ef09de62147eb7-1da6216a5ebc65f7 = polySubTypeOf-identity

--  ResourceAgentPart is subTypeOf ResourceOperatingAssetPart
st-e2ef09de62147eb7-b776bf0868b0fbb3 : ResourceAgentPart ⊏ₑ ResourceOperatingAssetPart
st-e2ef09de62147eb7-b776bf0868b0fbb3 = polySubTypeOf-identity

--  ResourceAgentPart is subTypeOf ResourceAgentType
st-e2ef09de62147eb7-e2ef091962147ad7 : ResourceAgentPart ⊏ₑ ResourceAgentType
st-e2ef09de62147eb7-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceAgentPart :  Linkage ResourceAgentType ResourceAgentPart
membershipOfResourceAgentPart = make_upwardNestingRelation "resourceAgentPart membership" "nested resourceAgentPart"

-- Aggregation relation
aggregationOfResourceAgentTypeResourceAgentPart :  Linkage ResourceAgentPart ResourceAgentType
aggregationOfResourceAgentTypeResourceAgentPart = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- resourceAgentPart : derived relation obtained by composing
   membershipOfResourceAgentPart and aggregationOfResourceAgentTypeResourceAgentPart
   It directly links an Resource Agent Type to the final aggregated ResourceAgentType
   hiding the reifying ResourceAgentPart
-}
resourceAgentPart : Linkage ResourceAgentType ResourceAgentType
resourceAgentPart = membershipOfResourceAgentPart  ∘  aggregationOfResourceAgentTypeResourceAgentPart



-- -------------------------------------------------------------------------------------------- 
{- Performed Resource Scenario: 
A Performed Resource Scenario is a Resource Interaction Process operated by a Resource Agent Type.
-}
-- Aggregate Member : Performed Resource Scenario
PerformedResourceScenario : ClassOfClassOfBoundedIndividual
PerformedResourceScenario = ClassOfBoundedIndividual



--  PerformedResourceScenario is subTypeOf PerformedInteraction
st-7d330fcd62824acd-07e737925eccd8f1 : PerformedResourceScenario ⊏ₑ PerformedInteraction
st-7d330fcd62824acd-07e737925eccd8f1 = polySubTypeOf-identity

--  PerformedResourceScenario is subTypeOf ResourceInteractionProcess
st-7d330fcd62824acd-7d337d67628134c5 : PerformedResourceScenario ⊏ₑ ResourceInteractionProcess
st-7d330fcd62824acd-7d337d67628134c5 = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedResourceScenario :  Linkage ResourceAgentType PerformedResourceScenario
membershipOfPerformedResourceScenario = make_upwardNestingRelation "performedResourceScenario membership" "nested performedResourceScenario"

-- Aggregation relation
aggregationOfResourceInteractionProcessPerformedResourceScenario :  Linkage PerformedResourceScenario ResourceInteractionProcess
aggregationOfResourceInteractionProcessPerformedResourceScenario = make_Relation "ResourceInteractionProcess aggregation" "aggregated ResourceInteractionProcess"

{- performedResourceScenario : derived relation obtained by composing
   membershipOfPerformedResourceScenario and aggregationOfResourceInteractionProcessPerformedResourceScenario
   It directly links an Resource Agent Type to the final aggregated ResourceInteractionProcess
   hiding the reifying PerformedResourceScenario
-}
performedResourceScenario : Linkage ResourceAgentType ResourceInteractionProcess
performedResourceScenario = membershipOfPerformedResourceScenario  ∘  aggregationOfResourceInteractionProcessPerformedResourceScenario



-- -------------------------------------------------------------------------------------------- 
{- Performed Resource Process: 
A Performed Resource Process is a Resource Action Process operated by a Resource Agent Type.
-}
-- Aggregate Member : Performed Resource Process
PerformedResourceProcess : ClassOfClassOfBoundedIndividual
PerformedResourceProcess = ClassOfBoundedIndividual



--  PerformedResourceProcess is subTypeOf PerformedProcess
st-f8e61c7f621db43d-004b03b15ebd0fdb : PerformedResourceProcess ⊏ₑ PerformedProcess
st-f8e61c7f621db43d-004b03b15ebd0fdb = polySubTypeOf-identity

--  PerformedResourceProcess is subTypeOf ResourceActionProcess
st-f8e61c7f621db43d-e2ef095b62147bf9 : PerformedResourceProcess ⊏ₑ ResourceActionProcess
st-f8e61c7f621db43d-e2ef095b62147bf9 = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedResourceProcess :  Linkage ResourceAgentType PerformedResourceProcess
membershipOfPerformedResourceProcess = make_upwardNestingRelation "performedResourceProcess membership" "nested performedResourceProcess"

-- Aggregation relation
aggregationOfResourceActionProcessPerformedResourceProcess :  Linkage PerformedResourceProcess ResourceActionProcess
aggregationOfResourceActionProcessPerformedResourceProcess = make_Relation "ResourceActionProcess aggregation" "aggregated ResourceActionProcess"

{- performedResourceProcess : derived relation obtained by composing
   membershipOfPerformedResourceProcess and aggregationOfResourceActionProcessPerformedResourceProcess
   It directly links an Resource Agent Type to the final aggregated ResourceActionProcess
   hiding the reifying PerformedResourceProcess
-}
performedResourceProcess : Linkage ResourceAgentType ResourceActionProcess
performedResourceProcess = membershipOfPerformedResourceProcess  ∘  aggregationOfResourceActionProcessPerformedResourceProcess



-- -------------------------------------------------------------------------------------------- 
{- Resource Store: -}
-- Aggregate Member : Resource Store
ResourceStore : ClassOfClassOfIndividual
ResourceStore = ClassOfIndividual


--  ResourceStore is subTypeOf InformationStore
st-f8e7df39621f14b6-f4bee5925ee1be5b : ResourceStore ⊏ₑ InformationStore
st-f8e7df39621f14b6-f4bee5925ee1be5b = polySubTypeOf-identity

--  ResourceStore is subTypeOf InformationDomain
st-f8e7df39621f14b6-d6cd116d5ab97525 : ResourceStore ⊏ₑ InformationDomain
st-f8e7df39621f14b6-d6cd116d5ab97525 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceStore :  Linkage ResourceAgentType ResourceStore
membershipOfResourceStore = make_upwardNestingRelation "resourceStore membership" "nested resourceStore"

-- Aggregation relation
aggregationOfInformationDomainResourceStore :  Linkage ResourceStore InformationDomain
aggregationOfInformationDomainResourceStore = make_Relation "InformationDomain aggregation" "aggregated InformationDomain"

{- resourceStore : derived relation obtained by composing
   membershipOfResourceStore and aggregationOfInformationDomainResourceStore
   It directly links an Resource Agent Type to the final aggregated InformationDomain
   hiding the reifying ResourceStore
-}
resourceStore : Linkage ResourceAgentType InformationDomain
resourceStore = membershipOfResourceStore  ∘  aggregationOfInformationDomainResourceStore


