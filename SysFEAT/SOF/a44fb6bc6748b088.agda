{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functional Asset: 
Functional Assets encompasse all Asset Types used to describe why and how systems operate/function. This includes the Operating Eco-System where system operates to fulfill these purposes (Agent Types and their  Behavior Types).Functional Assets include:1. Blocks defining results of Behavior Types of the enterprise or its sub-systems, that benefit to it internal or external customers : Outcome Event,2. Blocks used to describe information: Information Asset.3. Blocks used to describe how the enterprise operates: Operating Asset Types (Agent Type, Behavior Type, Service Interface).All Functional Assets are constrained by Policys and are exposed to Risk Types.

Documentation : https://framework.sysfeat.com/pages/a44fb6bc6748b088.htm

External references:
  Russell Ackoff - Choice & Communication - FunctionalClass: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#FunctionalClass
  de Weck - The three dimensions of complexity: https://complexsystems.mst.edu/media/conference/complexsystems/documents/de_Weck_CAS_Keynote_Nov_2015_updated.pdf#page=40
  OpenGroup - ArchiMate - Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Language-Structure.html#sec-Top-Level-Language-Structure
  OMG - UAF - Asset: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Asset
  Wikipedia - Software Functional Architecture: https://en.wikipedia.org/wiki/Functional_software_architecture#:~:text=A%20functional%20software%20architecture%20(FSA,%2Doperative%20information%2Ddriven%20enterprise.
  SEBoK - Functional Architecture: https://www.sebokwiki.org/wiki/Functional_Architecture_(glossary)
  WordNet - Product (Production): https://en-word.net/ili/i57699
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a44fb6bc6748b088 where -- ========== Functional Asset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type

FunctionalAsset : ClassOfClassOfBoundedIndividual
FunctionalAsset = ClassOfBoundedIndividual

--  FunctionalAsset is subTypeOf AssetType
st-d059312e5ef2b09c : FunctionalAsset ⊏ₑ AssetType
st-d059312e5ef2b09c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Functional Asset: -}
specializedFunctionalAsset :  Linkage FunctionalAsset FunctionalAsset
specializedFunctionalAsset = make_subTypeOf "Specialized Functional Asset" "Specialized Functional Asset"

postulate -- specializedFunctionalAsset is subTypeOf specializedAsset
  st-6a7076d2678731e2-12b0287266e936d5  : specializedFunctionalAsset   ⊏⋆ᵣ  specializedAsset 

{- Realized Functional Asset: 
A kind of specialization between an implementing Functional Asset and its abstract Realized Functional Asset.Realization relationships are the foundation to establish the mapping between Functional Assets that belong to different Conceptualization Levels.
-}
realizedFunctionalAsset :  Linkage FunctionalAsset FunctionalAsset
realizedFunctionalAsset = make_subTypeOf "Realized Functional Asset" "Realized Functional Asset"

postulate -- realizedFunctionalAsset is subTypeOf specializedClassOfIndividual
  st-7dc1907b684951ae-e429632e66ec72ab  : realizedFunctionalAsset   ⊏⋆ᵣ  specializedClassOfIndividual 

{- Policy Conformance: 
A Policy Conformance is the conformity requirement that applies a Functional Asset.
-}
-- Aggregate Member : Policy Conformance
PolicyConformance : ClassOfClassOfIndividual
PolicyConformance = ClassOfIndividual

-- Membership relation
membershipOfPolicyConformance :  Linkage FunctionalAsset PolicyConformance
membershipOfPolicyConformance = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPolicyPolicyConformance :  Linkage PolicyConformance Policy
aggregationOfPolicyPolicyConformance = aggregationOfBuildingBlock

{- policyConformance : derived relation obtained by composing
   membershipOfPolicyConformance and aggregationOfPolicyPolicyConformance
   It directly links an Functional Asset to the final aggregated Policy
   hiding the reifying PolicyConformance
-}
policyConformance : Linkage FunctionalAsset Policy
policyConformance = membershipOfPolicyConformance  ∘  aggregationOfPolicyPolicyConformance

{- Risk: 
A  Risk refers to the potential for loss resulting from inadequate structure or behavior of a Functional Asset.
-}
-- Aggregate Member : Risk
Risk : ThirdOrderClass
Risk = SecondOrderClass

-- Membership relation
membershipOfRisk :  Linkage FunctionalAsset Risk
membershipOfRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfRiskTypeRisk :  Linkage Risk RiskType
aggregationOfRiskTypeRisk = aggregationOfBuildingBlock

{- risk : derived relation obtained by composing
   membershipOfRisk and aggregationOfRiskTypeRisk
   It directly links an Functional Asset to the final aggregated RiskType
   hiding the reifying Risk
-}
risk : Linkage FunctionalAsset RiskType
risk = membershipOfRisk  ∘  aggregationOfRiskTypeRisk
