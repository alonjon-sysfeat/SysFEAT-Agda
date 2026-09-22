{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Outcome Event: 
A Technology Outcome Event is an Outcome Event that indicates the availability of an expected change in the state of some Technology Functional Asset produced by a Technology System .

Documentation : https://framework.sysfeat.com/pages/f4be0a955ee1c4f5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be0a955ee1c4f5 where -- ========== Technology Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.669abc806654e803 public -- Technology Functional Asset
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event

TechnologyOutcomeEvent : ClassOfClassOfBoundedIndividual
TechnologyOutcomeEvent = ClassOfBoundedIndividual


--  TechnologyOutcomeEvent is subTypeOf TechnologyFunctionalAsset
st-f4be0a955ee1c4f5-669abc806654e803 : TechnologyOutcomeEvent ⊏ₑ TechnologyFunctionalAsset
st-f4be0a955ee1c4f5-669abc806654e803 = polySubTypeOf-identity

--  TechnologyOutcomeEvent is subTypeOf ResourceOutcomeEvent
st-f4be0a955ee1c4f5-6a70c0b36787698c : TechnologyOutcomeEvent ⊏ₑ ResourceOutcomeEvent
st-f4be0a955ee1c4f5-6a70c0b36787698c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Technology Outcome: 
A Technology Outcome represents any tangible or intanglible Technology Functional Asset or state of such Technology Functional Asset, that can be the subject of a technology transaction.As such, a Technology Outcome can be improved or transformed in some way by a producer Technology System resulting in an increase in value (Technology Outcome Event) that benefits (utility) to a userTechnology System or Business System that use this Technology Outcome.Examples:- A new AI system that is the result of the development of a platform team and sales activiies of a software company (producer Agent) for the benefit of a Business System.
-}
-- Aggregate Member : Technology Outcome
TechnologyOutcome : ClassOfClassOfBoundedIndividual
TechnologyOutcome = ClassOfBoundedIndividual



--  TechnologyOutcome is subTypeOf ResourceOutcome
st-97880965661870b1-6a70e2636787968e : TechnologyOutcome ⊏ₑ ResourceOutcome
st-97880965661870b1-6a70e2636787968e = polySubTypeOf-identity

--  TechnologyOutcome is subTypeOf TechnologyFunctionalAsset
st-97880965661870b1-669abc806654e803 : TechnologyOutcome ⊏ₑ TechnologyFunctionalAsset
st-97880965661870b1-669abc806654e803 = polySubTypeOf-identity

-- Membership relation
membershipOfTechnologyOutcome :  Linkage TechnologyOutcomeEvent TechnologyOutcome
membershipOfTechnologyOutcome = make_upwardNestingRelation "technologyOutcome membership" "nested technologyOutcome"

-- Aggregation relation
aggregationOfTechnologyFunctionalAssetTechnologyOutcome :  Linkage TechnologyOutcome TechnologyFunctionalAsset
aggregationOfTechnologyFunctionalAssetTechnologyOutcome = make_Relation "TechnologyFunctionalAsset aggregation" "aggregated TechnologyFunctionalAsset"

{- technologyOutcome : derived relation obtained by composing
   membershipOfTechnologyOutcome and aggregationOfTechnologyFunctionalAssetTechnologyOutcome
   It directly links an Technology Outcome Event to the final aggregated TechnologyFunctionalAsset
   hiding the reifying TechnologyOutcome
-}
technologyOutcome : Linkage TechnologyOutcomeEvent TechnologyFunctionalAsset
technologyOutcome = membershipOfTechnologyOutcome  ∘  aggregationOfTechnologyFunctionalAssetTechnologyOutcome


