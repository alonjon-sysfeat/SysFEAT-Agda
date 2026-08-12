{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functional Asset: 
Functional Assets encompasse all Asset Types used to describe why and how systems operate/function. This includes the Operating Eco-System where system operates to fulfill these purposes (Agent Types and their  Behavior Types).Functional Assets include:1. Blocks defining results of Behavior Types of the enterprise or its sub-systems, that benefit to it internal or external customers : Outcome Event,2. Blocks used to describe information: Information Asset.3. Blocks used to describe how the enterprise operates: Operating Asset Types (Agent Type, Behavior Type, Service Interface).All Functional Assets are constrained by Policys and are exposed to Risk Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a44fb6bc6748b088 where -- ========== Functional Asset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type

FunctionalAsset : ClassOfClassOfBoundedIndividual
FunctionalAsset = ClassOfBoundedIndividual

postulate --  FunctionalAsset is subTypeOf AssetType
  st-d059312e5ef2b09c : FunctionalAsset ⊏ₑ AssetType

-- == Relationships =======================

{- Specialized Functional Asset: -}
specializedFunctionalAsset :  Linkage FunctionalAsset FunctionalAsset
specializedFunctionalAsset = make_subTypeOf "Specialized Functional Asset" "specializedFunctionalAsset"

postulate -- specializedFunctionalAsset is subTypeOf specializedAsset
  st-6a7076d2678731e2-12b0287266e936d5  : specializedFunctionalAsset   ⊏⋆ᵣ  specializedAsset {lzero}

{- Realized Functional Asset: 
A kind of specialization between an implementing Functional Asset and its abstract Realized Functional Asset.Realization relationships are the foundation to establish the mapping between Functional Assets that belong to different Conceptualization Levels.
-}
realizedFunctionalAsset :  Linkage FunctionalAsset FunctionalAsset
realizedFunctionalAsset = make_subTypeOf "Realized Functional Asset" "realizedFunctionalAsset"

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
