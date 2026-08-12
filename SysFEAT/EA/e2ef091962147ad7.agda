{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Agent Type: 
A Resource Agent Type is an entity type which instance belongs to the physical space, and comprises Human Agent Categorys, Hardware System Categorys, Software System Categorys and Natural Resource Categorys. Resource Agent Type is the supertype of all types of Agent Types that produce and react to Resource Outcome Events.This includes:1) Business Agent Types which represent  physical resources that produce and react to Business Outcome Events of the enterprise.2) Technology Systems which represents enabling systems that produce and react to  Technology Outcome Events.
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

postulate --  ResourceAgentType is subTypeOf ResourceOperatingAsset
  st-f8e61e88621dba12 : ResourceAgentType ⊏ₑ ResourceOperatingAsset

postulate --  ResourceAgentType is subTypeOf AgentType
  st-7c348ff066f1991c : ResourceAgentType ⊏ₑ AgentType

-- == Relationships =======================

{- Specialized Business Operating Agent: -}
specializedBusinessOperatingAgent :  Linkage ResourceAgentType ResourceAgentType
specializedBusinessOperatingAgent = make_subTypeOf "Specialized Business Operating Agent" "specializedBusinessOperatingAgent"

postulate -- specializedBusinessOperatingAgent is subTypeOf specializedAgent
  st-325a377166f3470f-2b5b440b66ed56d4  : specializedBusinessOperatingAgent   ⊏⋆ᵣ  specializedAgent 
postulate -- specializedBusinessOperatingAgent is subTypeOf specializedResourceOperatingAsset
  st-325a377166f3470f-82a9879766ec3a29  : specializedBusinessOperatingAgent   ⊏⋆ᵣ  specializedResourceOperatingAsset 

{- Resource Connection: -}
-- Aggregate Member : Resource Connection
ResourceConnection : ClassOfClassOfIndividual
ResourceConnection = ClassOfIndividual

-- Membership relation
membershipOfResourceConnection :  Linkage ResourceAgentType ResourceConnection
membershipOfResourceConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceServiceInterfaceResourceConnection :  Linkage ResourceConnection ResourceServiceInterface
aggregationOfResourceServiceInterfaceResourceConnection = aggregationOfBuildingBlock

{- resourceConnection : derived relation obtained by composing
   membershipOfResourceConnection and aggregationOfResourceServiceInterfaceResourceConnection
   It directly links an Resource Agent Type to the final aggregated ResourceServiceInterface
   hiding the reifying ResourceConnection
-}
resourceConnection : Linkage ResourceAgentType ResourceServiceInterface
resourceConnection = membershipOfResourceConnection  ∘  aggregationOfResourceServiceInterfaceResourceConnection

{- Resource Agent Part: -}
-- Aggregate Member : Resource Agent Part
ResourceAgentPart : ClassOfClassOfIndividual
ResourceAgentPart = ClassOfIndividual

-- Membership relation
membershipOfResourceAgentPart :  Linkage ResourceAgentType ResourceAgentPart
membershipOfResourceAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeResourceAgentPart :  Linkage ResourceAgentPart ResourceAgentType
aggregationOfResourceAgentTypeResourceAgentPart = aggregationOfBuildingBlock

{- resourceAgentPart : derived relation obtained by composing
   membershipOfResourceAgentPart and aggregationOfResourceAgentTypeResourceAgentPart
   It directly links an Resource Agent Type to the final aggregated ResourceAgentType
   hiding the reifying ResourceAgentPart
-}
resourceAgentPart : Linkage ResourceAgentType ResourceAgentType
resourceAgentPart = membershipOfResourceAgentPart  ∘  aggregationOfResourceAgentTypeResourceAgentPart

{- Performed Resource Scenario: 
A Performed Resource Scenario is a Resource Interaction Process operated by a Resource Agent Type.
-}
-- Aggregate Member : Performed Resource Scenario
PerformedResourceScenario : ClassOfClassOfIndividual
PerformedResourceScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedResourceScenario :  Linkage ResourceAgentType PerformedResourceScenario
membershipOfPerformedResourceScenario = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceInteractionProcessPerformedResourceScenario :  Linkage PerformedResourceScenario ResourceInteractionProcess
aggregationOfResourceInteractionProcessPerformedResourceScenario = aggregationOfBuildingBlock

{- performedResourceScenario : derived relation obtained by composing
   membershipOfPerformedResourceScenario and aggregationOfResourceInteractionProcessPerformedResourceScenario
   It directly links an Resource Agent Type to the final aggregated ResourceInteractionProcess
   hiding the reifying PerformedResourceScenario
-}
performedResourceScenario : Linkage ResourceAgentType ResourceInteractionProcess
performedResourceScenario = membershipOfPerformedResourceScenario  ∘  aggregationOfResourceInteractionProcessPerformedResourceScenario

{- Performed Resource Process: 
A Performed Resource Process is a Resource Action Process operated by a Resource Agent Type.
-}
-- Aggregate Member : Performed Resource Process
PerformedResourceProcess : ClassOfClassOfIndividual
PerformedResourceProcess = ClassOfIndividual

-- Membership relation
membershipOfPerformedResourceProcess :  Linkage ResourceAgentType PerformedResourceProcess
membershipOfPerformedResourceProcess = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceActionProcessPerformedResourceProcess :  Linkage PerformedResourceProcess ResourceActionProcess
aggregationOfResourceActionProcessPerformedResourceProcess = aggregationOfBuildingBlock

{- performedResourceProcess : derived relation obtained by composing
   membershipOfPerformedResourceProcess and aggregationOfResourceActionProcessPerformedResourceProcess
   It directly links an Resource Agent Type to the final aggregated ResourceActionProcess
   hiding the reifying PerformedResourceProcess
-}
performedResourceProcess : Linkage ResourceAgentType ResourceActionProcess
performedResourceProcess = membershipOfPerformedResourceProcess  ∘  aggregationOfResourceActionProcessPerformedResourceProcess

{- Resource Store: -}
-- Aggregate Member : Resource Store
ResourceStore : ClassOfClassOfIndividual
ResourceStore = ClassOfIndividual

-- Membership relation
membershipOfResourceStore :  Linkage ResourceAgentType ResourceStore
membershipOfResourceStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationDomainResourceStore :  Linkage ResourceStore InformationDomain
aggregationOfInformationDomainResourceStore = aggregationOfBuildingBlock

{- resourceStore : derived relation obtained by composing
   membershipOfResourceStore and aggregationOfInformationDomainResourceStore
   It directly links an Resource Agent Type to the final aggregated InformationDomain
   hiding the reifying ResourceStore
-}
resourceStore : Linkage ResourceAgentType InformationDomain
resourceStore = membershipOfResourceStore  ∘  aggregationOfInformationDomainResourceStore
