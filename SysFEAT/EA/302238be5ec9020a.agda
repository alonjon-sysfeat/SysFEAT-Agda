{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Outcome Event: 
An Information Outcome Event is a Business Outcome Event that signals the happening of a change in the state of Data Assets, produced by Business Systems for the benefits of an internal or external party.Example: - Order received- Payment rejected

Documentation : https://framework.sysfeat.com/pages/302238be5ec9020a.htm

External references:
  OpenGroup - IT4IT - Defining Service Reference Architecture: https://publications.opengroup.org/w161
  OMG - UML - Signal: https://www.omg.org/spec/UML/2.5.1/PDF#page=211
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.302238be5ec9020a where -- ========== Information Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

InformationOutcomeEvent : ClassOfClassOfBoundedIndividual
InformationOutcomeEvent = ClassOfBoundedIndividual


--  InformationOutcomeEvent is subTypeOf BusinessOutcomeEvent
st-302238be5ec9020a-9dcea4535ec76e6c : InformationOutcomeEvent ⊏ₑ BusinessOutcomeEvent
st-302238be5ec9020a-9dcea4535ec76e6c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Information Outcome: -}
-- Aggregate Member : Information Outcome
InformationOutcome : ClassOfClassOfBoundedIndividual
InformationOutcome = ClassOfBoundedIndividual



--  InformationOutcome is subTypeOf BusinessOutcome
st-be94e4d4655c8af9-be94e0c4655c85b4 : InformationOutcome ⊏ₑ BusinessOutcome
st-be94e4d4655c8af9-be94e0c4655c85b4 = polySubTypeOf-identity

--  InformationOutcome is subTypeOf DataAsset
st-be94e4d4655c8af9-6d2b7c935fbb6270 : InformationOutcome ⊏ₑ DataAsset
st-be94e4d4655c8af9-6d2b7c935fbb6270 = polySubTypeOf-identity

-- Membership relation
membershipOfInformationOutcome :  Linkage InformationOutcomeEvent InformationOutcome
membershipOfInformationOutcome = make_upwardNestingRelation "informationOutcome membership" "nested informationOutcome"

-- Aggregation relation
aggregationOfDataAssetInformationOutcome :  Linkage InformationOutcome DataAsset
aggregationOfDataAssetInformationOutcome = make_Relation "DataAsset aggregation" "aggregated DataAsset"

{- informationOutcome : derived relation obtained by composing
   membershipOfInformationOutcome and aggregationOfDataAssetInformationOutcome
   It directly links an Information Outcome Event to the final aggregated DataAsset
   hiding the reifying InformationOutcome
-}
informationOutcome : Linkage InformationOutcomeEvent DataAsset
informationOutcome = membershipOfInformationOutcome  ∘  aggregationOfDataAssetInformationOutcome


