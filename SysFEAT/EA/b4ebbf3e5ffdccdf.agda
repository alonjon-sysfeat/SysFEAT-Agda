{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Behavior: 
A Business Behavior is a Business Operating Asset that describes any action or reaction of a Business Agent Type to external or internal circumstances. This includes Business Resource Processes (actions), Business Resource Interaction Processs (stories) or service interactions (Business Service Interface).

Documentation : https://framework.sysfeat.com/pages/b4ebbf3e5ffdccdf.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.b4ebbf3e5ffdccdf where -- ========== Business Behavior

open import Agda.Primitive
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset
open import SysFEAT.EA.0185cd936221bd72 public -- Resource Behavior
open import SysFEAT.EA.82a9892166ec3b89 public -- Process Family
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain

BusinessBehavior : ClassOfClassOfBoundedIndividual
BusinessBehavior = ClassOfBoundedIndividual

--  BusinessBehavior is subTypeOf BusinessOperatingAsset
st-b4ebbf3e5ffdccdf-62466ea661b80d09 : BusinessBehavior ⊏ₑ BusinessOperatingAsset
st-b4ebbf3e5ffdccdf-62466ea661b80d09 = polySubTypeOf-identity

--  BusinessBehavior is subTypeOf ResourceBehavior
st-b4ebbf3e5ffdccdf-0185cd936221bd72 : BusinessBehavior ⊏ₑ ResourceBehavior
st-b4ebbf3e5ffdccdf-0185cd936221bd72 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Resource Behavior: -}
specializedBusinessResourceBehavior :  Linkage BusinessBehavior BusinessBehavior
specializedBusinessResourceBehavior = make_subTypeOf "Specialized Business Resource Behavior" "Specialized Business Resource Behavior"

postulate -- specializedBusinessResourceBehavior is subTypeOf specializedResourceBehavior
  st-325a37b666f34b83-325a376866f343d3  : specializedBusinessResourceBehavior   ⊏⋆ᵣ  specializedResourceBehavior 
postulate -- specializedBusinessResourceBehavior is subTypeOf specializedResourceAsset
  st-325a37b666f34b83-325a380e66f351f6  : specializedBusinessResourceBehavior   ⊏⋆ᵣ  specializedResourceAsset 

{- Supported Process Family: -}
supportedProcessFamily :  Linkage BusinessBehavior ProcessFamily
supportedProcessFamily = make_instanceOf "Supported Process Family" "Supported Process Family"


{- Resource Behavior Participant: 
A Resource Behavior Participant refers to the participation of a Business Agent Type in a Business Behavior as an actor of the Business Behavior.
-}
-- Aggregate Member : Resource Behavior Participant
ResourceBehaviorParticipant : ClassOfClassOfIndividual
ResourceBehaviorParticipant = ClassOfIndividual

-- Membership relation
membershipOfResourceBehaviorParticipant :  Linkage BusinessBehavior ResourceBehaviorParticipant
membershipOfResourceBehaviorParticipant = make_upwardNestingRelation "resourceBehaviorParticipant membership" "nested resourceBehaviorParticipant"

-- Aggregation relation
aggregationOfBusinessAgentTypeResourceBehaviorParticipant :  Linkage ResourceBehaviorParticipant BusinessAgentType
aggregationOfBusinessAgentTypeResourceBehaviorParticipant = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- resourceBehaviorParticipant : derived relation obtained by composing
   membershipOfResourceBehaviorParticipant and aggregationOfBusinessAgentTypeResourceBehaviorParticipant
   It directly links an Business Behavior to the final aggregated BusinessAgentType
   hiding the reifying ResourceBehaviorParticipant
-}
resourceBehaviorParticipant : Linkage BusinessBehavior BusinessAgentType
resourceBehaviorParticipant = membershipOfResourceBehaviorParticipant  ∘  aggregationOfBusinessAgentTypeResourceBehaviorParticipant

postulate -- resourceBehaviorParticipant is subTypeOf resourceBehaviorParticipant
  st-e0e87af46578a950-e0e874626578a341  : resourceBehaviorParticipant   ⊏⋆ᵣ  resourceBehaviorParticipant 


{- Business Behavior Part: -}
-- Aggregate Member : Business Behavior Part
BusinessBehaviorPart : ClassOfClassOfIndividual
BusinessBehaviorPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessBehaviorPart :  Linkage BusinessBehavior BusinessBehaviorPart
membershipOfBusinessBehaviorPart = make_upwardNestingRelation "businessBehaviorPart membership" "nested businessBehaviorPart"

-- Aggregation relation
aggregationOfBusinessBehaviorBusinessBehaviorPart :  Linkage BusinessBehaviorPart BusinessBehavior
aggregationOfBusinessBehaviorBusinessBehaviorPart = make_Relation "BusinessBehavior aggregation" "aggregated BusinessBehavior"

{- businessBehaviorPart : derived relation obtained by composing
   membershipOfBusinessBehaviorPart and aggregationOfBusinessBehaviorBusinessBehaviorPart
   It directly links an Business Behavior to the final aggregated BusinessBehavior
   hiding the reifying BusinessBehaviorPart
-}
businessBehaviorPart : Linkage BusinessBehavior BusinessBehavior
businessBehaviorPart = membershipOfBusinessBehaviorPart  ∘  aggregationOfBusinessBehaviorBusinessBehaviorPart

postulate -- businessBehaviorPart is subTypeOf businessOperatingAssetPart
  st-b777c1de68b07336-b777c10368b071b8  : businessBehaviorPart   ⊏⋆ᵣ  businessOperatingAssetPart 


{- Business Data Store: -}
-- Aggregate Member : Business Data Store
BusinessDataStore : ClassOfClassOfIndividual
BusinessDataStore = ClassOfIndividual

-- Membership relation
membershipOfBusinessDataStore :  Linkage BusinessBehavior BusinessDataStore
membershipOfBusinessDataStore = make_upwardNestingRelation "businessDataStore membership" "nested businessDataStore"

-- Aggregation relation
aggregationOfDataDomainBusinessDataStore :  Linkage BusinessDataStore DataDomain
aggregationOfDataDomainBusinessDataStore = make_Relation "DataDomain aggregation" "aggregated DataDomain"

{- businessDataStore : derived relation obtained by composing
   membershipOfBusinessDataStore and aggregationOfDataDomainBusinessDataStore
   It directly links an Business Behavior to the final aggregated DataDomain
   hiding the reifying BusinessDataStore
-}
businessDataStore : Linkage BusinessBehavior DataDomain
businessDataStore = membershipOfBusinessDataStore  ∘  aggregationOfDataDomainBusinessDataStore

postulate -- businessDataStore is subTypeOf operatingProcessStore
  st-b4ebd0e45ffdef12-d69196306228f16e  : businessDataStore   ⊏⋆ᵣ  operatingProcessStore 

