{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative: 
An Initiative is any piece of work that is undertaken or attempted under the responsibility of a Steering Authority.Initiatives range from single project to long term initiatives (Enduring Initiative) such as Enterprises.Initiatives are sychronized over time using Initiative Milestones.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0ffeec41600be08a where -- ========== Initiative

open import Agda.Primitive
open import SysFEAT.SOF.01ce05f9685979d8 public -- Initiative Block
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.UpperOntology.23d5aa4868513f43 public -- Block Collection
open import SysFEAT.SOF.c7dad03f5ae92ae9 public -- Responsible Human Entity
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

Initiative : ClassOfBoundedIndividual
Initiative = BoundedIndividual

postulate --  Initiative withAspect InitiativeBlock
  st-918cbd6861e6fb1b : Initiative ⊏ₐₑ (InitiativeBlock lzero)

postulate --  Initiative is subTypeOf BoundedIndividual
  st-366c3d63675c135d : Initiative ⊏ₑ BoundedIndividual

postulate --  Initiative withAspect BlockCollection
  st-b07be2aa67626977 : Initiative ⊏ₐₑ (BlockCollection lzero)

-- == Relationships =======================

{- Steering Authority: -}
steeringAuthority :  Linkage Initiative ResponsibleHumanEntity
steeringAuthority = make_holonymyRelation "Steering Authority" "steeringAuthority"

postulate -- steeringAuthority is subTypeOf elementaryHolonymy
  st-b2f2d64d5f47e364-9653a95669701e02  : steeringAuthority   ⊏⋆ᵣ  elementaryHolonymy 

{- Course of Action: 
A plan recognized by an enterprise as being essential to achieving its goals - i.e. a strategic specification of what the enterprise does. In other words, a Course of Action channels efforts towards Desired Results.Business Capabilities might be required by an Enterprise to conduct its Courses of Action.
-}
-- Aggregate Member : Course of Action
CourseOfAction : ClassOfOrderedEntity (lsuc(lzero))
CourseOfAction = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfCourseOfAction :  Linkage Initiative CourseOfAction
membershipOfCourseOfAction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualResourceBehaviorCourseOfAction :  Linkage CourseOfAction IndividualResourceBehavior
aggregationOfIndividualResourceBehaviorCourseOfAction = aggregationOfBuildingBlock

{- courseOfAction : derived relation obtained by composing
   membershipOfCourseOfAction and aggregationOfIndividualResourceBehaviorCourseOfAction
   It directly links an Initiative to the final aggregated IndividualResourceBehavior
   hiding the reifying CourseOfAction
-}
courseOfAction : Linkage Initiative IndividualResourceBehavior
courseOfAction = membershipOfCourseOfAction  ∘  aggregationOfIndividualResourceBehaviorCourseOfAction

{- Initiative Subject: 
Set of Asset Blocks that are the subject of changes undertaken by an Initiative.
-}
-- Aggregate Member : Initiative Subject
InitiativeSubject : ∀ (u : Level) → ClassOfMixedOrderEntity u
InitiativeSubject u = AggregateMember u


-- Membership relation
membershipOfInitiativeSubject : ∀ {u} →  Linkage Initiative (InitiativeSubject u)
membershipOfInitiativeSubject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetBlockInitiativeSubject : ∀ {u v} →  Linkage (InitiativeSubject u) (AssetBlock v)
aggregationOfAssetBlockInitiativeSubject = aggregationOfBuildingBlock

{- initiativeSubject : derived relation obtained by composing
   membershipOfInitiativeSubject and aggregationOfAssetBlockInitiativeSubject
   It directly links an Initiative to the final aggregated AssetBlock
   hiding the reifying InitiativeSubject
-}
initiativeSubject : ∀ {u w} → Linkage Initiative (AssetBlock w)
initiativeSubject {u} {w}  = membershipOfInitiativeSubject {u}   ∘  aggregationOfAssetBlockInitiativeSubject {w} 
