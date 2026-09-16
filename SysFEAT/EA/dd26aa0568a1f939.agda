{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functionality: 
A Functionality is a Business Resource Capability offered by Business System Assets (software or hardware) and aimed at delivering Information Outcomes.A Functionality describes WHAT a software or hardware system can provide.Functionality(ies) are used to express the Business System features required by people when performing their job (see Job-to-be-done).For internal customers, these jobs correspond to Business-Process Steps described in Business Process (see Instrument)For enterprise Customers, these jobs correspond to Job-to-be-done in the context of Customer Journeys.

Documentation : https://framework.sysfeat.com/pages/dd26aa0568a1f939.htm

External references:
  OpenGroup - ArchiMate - Capability: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Strategy-Layer.html#sec-Capability
  SAFe© - Feature: https://www.scaledagileframework.com/glossary/#goto-letter-F
  SEBoK - Capability Engineering: https://www.sebokwiki.org/wikiCapability_Engineering
  SAFe© - Features and Capabilities: https://www.scaledagileframework.com/features-and-capabilities/
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26aa0568a1f939 where -- ========== Functionality

open import Agda.Primitive
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

Functionality : PropertyType
Functionality = ClassOfProperty

--  Functionality is subTypeOf BusinessResourceCapability
st-dd26aa0568a1f939-dd26288968a05d00 : Functionality ⊏ₑ BusinessResourceCapability
st-dd26aa0568a1f939-dd26288968a05d00 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Functionality: -}
specializedFunctionality :  Linkage Functionality Functionality
specializedFunctionality = make_subTypeOf "Specialized Functionality" "Specialized Functionality"

postulate -- specializedFunctionality is subTypeOf specializedBusinessResourceCapability
  st-dd26aafe68a1f9da-dd2683b668a1bbb3  : specializedFunctionality   ⊏⋆ᵣ  specializedBusinessResourceCapability 

{- Functionality Part: -}
-- Aggregate Member : Functionality Part
FunctionalityPart : ClassOfClassOfIndividual
FunctionalityPart = ClassOfIndividual

-- Membership relation
membershipOfFunctionalityPart :  Linkage Functionality FunctionalityPart
membershipOfFunctionalityPart = make_upwardNestingRelation "functionalityPart membership" "nested functionalityPart"

-- Aggregation relation
aggregationOfFunctionalityFunctionalityPart :  Linkage FunctionalityPart Functionality
aggregationOfFunctionalityFunctionalityPart = make_Relation "Functionality aggregation" "aggregated Functionality"

{- functionalityPart : derived relation obtained by composing
   membershipOfFunctionalityPart and aggregationOfFunctionalityFunctionalityPart
   It directly links an Functionality to the final aggregated Functionality
   hiding the reifying FunctionalityPart
-}
functionalityPart : Linkage Functionality Functionality
functionalityPart = membershipOfFunctionalityPart  ∘  aggregationOfFunctionalityFunctionalityPart

postulate -- functionalityPart is subTypeOf businessResourceCapabilityPart
  st-dd27aeb768a10434-dd27af0168a10530  : functionalityPart   ⊏⋆ᵣ  businessResourceCapabilityPart 


{- Involved Data Element: -}
-- Aggregate Member : Involved Data Element
InvolvedDataElement : ClassOfClassOfIndividual
InvolvedDataElement = ClassOfIndividual

-- Membership relation
membershipOfInvolvedDataElement :  Linkage Functionality InvolvedDataElement
membershipOfInvolvedDataElement = make_upwardNestingRelation "involvedDataElement membership" "nested involvedDataElement"

-- Aggregation relation
aggregationOfDataAssetInvolvedDataElement :  Linkage InvolvedDataElement DataAsset
aggregationOfDataAssetInvolvedDataElement = make_Relation "DataAsset aggregation" "aggregated DataAsset"

{- involvedDataElement : derived relation obtained by composing
   membershipOfInvolvedDataElement and aggregationOfDataAssetInvolvedDataElement
   It directly links an Functionality to the final aggregated DataAsset
   hiding the reifying InvolvedDataElement
-}
involvedDataElement : Linkage Functionality DataAsset
involvedDataElement = membershipOfInvolvedDataElement  ∘  aggregationOfDataAssetInvolvedDataElement

postulate -- involvedDataElement is subTypeOf involvedInformation
  st-dd27dcd268a1297a-01f11a37689b6677  : involvedDataElement   ⊏⋆ᵣ  involvedInformation 

