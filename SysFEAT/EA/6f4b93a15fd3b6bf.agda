{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Interaction Process: 
A Business Interaction Process is a story describing how the components of a Business-Entity (Department Types) interact to produce Business Outcome Events.This includes:- A course of events represented by information flows depicting the steps towards the delivery of expected Outcomes.- Components of an Department Type (Sub-Department Types or Organizational Position) that participate to the story.

Documentation : https://framework.sysfeat.com/pages/6f4b93a15fd3b6bf.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6f4b93a15fd3b6bf where -- ========== Business Interaction Process

open import Agda.Primitive
open import SysFEAT.EA.230b35b461d8884d public -- Business Resource Interaction Process
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type

BusinessInteractionProcess : ClassOfClassOfBoundedIndividual
BusinessInteractionProcess = ClassOfBoundedIndividual

--  BusinessInteractionProcess is subTypeOf BusinessResourceInteractionProcess
st-6f4b93a15fd3b6bf-230b35b461d8884d : BusinessInteractionProcess ⊏ₑ BusinessResourceInteractionProcess
st-6f4b93a15fd3b6bf-230b35b461d8884d = polySubTypeOf-identity

-- == Relationships =======================

{- Participant Department: -}
-- Aggregate Member : Participant Department
ParticipantDepartment : ClassOfClassOfIndividual
ParticipantDepartment = ClassOfIndividual

-- Membership relation
membershipOfParticipantDepartment :  Linkage BusinessInteractionProcess ParticipantDepartment
membershipOfParticipantDepartment = make_upwardNestingRelation "participantDepartment membership" "nested participantDepartment"

-- Aggregation relation
aggregationOfOrgUnitTypeParticipantDepartment :  Linkage ParticipantDepartment OrgUnitType
aggregationOfOrgUnitTypeParticipantDepartment = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- participantDepartment : derived relation obtained by composing
   membershipOfParticipantDepartment and aggregationOfOrgUnitTypeParticipantDepartment
   It directly links an Business Interaction Process to the final aggregated OrgUnitType
   hiding the reifying ParticipantDepartment
-}
participantDepartment : Linkage BusinessInteractionProcess OrgUnitType
participantDepartment = membershipOfParticipantDepartment  ∘  aggregationOfOrgUnitTypeParticipantDepartment

postulate -- participantDepartment is subTypeOf participantBusinessAgent
  st-6f4b94625fd3b99a-230b35ed61d88944  : participantDepartment   ⊏⋆ᵣ  participantBusinessAgent 

