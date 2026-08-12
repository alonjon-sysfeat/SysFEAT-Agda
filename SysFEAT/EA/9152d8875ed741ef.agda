{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Catalog: 
A Data Catalog is an Assurance System of Data Assets, ensuring understanding,  trust, compliance and confidence of enterprise data. This includes:1. Relationship with Enterprise Glossary to provide business context to metadata.2. Data policy definition and enforcement to ensure data quality.3. Data Lineage to master data provenance: where data comes from, how data is transformed, and where it is used.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9152d8875ed741ef where -- ========== Data Catalog

open import Agda.Primitive
open import SysFEAT.EA.07ca18d25dd85477 public -- Assurance System
open import SysFEAT.EA.44226d6561819b50 public -- Data Assurance Instrument
open import SysFEAT.EA.affeb2255f6051e6 public -- Deployed Data Store
open import SysFEAT.EA.203b8fdb5a5f43dd public -- Concept Domain Map
open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.98159f6b5f682d1e public -- Data Quality Policy

DataCatalog : ClassOfBoundedIndividual
DataCatalog = BoundedIndividual

postulate --  DataCatalog is subTypeOf AssuranceSystem
  st-c830d018617a4c38 : DataCatalog ⊏ₑ AssuranceSystem

-- == Relationships =======================

{- Owned Data Resource: -}
ownedDataResource :  Linkage DataCatalog DataAssuranceInstrument
ownedDataResource = make_holonymyRelation "Owned Data Resource" "ownedDataResource"

postulate -- ownedDataResource is subTypeOf packagedAssuranceInstrument
  st-fe6323de6181763a-561f36fc68d68770  : ownedDataResource   ⊏⋆ᵣ  packagedAssuranceInstrument 

{- Managed Data Store: -}
managedDataStore :  Linkage DataCatalog DeployedDataStore
managedDataStore = make_holonymyRelation "Managed Data Store" "managedDataStore"


{- Business Concept Scope: -}
businessConceptScope :  Linkage DataCatalog ConceptDomainMap
businessConceptScope = make_Relation "Business Concept Scope" "businessConceptScope"

postulate -- businessConceptScope is subTypeOf functionalScope
  st-d326dc90617a5e08-01f1214c689b6e0f  : businessConceptScope   ⊏⋆ᵣ  functionalScope 

{- Owned Data Assurance Case: -}
ownedDataAssuranceCase :  Linkage DataCatalog DataAssuranceCase
ownedDataAssuranceCase = make_Relation "Owned Data Assurance Case" "ownedDataAssuranceCase"

postulate -- ownedDataAssuranceCase is subTypeOf ownedAssuranceCase
  st-b90ae7db600e5e7a-0b950f8868e54f9f  : ownedDataAssuranceCase   ⊏⋆ᵣ  ownedAssuranceCase 

{- Enforced Policy: -}
-- Aggregate Member : Enforced Policy
EnforcedPolicy : ClassOfClassOfIndividual
EnforcedPolicy = ClassOfIndividual

-- Membership relation
membershipOfEnforcedPolicy :  Linkage DataCatalog EnforcedPolicy
membershipOfEnforcedPolicy = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPolicyEnforcedPolicy :  Linkage EnforcedPolicy Policy
aggregationOfPolicyEnforcedPolicy = aggregationOfBuildingBlock

{- enforcedPolicy : derived relation obtained by composing
   membershipOfEnforcedPolicy and aggregationOfPolicyEnforcedPolicy
   It directly links an Data Catalog to the final aggregated Policy
   hiding the reifying EnforcedPolicy
-}
enforcedPolicy : Linkage DataCatalog Policy
enforcedPolicy = membershipOfEnforcedPolicy  ∘  aggregationOfPolicyEnforcedPolicy

{- Controled Data Policy: -}
-- Aggregate Member : Controled Data Policy
ControledDataPolicy : ClassOfClassOfIndividual
ControledDataPolicy = ClassOfIndividual

-- Membership relation
membershipOfControledDataPolicy :  Linkage DataCatalog ControledDataPolicy
membershipOfControledDataPolicy = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataQualityPolicyControledDataPolicy :  Linkage ControledDataPolicy DataQualityPolicy
aggregationOfDataQualityPolicyControledDataPolicy = aggregationOfBuildingBlock

{- controledDataPolicy : derived relation obtained by composing
   membershipOfControledDataPolicy and aggregationOfDataQualityPolicyControledDataPolicy
   It directly links an Data Catalog to the final aggregated DataQualityPolicy
   hiding the reifying ControledDataPolicy
-}
controledDataPolicy : Linkage DataCatalog DataQualityPolicy
controledDataPolicy = membershipOfControledDataPolicy  ∘  aggregationOfDataQualityPolicyControledDataPolicy
