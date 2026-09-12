{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functionality: 
A Functionality is a Business Resource Capability offered by Business System Assets (software or hardware) and aimed at delivering Information Outcomes.A Functionality describes WHAT a software or hardware system can provide.Functionality(ies) are used to express the Business System features required by people when performing their job (see Job-to-be-done).For internal customers, these jobs correspond to Business-Process Steps described in Business Process (see Instrument)For enterprise Customers, these jobs correspond to Job-to-be-done in the context of Customer Journeys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26aa0568a1f939 where -- ========== Functionality

open import Agda.Primitive
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

Functionality : PropertyType
Functionality = ClassOfProperty

--  Functionality is subTypeOf BusinessResourceCapability
st-215c623e606d466b : Functionality ⊏ₑ BusinessResourceCapability
st-215c623e606d466b = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Functionality: -}
specializedFunctionality :  Linkage Functionality Functionality
specializedFunctionality = make_subTypeOf "Specialized Functionality" "specializedFunctionality"

postulate -- specializedFunctionality is subTypeOf specializedBusinessResourceCapability
  st-dd26aafe68a1f9da-dd2683b668a1bbb3  : specializedFunctionality   ⊏⋆ᵣ  specializedBusinessResourceCapability 

{- Involved Data Element: -}
-- Aggregate Member : Involved Data Element
InvolvedDataElement : ClassOfClassOfIndividual
InvolvedDataElement = ClassOfIndividual

-- Membership relation
membershipOfInvolvedDataElement :  Linkage Functionality InvolvedDataElement
membershipOfInvolvedDataElement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataAssetInvolvedDataElement :  Linkage InvolvedDataElement DataAsset
aggregationOfDataAssetInvolvedDataElement = aggregationOfBuildingBlock

{- involvedDataElement : derived relation obtained by composing
   membershipOfInvolvedDataElement and aggregationOfDataAssetInvolvedDataElement
   It directly links an Functionality to the final aggregated DataAsset
   hiding the reifying InvolvedDataElement
-}
involvedDataElement : Linkage Functionality DataAsset
involvedDataElement = membershipOfInvolvedDataElement  ∘  aggregationOfDataAssetInvolvedDataElement

{- Functionality Part: -}
-- Aggregate Member : Functionality Part
FunctionalityPart : ClassOfClassOfIndividual
FunctionalityPart = ClassOfIndividual

-- Membership relation
membershipOfFunctionalityPart :  Linkage Functionality FunctionalityPart
membershipOfFunctionalityPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfFunctionalityFunctionalityPart :  Linkage FunctionalityPart Functionality
aggregationOfFunctionalityFunctionalityPart = aggregationOfBuildingBlock

{- functionalityPart : derived relation obtained by composing
   membershipOfFunctionalityPart and aggregationOfFunctionalityFunctionalityPart
   It directly links an Functionality to the final aggregated Functionality
   hiding the reifying FunctionalityPart
-}
functionalityPart : Linkage Functionality Functionality
functionalityPart = membershipOfFunctionalityPart  ∘  aggregationOfFunctionalityFunctionalityPart
