{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Behavioral Rule: 
A Behavioral Rule is a Directive intended to guide the Behavior of Agent Types, in compliance with enterprise Policy(ies) or regulations.Often, a Behavioral Rule is derived from a Policy. Behavioral Rules are enforced in Processes and Agent Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.190c74f868966584 where -- ========== Behavioral Rule

open import Agda.Primitive
open import SysFEAT.SOF.515c6b23689335c3 public -- Directive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy

BehavioralRule : PropertyType
BehavioralRule = ClassOfProperty

--  BehavioralRule is subTypeOf Directive
st-fe2203f05c4f100c : BehavioralRule ⊏ₑ Directive
st-fe2203f05c4f100c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Behavioral Rule: -}
specializedBehavioralRule :  Linkage BehavioralRule BehavioralRule
specializedBehavioralRule = make_subTypeOf "Specialized Behavioral Rule" "specializedBehavioralRule"

postulate -- specializedBehavioralRule is subTypeOf specializedDirective
  st-01f10e56689b5157-190c79c26896690d  : specializedBehavioralRule   ⊏⋆ᵣ  specializedDirective 

{- Policy Derivation: 
Statement that a Behavioral Rule is the realization of a Policy.
-}
-- Aggregate Member : Policy Derivation
PolicyDerivation : ClassOfClassOfIndividual
PolicyDerivation = ClassOfIndividual

-- Membership relation
membershipOfPolicyDerivation :  Linkage BehavioralRule PolicyDerivation
membershipOfPolicyDerivation = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPolicyPolicyDerivation :  Linkage PolicyDerivation Policy
aggregationOfPolicyPolicyDerivation = aggregationOfBuildingBlock

{- policyDerivation : derived relation obtained by composing
   membershipOfPolicyDerivation and aggregationOfPolicyPolicyDerivation
   It directly links an Behavioral Rule to the final aggregated Policy
   hiding the reifying PolicyDerivation
-}
policyDerivation : Linkage BehavioralRule Policy
policyDerivation = membershipOfPolicyDerivation  ∘  aggregationOfPolicyPolicyDerivation
