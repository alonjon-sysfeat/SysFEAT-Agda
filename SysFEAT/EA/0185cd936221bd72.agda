{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Behavior: 
An Resource Behavior is an Resource Operating Asset that describes any action or reaction of a Resource Agent Type to external or internal circumstances. This includes Resource Action Processes (actions), Resource Interaction Processs (stories) or service interactions (Business Service Interface).

Documentation : https://framework.sysfeat.com/pages/0185cd936221bd72.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0185cd936221bd72 where -- ========== Resource Behavior

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

ResourceBehavior : ClassOfClassOfBoundedIndividual
ResourceBehavior = ClassOfBoundedIndividual

--  ResourceBehavior is subTypeOf ResourceOperatingAsset
st-0185cd936221bd72-f8e61da0621db6fa : ResourceBehavior ⊏ₑ ResourceOperatingAsset
st-0185cd936221bd72-f8e61da0621db6fa = polySubTypeOf-identity

--  ResourceBehavior is subTypeOf BehaviorType
st-0185cd936221bd72-986cd4ec5ffca3ac : ResourceBehavior ⊏ₑ BehaviorType
st-0185cd936221bd72-986cd4ec5ffca3ac = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Behavior: -}
specializedResourceBehavior :  Linkage ResourceBehavior ResourceBehavior
specializedResourceBehavior = make_subTypeOf "Specialized Resource Behavior" "Specialized Resource Behavior"

postulate -- specializedResourceBehavior is subTypeOf specializedBehavior
  st-325a376866f343d3-2b5b452d66ed5855  : specializedResourceBehavior   ⊏⋆ᵣ  specializedBehavior 
postulate -- specializedResourceBehavior is subTypeOf specializedResourceOperatingAsset
  st-325a376866f343d3-82a9879766ec3a29  : specializedResourceBehavior   ⊏⋆ᵣ  specializedResourceOperatingAsset 

{- Resource Behavior Participant: 
A Resource Behavior Participant is the participation of a Resource Agent Type in a Resource Behavior.
-}
-- Aggregate Member : Resource Behavior Participant
ResourceBehaviorParticipant : ClassOfClassOfIndividual
ResourceBehaviorParticipant = ClassOfIndividual

-- Membership relation
membershipOfResourceBehaviorParticipant :  Linkage ResourceBehavior ResourceBehaviorParticipant
membershipOfResourceBehaviorParticipant = make_upwardNestingRelation "resourceBehaviorParticipant membership" "nested resourceBehaviorParticipant"

-- Aggregation relation
aggregationOfResourceAgentTypeResourceBehaviorParticipant :  Linkage ResourceBehaviorParticipant ResourceAgentType
aggregationOfResourceAgentTypeResourceBehaviorParticipant = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- resourceBehaviorParticipant : derived relation obtained by composing
   membershipOfResourceBehaviorParticipant and aggregationOfResourceAgentTypeResourceBehaviorParticipant
   It directly links an Resource Behavior to the final aggregated ResourceAgentType
   hiding the reifying ResourceBehaviorParticipant
-}
resourceBehaviorParticipant : Linkage ResourceBehavior ResourceAgentType
resourceBehaviorParticipant = membershipOfResourceBehaviorParticipant  ∘  aggregationOfResourceAgentTypeResourceBehaviorParticipant

postulate -- resourceBehaviorParticipant is subTypeOf behaviorParticipant
  st-e0e874626578a341-e0e86fad65789c43  : resourceBehaviorParticipant   ⊏⋆ᵣ  behaviorParticipant 
postulate -- resourceBehaviorParticipant is subTypeOf resourceOperatingAssetPart
  st-e0e874626578a341-b776bf0868b0fbb3  : resourceBehaviorParticipant   ⊏⋆ᵣ  resourceOperatingAssetPart 

