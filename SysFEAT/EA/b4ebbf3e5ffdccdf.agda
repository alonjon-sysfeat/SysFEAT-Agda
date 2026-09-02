{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Behavior: 
A Business Behavior is a Business Operating Asset that describes any action or reaction of a Business Agent Type to external or internal circumstances. This includes Business Resource Processes (actions), Business Resource Interaction Processs (stories) or service interactions (Business Service Interface).
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
st-d69191b26228ecc1 : BusinessBehavior ⊏ₑ BusinessOperatingAsset
st-d69191b26228ecc1 = polySubTypeOf-identity

--  BusinessBehavior is subTypeOf ResourceBehavior
st-6a70c78167877432 : BusinessBehavior ⊏ₑ ResourceBehavior
st-6a70c78167877432 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Resource Behavior: -}
specializedBusinessResourceBehavior :  Linkage BusinessBehavior BusinessBehavior
specializedBusinessResourceBehavior = make_subTypeOf "Specialized Business Resource Behavior" "specializedBusinessResourceBehavior"

postulate -- specializedBusinessResourceBehavior is subTypeOf specializedResourceBehavior
  st-325a37b666f34b83-325a376866f343d3  : specializedBusinessResourceBehavior   ⊏⋆ᵣ  specializedResourceBehavior 
postulate -- specializedBusinessResourceBehavior is subTypeOf specializedResourceAsset
  st-325a37b666f34b83-325a380e66f351f6  : specializedBusinessResourceBehavior   ⊏⋆ᵣ  specializedResourceAsset 

{- Supported Process Family: -}
supportedProcessFamily :  Linkage BusinessBehavior ProcessFamily
supportedProcessFamily = make_instanceOf "Supported Process Family" "supportedProcessFamily"


{- Resource Behavior Participant: 
A Resource Behavior Participant refers to the participation of a Business Agent Type in a Business Behavior as an actor of the Business Behavior.
-}
-- Aggregate Member : Resource Behavior Participant
ResourceBehaviorParticipant : ClassOfClassOfIndividual
ResourceBehaviorParticipant = ClassOfIndividual

-- Membership relation
membershipOfResourceBehaviorParticipant :  Linkage BusinessBehavior ResourceBehaviorParticipant
membershipOfResourceBehaviorParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessAgentTypeResourceBehaviorParticipant :  Linkage ResourceBehaviorParticipant BusinessAgentType
aggregationOfBusinessAgentTypeResourceBehaviorParticipant = aggregationOfBuildingBlock

{- resourceBehaviorParticipant : derived relation obtained by composing
   membershipOfResourceBehaviorParticipant and aggregationOfBusinessAgentTypeResourceBehaviorParticipant
   It directly links an Business Behavior to the final aggregated BusinessAgentType
   hiding the reifying ResourceBehaviorParticipant
-}
resourceBehaviorParticipant : Linkage BusinessBehavior BusinessAgentType
resourceBehaviorParticipant = membershipOfResourceBehaviorParticipant  ∘  aggregationOfBusinessAgentTypeResourceBehaviorParticipant

{- Business Behavior Part: -}
-- Aggregate Member : Business Behavior Part
BusinessBehaviorPart : ClassOfClassOfIndividual
BusinessBehaviorPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessBehaviorPart :  Linkage BusinessBehavior BusinessBehaviorPart
membershipOfBusinessBehaviorPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessBehaviorBusinessBehaviorPart :  Linkage BusinessBehaviorPart BusinessBehavior
aggregationOfBusinessBehaviorBusinessBehaviorPart = aggregationOfBuildingBlock

{- businessBehaviorPart : derived relation obtained by composing
   membershipOfBusinessBehaviorPart and aggregationOfBusinessBehaviorBusinessBehaviorPart
   It directly links an Business Behavior to the final aggregated BusinessBehavior
   hiding the reifying BusinessBehaviorPart
-}
businessBehaviorPart : Linkage BusinessBehavior BusinessBehavior
businessBehaviorPart = membershipOfBusinessBehaviorPart  ∘  aggregationOfBusinessBehaviorBusinessBehaviorPart

{- Business Data Store: -}
-- Aggregate Member : Business Data Store
BusinessDataStore : ClassOfClassOfIndividual
BusinessDataStore = ClassOfIndividual

-- Membership relation
membershipOfBusinessDataStore :  Linkage BusinessBehavior BusinessDataStore
membershipOfBusinessDataStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataDomainBusinessDataStore :  Linkage BusinessDataStore DataDomain
aggregationOfDataDomainBusinessDataStore = aggregationOfBuildingBlock

{- businessDataStore : derived relation obtained by composing
   membershipOfBusinessDataStore and aggregationOfDataDomainBusinessDataStore
   It directly links an Business Behavior to the final aggregated DataDomain
   hiding the reifying BusinessDataStore
-}
businessDataStore : Linkage BusinessBehavior DataDomain
businessDataStore = membershipOfBusinessDataStore  ∘  aggregationOfDataDomainBusinessDataStore
