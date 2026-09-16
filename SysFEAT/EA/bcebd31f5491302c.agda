{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Agent Type: 
A Business Agent Type is a Resource Agent Type which produces and reacts to Business Outcome Events of the enterprise.A Business Agent Type can be a Human Resource (Organizational Position or Department Type), a Business System (Business Software System or Concrete Hardware System) or a Capability Configuration (an assembly of Org-Unit Types and Business Systems.

Documentation : https://framework.sysfeat.com/pages/bcebd31f5491302c.htm

External references:
  OMG - UAF - ResourcePerformer: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#resourceperformer
  OpenGroup - TOGAF - Definition - Business System: https://pubs.opengroup.org/togaf-standard/introduction/apdxb.html#tag_06_03
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
st-bcebd31f5491302c-62466ea661b80d09 : BusinessAgentType ⊏ₑ BusinessOperatingAsset
st-bcebd31f5491302c-62466ea661b80d09 = polySubTypeOf-identity

--  BusinessAgentType is subTypeOf ResourceAgentType
st-bcebd31f5491302c-e2ef091962147ad7 : BusinessAgentType ⊏ₑ ResourceAgentType
st-bcebd31f5491302c-e2ef091962147ad7 = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Business Function: -}
realizedBusinessFunction :  Linkage BusinessAgentType ConceptualAgent
realizedBusinessFunction = make_subTypeOf "Realized Business Function" "Realized Business Function"

postulate -- realizedBusinessFunction is subTypeOf realizedLogicalOperatingAsset
  st-332c460366f1783a-332c47ab66f17a2e  : realizedBusinessFunction   ⊏⋆ᵣ  realizedLogicalOperatingAsset 

{- Specialized Resource Agent: -}
specializedResourceAgent :  Linkage BusinessAgentType BusinessAgentType
specializedResourceAgent = make_subTypeOf "Specialized Resource Agent" "Specialized Resource Agent"

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
membershipOfBusinessConnection = make_upwardNestingRelation "businessConnection membership" "nested businessConnection"

-- Aggregation relation
aggregationOfBusinessServiceInterfaceBusinessConnection :  Linkage BusinessConnection BusinessServiceInterface
aggregationOfBusinessServiceInterfaceBusinessConnection = make_Relation "BusinessServiceInterface aggregation" "aggregated BusinessServiceInterface"

{- businessConnection : derived relation obtained by composing
   membershipOfBusinessConnection and aggregationOfBusinessServiceInterfaceBusinessConnection
   It directly links an Business Agent Type to the final aggregated BusinessServiceInterface
   hiding the reifying BusinessConnection
-}
businessConnection : Linkage BusinessAgentType BusinessServiceInterface
businessConnection = membershipOfBusinessConnection  ∘  aggregationOfBusinessServiceInterfaceBusinessConnection

postulate -- businessConnection is subTypeOf resourceConnection
  st-1f942587622764f8-e2c5927d61dee3e7  : businessConnection   ⊏⋆ᵣ  resourceConnection 


{- Performed Resource Scenario: 
A Performed Resource Scenario is a Business Resource Interaction Process operated by a Business Agent Type.
-}
-- Aggregate Member : Performed Resource Scenario
PerformedResourceScenario : ClassOfClassOfIndividual
PerformedResourceScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedResourceScenario :  Linkage BusinessAgentType PerformedResourceScenario
membershipOfPerformedResourceScenario = make_upwardNestingRelation "performedResourceScenario membership" "nested performedResourceScenario"

-- Aggregation relation
aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario :  Linkage PerformedResourceScenario BusinessResourceInteractionProcess
aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario = make_Relation "BusinessResourceInteractionProcess aggregation" "aggregated BusinessResourceInteractionProcess"

{- performedResourceScenario : derived relation obtained by composing
   membershipOfPerformedResourceScenario and aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario
   It directly links an Business Agent Type to the final aggregated BusinessResourceInteractionProcess
   hiding the reifying PerformedResourceScenario
-}
performedResourceScenario : Linkage BusinessAgentType BusinessResourceInteractionProcess
performedResourceScenario = membershipOfPerformedResourceScenario  ∘  aggregationOfBusinessResourceInteractionProcessPerformedResourceScenario

postulate -- performedResourceScenario is subTypeOf performedResourceScenario
  st-230b3f9061d8937b-7d330fcd62824acd  : performedResourceScenario   ⊏⋆ᵣ  performedResourceScenario 


{- Resource Agent Part: -}
-- Aggregate Member : Resource Agent Part
ResourceAgentPart : ClassOfClassOfIndividual
ResourceAgentPart = ClassOfIndividual

-- Membership relation
membershipOfResourceAgentPart :  Linkage BusinessAgentType ResourceAgentPart
membershipOfResourceAgentPart = make_upwardNestingRelation "resourceAgentPart membership" "nested resourceAgentPart"

-- Aggregation relation
aggregationOfBusinessAgentTypeResourceAgentPart :  Linkage ResourceAgentPart BusinessAgentType
aggregationOfBusinessAgentTypeResourceAgentPart = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- resourceAgentPart : derived relation obtained by composing
   membershipOfResourceAgentPart and aggregationOfBusinessAgentTypeResourceAgentPart
   It directly links an Business Agent Type to the final aggregated BusinessAgentType
   hiding the reifying ResourceAgentPart
-}
resourceAgentPart : Linkage BusinessAgentType BusinessAgentType
resourceAgentPart = membershipOfResourceAgentPart  ∘  aggregationOfBusinessAgentTypeResourceAgentPart

