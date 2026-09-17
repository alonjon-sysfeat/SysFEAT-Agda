{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Process: 
Individual Process is the root instance of Action Process Type.

Documentation : https://framework.sysfeat.com/pages/a273b4f465b7a81f.htm

External references:
  OpenGroup - ArchiMate - Process: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Specializations-of-Structure-and-Behavior-Elements
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a273b4f465b7a81f where -- ========== Individual Process

open import Agda.Primitive
open import SysFEAT.SOF.e9af119866e86785 public -- Individual Behavior
open import SysFEAT.SOF.d682ef5e56144e77 public -- Action Process Type
open import SysFEAT.SOF.9e3837e46192fcad public -- Individual Agent

IndividualProcess : ActionProcessType
IndividualProcess = BoundedIndividual

--  IndividualProcess is subTypeOf IndividualBehavior
st-a273b4f465b7a81f-e9af119866e86785 : IndividualProcess ⊏ₑ IndividualBehavior
st-a273b4f465b7a81f-e9af119866e86785 = polySubTypeOf-identity

postulate -- IndividualProcess is PowerInstanceOf Action Process Type
  a44facab6749d875 : IndividualProcess ∷ₚₑ ActionProcessType
postulate -- ActionProcessType is ReflexivePowerType 
  41909b3d6aaa4577 : ActionProcessType ⊏ₘₑ IndividualProcess

-- == Relations =======================

{- Individual Process Part: -}
-- Aggregate Member : Individual Process Part
IndividualProcessPart : AggregateHolonymyType
IndividualProcessPart = AggregateHolonymy


-- Membership relation
membershipOfIndividualProcessPart :  Linkage IndividualProcess IndividualProcessPart
membershipOfIndividualProcessPart = make_upwardNestingRelation "individualProcessPart membership" "nested individualProcessPart"

-- Aggregation relation
aggregationOfIndividualProcessIndividualProcessPart :  Linkage IndividualProcessPart IndividualProcess
aggregationOfIndividualProcessIndividualProcessPart = make_Relation "IndividualProcess aggregation" "aggregated IndividualProcess"

{- individualProcessPart : derived relation obtained by composing
   membershipOfIndividualProcessPart and aggregationOfIndividualProcessIndividualProcessPart
   It directly links an Individual Process to the final aggregated IndividualProcess
   hiding the reifying IndividualProcessPart
-}
individualProcessPart : Linkage IndividualProcess IndividualProcess
individualProcessPart = membershipOfIndividualProcessPart  ∘  aggregationOfIndividualProcessIndividualProcessPart

postulate -- individualProcessPart is subTypeOf individualBehaviorPart
  st-ffb903ac68d37181-ffb9011b68d36c96  : individualProcessPart   ⊏⋆ᵣ  individualBehaviorPart 


{- Active Participant: 
An Active Participant is the Aggregate Holonymy of an Individual Agent that indicates that the aggregated Individual Agent is an active participant of the Individual Process.
-}
-- Aggregate Member : Active Participant
ActiveParticipant : AggregateHolonymyType
ActiveParticipant = AggregateHolonymy


-- Membership relation
membershipOfActiveParticipant :  Linkage IndividualProcess ActiveParticipant
membershipOfActiveParticipant = make_upwardNestingRelation "activeParticipant membership" "nested activeParticipant"

-- Aggregation relation
aggregationOfIndividualAgentActiveParticipant :  Linkage ActiveParticipant IndividualAgent
aggregationOfIndividualAgentActiveParticipant = make_Relation "IndividualAgent aggregation" "aggregated IndividualAgent"

{- activeParticipant : derived relation obtained by composing
   membershipOfActiveParticipant and aggregationOfIndividualAgentActiveParticipant
   It directly links an Individual Process to the final aggregated IndividualAgent
   hiding the reifying ActiveParticipant
-}
activeParticipant : Linkage IndividualProcess IndividualAgent
activeParticipant = membershipOfActiveParticipant  ∘  aggregationOfIndividualAgentActiveParticipant

postulate -- activeParticipant is subTypeOf individualParticipant
  st-e9af10cd66e865ee-ffb9014568d36d76  : activeParticipant   ⊏⋆ᵣ  individualParticipant 

