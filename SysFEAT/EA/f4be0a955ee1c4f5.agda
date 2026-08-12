{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Outcome Event: 
A Technology Outcome Event is an Outcome Event that indicates the availability of an expected change in the state of some Technology Functional Asset produced by a Technology System .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be0a955ee1c4f5 where -- ========== Technology Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.669abc806654e803 public -- Technology Functional Asset
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event

TechnologyOutcomeEvent : ClassOfClassOfIndividual
TechnologyOutcomeEvent = ClassOfIndividual

postulate --  TechnologyOutcomeEvent is subTypeOf TechnologyFunctionalAsset
  st-83c718b567561123 : TechnologyOutcomeEvent ⊏ₑ TechnologyFunctionalAsset

postulate --  TechnologyOutcomeEvent is subTypeOf ResourceOutcomeEvent
  st-6a70d2b86787815d : TechnologyOutcomeEvent ⊏ₑ ResourceOutcomeEvent

-- == Relationships =======================

{- Technology Outcome: 
A Technology Outcome represents any tangible or intanglible Technology Functional Asset or state of such Technology Functional Asset, that can be the subject of a technology transaction.As such, a Technology Outcome can be improved or transformed in some way by a producer Technology System resulting in an increase in value (Technology Outcome Event) that benefits (utility) to a userTechnology System or Business System that use this Technology Outcome.Examples:- A new AI system that is the result of the development of a platform team and sales activiies of a software company (producer Agent) for the benefit of a Business System.
-}
-- Aggregate Member : Technology Outcome
TechnologyOutcome : ClassOfClassOfIndividual
TechnologyOutcome = ClassOfIndividual

-- Membership relation
membershipOfTechnologyOutcome :  Linkage TechnologyOutcomeEvent TechnologyOutcome
membershipOfTechnologyOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyFunctionalAssetTechnologyOutcome :  Linkage TechnologyOutcome TechnologyFunctionalAsset
aggregationOfTechnologyFunctionalAssetTechnologyOutcome = aggregationOfBuildingBlock

{- technologyOutcome : derived relation obtained by composing
   membershipOfTechnologyOutcome and aggregationOfTechnologyFunctionalAssetTechnologyOutcome
   It directly links an Technology Outcome Event to the final aggregated TechnologyFunctionalAsset
   hiding the reifying TechnologyOutcome
-}
technologyOutcome : Linkage TechnologyOutcomeEvent TechnologyFunctionalAsset
technologyOutcome = membershipOfTechnologyOutcome  ∘  aggregationOfTechnologyFunctionalAssetTechnologyOutcome
