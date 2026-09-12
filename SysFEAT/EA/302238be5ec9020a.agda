{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Outcome Event: 
An Information Outcome Event is a Business Outcome Event that signals the happening of a change in the state of Data Assets, produced by Business Systems for the benefits of an internal or external party.Example: - Order received- Payment rejected
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.302238be5ec9020a where -- ========== Information Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

InformationOutcomeEvent : ClassOfClassOfIndividual
InformationOutcomeEvent = ClassOfIndividual

--  InformationOutcomeEvent is subTypeOf BusinessOutcomeEvent
st-302239025ec90343 : InformationOutcomeEvent ⊏ₑ BusinessOutcomeEvent
st-302239025ec90343 = polySubTypeOf-identity

-- == Relationships =======================

{- Information Outcome: -}
-- Aggregate Member : Information Outcome
InformationOutcome : ClassOfClassOfIndividual
InformationOutcome = ClassOfIndividual

-- Membership relation
membershipOfInformationOutcome :  Linkage InformationOutcomeEvent InformationOutcome
membershipOfInformationOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataAssetInformationOutcome :  Linkage InformationOutcome DataAsset
aggregationOfDataAssetInformationOutcome = aggregationOfBuildingBlock

{- informationOutcome : derived relation obtained by composing
   membershipOfInformationOutcome and aggregationOfDataAssetInformationOutcome
   It directly links an Information Outcome Event to the final aggregated DataAsset
   hiding the reifying InformationOutcome
-}
informationOutcome : Linkage InformationOutcomeEvent DataAsset
informationOutcome = membershipOfInformationOutcome  ∘  aggregationOfDataAssetInformationOutcome
