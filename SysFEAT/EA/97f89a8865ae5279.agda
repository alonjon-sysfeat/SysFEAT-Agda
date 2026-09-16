{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Behavior: 
A Technology Behavior is a  that describes any action or reaction of an Agent to external or internal Events. Behaviors include Processes (action), Interaction Scenarios (stories) or interactions (Service Interface).

Documentation : https://framework.sysfeat.com/pages/97f89a8865ae5279.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.97f89a8865ae5279 where -- ========== Technology Behavior

open import Agda.Primitive
open import SysFEAT.EA.d16006d362e085f2 public -- Technology Operating Asset
open import SysFEAT.EA.0185cd936221bd72 public -- Resource Behavior
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System

TechnologyBehavior : ClassOfClassOfBoundedIndividual
TechnologyBehavior = ClassOfBoundedIndividual

--  TechnologyBehavior is subTypeOf TechnologyOperatingAsset
st-97f89a8865ae5279-d16006d362e085f2 : TechnologyBehavior ⊏ₑ TechnologyOperatingAsset
st-97f89a8865ae5279-d16006d362e085f2 = polySubTypeOf-identity

--  TechnologyBehavior is subTypeOf ResourceBehavior
st-97f89a8865ae5279-0185cd936221bd72 : TechnologyBehavior ⊏ₑ ResourceBehavior
st-97f89a8865ae5279-0185cd936221bd72 = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Participant: -}
-- Aggregate Member : Technology Participant
TechnologyParticipant : ClassOfClassOfIndividual
TechnologyParticipant = ClassOfIndividual

-- Membership relation
membershipOfTechnologyParticipant :  Linkage TechnologyBehavior TechnologyParticipant
membershipOfTechnologyParticipant = make_upwardNestingRelation "technologyParticipant membership" "nested technologyParticipant"

-- Aggregation relation
aggregationOfTechnologySystemTechnologyParticipant :  Linkage TechnologyParticipant TechnologySystem
aggregationOfTechnologySystemTechnologyParticipant = make_Relation "TechnologySystem aggregation" "aggregated TechnologySystem"

{- technologyParticipant : derived relation obtained by composing
   membershipOfTechnologyParticipant and aggregationOfTechnologySystemTechnologyParticipant
   It directly links an Technology Behavior to the final aggregated TechnologySystem
   hiding the reifying TechnologyParticipant
-}
technologyParticipant : Linkage TechnologyBehavior TechnologySystem
technologyParticipant = membershipOfTechnologyParticipant  ∘  aggregationOfTechnologySystemTechnologyParticipant


