{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative Stage: 
An Initiative Stage is a past, current or future state of an Enduring Initiative. The set of all Initiative Stages of an Enduring Initiative defines its Roadmap.

Documentation : https://framework.sysfeat.com/pages/e78c5eb0661989f9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e78c5eb0661989f9 where -- ========== Initiative Stage

open import Agda.Primitive
open import SysFEAT.UpperOntology.29cd2db0661546c4 public -- Individual State
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

InitiativeStage : StateClass
InitiativeStage = StateConcept


--  InitiativeStage is subTypeOf IndividualState
st-e78c5eb0661989f9-29cd2db0661546c4 : InitiativeStage ⊏ₑ IndividualState
st-e78c5eb0661989f9-29cd2db0661546c4 = polySubTypeOf-identity

--  InitiativeStage is subTypeOf Initiative
st-e78c5eb0661989f9-0ffeec41600be08a : InitiativeStage ⊏ₑ Initiative
st-e78c5eb0661989f9-0ffeec41600be08a = polySubTypeOf-identity

-- == Relationships =======================

{- Desired Result: -}
-- Aggregate Member : Desired Result
DesiredResult : ClassOfClassOfIndividual
DesiredResult = ClassOfIndividual

-- Membership relation
membershipOfDesiredResult :  Linkage InitiativeStage DesiredResult
membershipOfDesiredResult = make_upwardNestingRelation "desiredResult membership" "nested desiredResult"

-- Aggregation relation
aggregationOfAssetPropertyDesiredResult :  Linkage DesiredResult AssetProperty
aggregationOfAssetPropertyDesiredResult = make_Relation "AssetProperty aggregation" "aggregated AssetProperty"

{- desiredResult : derived relation obtained by composing
   membershipOfDesiredResult and aggregationOfAssetPropertyDesiredResult
   It directly links an Initiative Stage to the final aggregated AssetProperty
   hiding the reifying DesiredResult
-}
desiredResult : Linkage InitiativeStage AssetProperty
desiredResult = membershipOfDesiredResult  ∘  aggregationOfAssetPropertyDesiredResult

postulate -- desiredResult is subTypeOf aggregateMember
  st-a56ba5d1689c4ba1-23d5ddef68514dba  : desiredResult   ⊏⋆ᵣ  aggregateMember {lzero} {lzero}
postulate -- desiredResult is subTypeOf propertyOfIndividual
  st-a56ba5d1689c4ba1-19763dbb68926a48  : desiredResult   ⊏⋆ᵣ  propertyOfIndividual 


{- Stage Objective: 
A Desired Result is a statement about a state or condition of Initiative Subjects of an Initiative Stage that can be obtained within this specified stage.
-}
-- Aggregate Member : Stage Objective
StageObjective : ClassOfClassOfIndividual
StageObjective = ClassOfIndividual

-- Membership relation
membershipOfStageObjective :  Linkage InitiativeStage StageObjective
membershipOfStageObjective = make_upwardNestingRelation "stageObjective membership" "nested stageObjective"

-- Aggregation relation
aggregationOfAssetPropertyStageObjective :  Linkage StageObjective AssetProperty
aggregationOfAssetPropertyStageObjective = make_Relation "AssetProperty aggregation" "aggregated AssetProperty"

{- stageObjective : derived relation obtained by composing
   membershipOfStageObjective and aggregationOfAssetPropertyStageObjective
   It directly links an Initiative Stage to the final aggregated AssetProperty
   hiding the reifying StageObjective
-}
stageObjective : Linkage InitiativeStage AssetProperty
stageObjective = membershipOfStageObjective  ∘  aggregationOfAssetPropertyStageObjective

postulate -- stageObjective is subTypeOf desiredResult
  st-a56ba723689c4c95-a56ba5d1689c4ba1  : stageObjective   ⊏⋆ᵣ  desiredResult 

