{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative Stage: 
An Initiative Stage is a past, current or future state of an Enduring Initiative. The set of all Initiative Stages of an Enduring Initiative defines its Roadmap.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e78c5eb0661989f9 where -- ========== Initiative Stage

open import Agda.Primitive
open import SysFEAT.UpperOntology.29cd2db0661546c4 public -- Individual State
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

InitiativeStage : StateClass
InitiativeStage = StateConcept


postulate --  InitiativeStage is subTypeOf IndividualState
  st-e78c5f3066198b69 : InitiativeStage ⊏ₑ IndividualState

postulate --  InitiativeStage is subTypeOf Initiative
  st-e78c5e90661989d5 : InitiativeStage ⊏ₑ Initiative

-- == Relationships =======================

{- Desired Result: -}
-- Aggregate Member : Desired Result
DesiredResult : ClassOfClassOfIndividual
DesiredResult = ClassOfIndividual

-- Membership relation
membershipOfDesiredResult :  Linkage InitiativeStage DesiredResult
membershipOfDesiredResult = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetPropertyDesiredResult :  Linkage DesiredResult AssetProperty
aggregationOfAssetPropertyDesiredResult = aggregationOfBuildingBlock

{- desiredResult : derived relation obtained by composing
   membershipOfDesiredResult and aggregationOfAssetPropertyDesiredResult
   It directly links an Initiative Stage to the final aggregated AssetProperty
   hiding the reifying DesiredResult
-}
desiredResult : Linkage InitiativeStage AssetProperty
desiredResult = membershipOfDesiredResult  ∘  aggregationOfAssetPropertyDesiredResult

{- Stage Objective: 
A Desired Result is a statement about a state or condition of Initiative Subjects of an Initiative Stage that can be obtained within this specified stage.
-}
-- Aggregate Member : Stage Objective
StageObjective : ClassOfClassOfIndividual
StageObjective = ClassOfIndividual

-- Membership relation
membershipOfStageObjective :  Linkage InitiativeStage StageObjective
membershipOfStageObjective = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetPropertyStageObjective :  Linkage StageObjective AssetProperty
aggregationOfAssetPropertyStageObjective = aggregationOfBuildingBlock

{- stageObjective : derived relation obtained by composing
   membershipOfStageObjective and aggregationOfAssetPropertyStageObjective
   It directly links an Initiative Stage to the final aggregated AssetProperty
   hiding the reifying StageObjective
-}
stageObjective : Linkage InitiativeStage AssetProperty
stageObjective = membershipOfStageObjective  ∘  aggregationOfAssetPropertyStageObjective
