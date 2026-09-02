{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Agent Type: 
A Business Agent Type is a Resource Agent Type which produces and reacts to Business Outcome Events of the enterprise.A Business Agent Type can be a Human Resource (Organizational Position or Department Type), a Business System (Business Software System or Concrete Hardware System) or a Capability Configuration (an assembly of Org-Unit Types and Business Systems.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.bcebd31f5491302c where -- ========== Business Agent Type

open import Agda.Primitive
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.230b35b461d8884d public -- Business Resource Interaction Process
open import SysFEAT.EA.7c40c3c85527466b public -- Business Resource Process
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain

BusinessAgentType : ClassOfClassOfBoundedIndividual
BusinessAgentType = ClassOfBoundedIndividual

--  BusinessAgentType is subTypeOf BusinessOperatingAsset
st-6246708a61b80fd2 : BusinessAgentType ⊏ₑ BusinessOperatingAsset
st-6246708a61b80fd2 = polySubTypeOf-identity

--  BusinessAgentType is subTypeOf ResourceAgentType
st-6a70c9a8678776a1 : BusinessAgentType ⊏ₑ ResourceAgentType
st-6a70c9a8678776a1 = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Business Function: -}
realizedBusinessFunction :  Linkage BusinessAgentType ConceptualAgent
realizedBusinessFunction = make_subTypeOf "Realized Business Function" "realizedBusinessFunction"

postulate -- realizedBusinessFunction is subTypeOf realizedLogicalOperatingAsset
  st-332c460366f1783a-332c47ab66f17a2e  : realizedBusinessFunction   ⊏⋆ᵣ  realizedLogicalOperatingAsset 

{- Specialized Resource Agent: -}
specializedResourceAgent :  Linkage BusinessAgentType BusinessAgentType
specializedResourceAgent = make_subTypeOf "Specialized Resource Agent" "specializedResourceAgent"

postulate -- specializedResourceAgent is subTypeOf specializedBusinessOperatingAgent
  st-52c3540066f226f4-325a377166f3470f  : specializedResourceAgent   ⊏⋆ᵣ  specializedBusinessOperatingAgent 
postulate -- specializedResourceAgent is subTypeOf specializedResourceAsset
  st-52c3540066f226f4-325a380e66f351f6  : specializedResourceAgent   ⊏⋆ᵣ  specializedResourceAsset 

{- Business Connection: -}
-- Aggregate Member : Business Connection
BusinessConnection : ClassOfClassOfIndividual
BusinessConnection = ClassOfIndividual

-- Membership relation
membershipOfBusinessConnection :  Linkage BusinessAgentType BusinessConnection
membershipOfBusinessConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessServiceInterfaceBusinessConnection :  Linkage BusinessConnection BusinessServiceInterface
aggregationOfBusinessServiceInterfaceBusinessConnection = aggregationOfBuildingBlock

{- businessConnection : derived relation obtained by composing
   membershipOfBusinessConnection and aggregationOfBusinessServiceInterfaceBusinessConnection
   It directly links an Business Agent Type to the final aggregated BusinessServiceInterface
   hiding the reifying BusinessConnection
-}
businessConnection : Linkage BusinessAgentType BusinessServiceInterface
businessConnection = membershipOfBusinessConnection  ∘  aggregationOfBusinessServiceInterfaceBusinessConnection

{- Performed Resource Scenario: 
A Performed Resource Scenario is a Business Resource Interaction Process operated by a Business Agent Type.
-}
-- Aggregate Member : Performed Resource Scenario
PerformedResourceScenario : ClassOfClassOfIndividual
PerformedResourceScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedResourceScenario :  Linkage BusinessAgentType PerformedResourceScenario
membershipOfPerformedResourceScenario = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario :  Linkage PerformedResourceScenario BusinessResourceInteractionProcess
aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario = aggregationOfBuildingBlock

{- performedResourceScenario : derived relation obtained by composing
   membershipOfPerformedResourceScenario and aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario
   It directly links an Business Agent Type to the final aggregated BusinessResourceInteractionProcess
   hiding the reifying PerformedResourceScenario
-}
performedResourceScenario : Linkage BusinessAgentType BusinessResourceInteractionProcess
performedResourceScenario = membershipOfPerformedResourceScenario  ∘  aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario

{- Resource Agent Part: -}
-- Aggregate Member : Resource Agent Part
ResourceAgentPart : ClassOfClassOfIndividual
ResourceAgentPart = ClassOfIndividual

-- Membership relation
membershipOfResourceAgentPart :  Linkage BusinessAgentType ResourceAgentPart
membershipOfResourceAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessAgentTypeResourceAgentPart :  Linkage ResourceAgentPart BusinessAgentType
aggregationOfBusinessAgentTypeResourceAgentPart = aggregationOfBuildingBlock

{- resourceAgentPart : derived relation obtained by composing
   membershipOfResourceAgentPart and aggregationOfBusinessAgentTypeResourceAgentPart
   It directly links an Business Agent Type to the final aggregated BusinessAgentType
   hiding the reifying ResourceAgentPart
-}
resourceAgentPart : Linkage BusinessAgentType BusinessAgentType
resourceAgentPart = membershipOfResourceAgentPart  ∘  aggregationOfBusinessAgentTypeResourceAgentPart

{- Performed Business Resource Process: -}
-- Aggregate Member : Performed Business Resource Process
PerformedBusinessResourceProcess : ClassOfClassOfIndividual
PerformedBusinessResourceProcess = ClassOfIndividual

-- Membership relation
membershipOfPerformedBusinessResourceProcess :  Linkage BusinessAgentType PerformedBusinessResourceProcess
membershipOfPerformedBusinessResourceProcess = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess :  Linkage PerformedBusinessResourceProcess BusinessResourceProcess
aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess = aggregationOfBuildingBlock

{- performedBusinessResourceProcess : derived relation obtained by composing
   membershipOfPerformedBusinessResourceProcess and aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess
   It directly links an Business Agent Type to the final aggregated BusinessResourceProcess
   hiding the reifying PerformedBusinessResourceProcess
-}
performedBusinessResourceProcess : Linkage BusinessAgentType BusinessResourceProcess
performedBusinessResourceProcess = membershipOfPerformedBusinessResourceProcess  ∘  aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess

{- Resource Agent Store: -}
-- Aggregate Member : Resource Agent Store
ResourceAgentStore : ClassOfClassOfIndividual
ResourceAgentStore = ClassOfIndividual

-- Membership relation
membershipOfResourceAgentStore :  Linkage BusinessAgentType ResourceAgentStore
membershipOfResourceAgentStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataDomainResourceAgentStore :  Linkage ResourceAgentStore DataDomain
aggregationOfDataDomainResourceAgentStore = aggregationOfBuildingBlock

{- resourceAgentStore : derived relation obtained by composing
   membershipOfResourceAgentStore and aggregationOfDataDomainResourceAgentStore
   It directly links an Business Agent Type to the final aggregated DataDomain
   hiding the reifying ResourceAgentStore
-}
resourceAgentStore : Linkage BusinessAgentType DataDomain
resourceAgentStore = membershipOfResourceAgentStore  ∘  aggregationOfDataDomainResourceAgentStore
