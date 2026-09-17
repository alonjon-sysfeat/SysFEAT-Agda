{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative: 
An Initiative is any piece of work that is undertaken or attempted under the responsibility of a Steering Authority.Initiatives range from single project to long term initiatives (Enduring Initiative) such as Enterprises.Initiatives are sychronized over time using Initiative Milestones.

Documentation : https://framework.sysfeat.com/pages/0ffeec41600be08a.htm

External references:
  Merriam Webster - Undertaking: https://www.merriam-webster.com/dictionary/undertaking
  Wordnet - Undertaking: https://en-word.net/ili/i39587
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0ffeec41600be08a where -- ========== Initiative

open import Agda.Primitive
open import SysFEAT.SOF.01ce05f9685979d8 public -- Initiative Block
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.UpperOntology.23d5aa4868513f43 public -- Block Collection
open import SysFEAT.SOF.c7dad03f5ae92ae9 public -- Responsible Human Entity
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior

Initiative : ClassOfBoundedIndividual
Initiative = BoundedIndividual


--  Initiative withAspect InitiativeBlock
st-0ffeec41600be08a-01ce05f9685979d8 : Initiative ⊏ₐₑ (InitiativeBlock lzero)
st-0ffeec41600be08a-01ce05f9685979d8 = polySubTypeOf-identity

--  Initiative is subTypeOf BoundedIndividual
st-0ffeec41600be08a-28f07b2354be0d69 : Initiative ⊏ₑ BoundedIndividual
st-0ffeec41600be08a-28f07b2354be0d69 = polySubTypeOf-identity

--  Initiative withAspect BlockCollection
st-0ffeec41600be08a-23d5aa4868513f43 : Initiative ⊏ₐₑ (BlockCollection lzero)
st-0ffeec41600be08a-23d5aa4868513f43 = polySubTypeOf-identity


-- == Relations =======================

{- Steering Authority: -}
steeringAuthority :  Linkage Initiative ResponsibleHumanEntity
steeringAuthority = make_holonymyRelation "Steering Authority" "Steering Authority"

postulate -- steeringAuthority is subTypeOf referenceHolonymy
  st-b2f2d64d5f47e364-9653a95669701e02  : steeringAuthority   ⊏⋆ᵣ  referenceHolonymy 

{- Initiative Subject: 
Set of Asset Blocks that are the subject of changes undertaken by an Initiative.
-}
-- Aggregate Member : Initiative Subject
InitiativeSubject : ∀ (u : Level) → ClassOfMixedOrderEntity u
InitiativeSubject u = AggregateMember u


-- Membership relation
membershipOfInitiativeSubject : ∀ {u} →  Linkage Initiative (InitiativeSubject u)
membershipOfInitiativeSubject = make_upwardNestingRelation "initiativeSubject membership" "nested initiativeSubject"

-- Aggregation relation
aggregationOfAssetBlockInitiativeSubject : ∀ {u v} →  Linkage (InitiativeSubject u) (AssetBlock v)
aggregationOfAssetBlockInitiativeSubject = make_Relation "AssetBlock aggregation" "aggregated AssetBlock"

{- initiativeSubject : derived relation obtained by composing
   membershipOfInitiativeSubject and aggregationOfAssetBlockInitiativeSubject
   It directly links an Initiative to the final aggregated AssetBlock
   hiding the reifying InitiativeSubject
-}
initiativeSubject : ∀ {u w} → Linkage Initiative (AssetBlock w)
initiativeSubject {u} {w}  = membershipOfInitiativeSubject {u}   ∘  aggregationOfAssetBlockInitiativeSubject {w} 

postulate -- initiativeSubject is subTypeOf referenceHolonymy
  st-0f642fd06859b0d5-9653a95669701e02  : initiativeSubject {lzero}  ⊏⋆ᵣ  referenceHolonymy 
postulate -- initiativeSubject is subTypeOf unboundedMember
  st-0f642fd06859b0d5-8cfaf71a6852b042  : initiativeSubject {lzero}  ⊏⋆ᵣ  unboundedMember {lzero} {lzero}


{- Course of Action: 
A plan recognized by an enterprise as being essential to achieving its goals - i.e. a strategic specification of what the enterprise does. In other words, a Course of Action channels efforts towards Desired Results.Business Capabilities might be required by an Enterprise to conduct its Courses of Action.
-}
-- Aggregate Member : Course of Action
CourseOfAction : AggregateHolonymyType
CourseOfAction = AggregateHolonymy


-- Membership relation
membershipOfCourseOfAction :  Linkage Initiative CourseOfAction
membershipOfCourseOfAction = make_upwardNestingRelation "courseOfAction membership" "nested courseOfAction"

-- Aggregation relation
aggregationOfIndividualResourceBehaviorCourseOfAction :  Linkage CourseOfAction IndividualResourceBehavior
aggregationOfIndividualResourceBehaviorCourseOfAction = make_Relation "IndividualResourceBehavior aggregation" "aggregated IndividualResourceBehavior"

{- courseOfAction : derived relation obtained by composing
   membershipOfCourseOfAction and aggregationOfIndividualResourceBehaviorCourseOfAction
   It directly links an Initiative to the final aggregated IndividualResourceBehavior
   hiding the reifying CourseOfAction
-}
courseOfAction : Linkage Initiative IndividualResourceBehavior
courseOfAction = membershipOfCourseOfAction  ∘  aggregationOfIndividualResourceBehaviorCourseOfAction

postulate -- courseOfAction is subTypeOf aggregateHolonymy
  st-a56baa0c689c4e7a-c2f2c9a166ea50e2  : courseOfAction   ⊏⋆ᵣ  aggregateHolonymy 