postulate -- resourceAgentPart is subTypeOf resourceAgentPart
  st-24034f6d5fc79c3f-e2ef09de62147eb7  : resourceAgentPart   ⊏⋆ᵣ  resourceAgentPart 
postulate -- resourceAgentPart is subTypeOf businessOperatingAssetPart
  st-24034f6d5fc79c3f-b777c10368b071b8  : resourceAgentPart   ⊏⋆ᵣ  businessOperatingAssetPart 


{- Performed Business Resource Process: -}
-- Aggregate Member : Performed Business Resource Process
PerformedBusinessResourceProcess : ClassOfClassOfIndividual
PerformedBusinessResourceProcess = ClassOfIndividual

-- Membership relation
membershipOfPerformedBusinessResourceProcess :  Linkage BusinessAgentType PerformedBusinessResourceProcess
membershipOfPerformedBusinessResourceProcess = make_upwardNestingRelation "performedBusinessResourceProcess membership" "nested performedBusinessResourceProcess"

-- Aggregation relation
aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess :  Linkage PerformedBusinessResourceProcess BusinessResourceProcess
aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess = make_Relation "BusinessResourceProcess aggregation" "aggregated BusinessResourceProcess"

{- performedBusinessResourceProcess : derived relation obtained by composing
   membershipOfPerformedBusinessResourceProcess and aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess
   It directly links an Business Agent Type to the final aggregated BusinessResourceProcess
   hiding the reifying PerformedBusinessResourceProcess
-}
performedBusinessResourceProcess : Linkage BusinessAgentType BusinessResourceProcess
performedBusinessResourceProcess = membershipOfPerformedBusinessResourceProcess  ∘  aggregationOfBusinessResourceProcessPerformedBusinessResourceProcess

postulate -- performedBusinessResourceProcess is subTypeOf performedResourceProcess
  st-240353b45fc7a13f-f8e61c7f621db43d  : performedBusinessResourceProcess   ⊏⋆ᵣ  performedResourceProcess 


{- Resource Agent Store: -}
-- Aggregate Member : Resource Agent Store
ResourceAgentStore : ClassOfClassOfIndividual
ResourceAgentStore = ClassOfIndividual

-- Membership relation
membershipOfResourceAgentStore :  Linkage BusinessAgentType ResourceAgentStore
membershipOfResourceAgentStore = make_upwardNestingRelation "resourceAgentStore membership" "nested resourceAgentStore"

-- Aggregation relation
aggregationOfDataDomainResourceAgentStore :  Linkage ResourceAgentStore DataDomain
aggregationOfDataDomainResourceAgentStore = make_Relation "DataDomain aggregation" "aggregated DataDomain"

{- resourceAgentStore : derived relation obtained by composing
   membershipOfResourceAgentStore and aggregationOfDataDomainResourceAgentStore
   It directly links an Business Agent Type to the final aggregated DataDomain
   hiding the reifying ResourceAgentStore
-}
resourceAgentStore : Linkage BusinessAgentType DataDomain
resourceAgentStore = membershipOfResourceAgentStore  ∘  aggregationOfDataDomainResourceAgentStore

postulate -- resourceAgentStore is subTypeOf resourceStore
  st-ca9df5bb5fcf5a75-f8e7df39621f14b6  : resourceAgentStore   ⊏⋆ᵣ  resourceStore 

