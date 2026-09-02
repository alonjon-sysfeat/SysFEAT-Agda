{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Object Assurance Case: 
A Business Object Assurance Case is a Data Assurance Case related to a critial Conceptual Entity Asset.Its purpose is to defined the quality and integrity rules that apply to a Conceptual Entity Asset in each business contexts such as activity domains on the enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe6314c8618165e2 where -- ========== Business Object Assurance Case

open import Agda.Primitive
open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.EA.582e7ac266f6b8ef public -- Data Quality Risk Type

BusinessObjectAssuranceCase : ClassOfClassOfBoundedIndividual
BusinessObjectAssuranceCase = ClassOfBoundedIndividual

--  BusinessObjectAssuranceCase is subTypeOf DataAssuranceCase
st-fe63155661816672 : BusinessObjectAssuranceCase ⊏ₑ DataAssuranceCase
st-fe63155661816672 = polySubTypeOf-identity

-- == Relationships =======================

{- Assured Business Object: -}
-- Aggregate Member : Assured Business Object
AssuredBusinessObject : ClassOfClassOfIndividual
AssuredBusinessObject = ClassOfIndividual

-- Membership relation
membershipOfAssuredBusinessObject :  Linkage BusinessObjectAssuranceCase AssuredBusinessObject
membershipOfAssuredBusinessObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetAssuredBusinessObject :  Linkage AssuredBusinessObject ConceptualEntityAsset
aggregationOfConceptualEntityAssetAssuredBusinessObject = aggregationOfBuildingBlock

{- assuredBusinessObject : derived relation obtained by composing
   membershipOfAssuredBusinessObject and aggregationOfConceptualEntityAssetAssuredBusinessObject
   It directly links an Business Object Assurance Case to the final aggregated ConceptualEntityAsset
   hiding the reifying AssuredBusinessObject
-}
assuredBusinessObject : Linkage BusinessObjectAssuranceCase ConceptualEntityAsset
assuredBusinessObject = membershipOfAssuredBusinessObject  ∘  aggregationOfConceptualEntityAssetAssuredBusinessObject

{- Mitigated Quality Risk: -}
-- Aggregate Member : Mitigated Quality Risk
MitigatedQualityRisk : ThirdOrderClass
MitigatedQualityRisk = SecondOrderClass

-- Membership relation
membershipOfMitigatedQualityRisk :  Linkage BusinessObjectAssuranceCase MitigatedQualityRisk
membershipOfMitigatedQualityRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataQualityRiskTypeMitigatedQualityRisk :  Linkage MitigatedQualityRisk DataQualityRiskType
aggregationOfDataQualityRiskTypeMitigatedQualityRisk = aggregationOfBuildingBlock

{- mitigatedQualityRisk : derived relation obtained by composing
   membershipOfMitigatedQualityRisk and aggregationOfDataQualityRiskTypeMitigatedQualityRisk
   It directly links an Business Object Assurance Case to the final aggregated DataQualityRiskType
   hiding the reifying MitigatedQualityRisk
-}
mitigatedQualityRisk : Linkage BusinessObjectAssuranceCase DataQualityRiskType
mitigatedQualityRisk = membershipOfMitigatedQualityRisk  ∘  aggregationOfDataQualityRiskTypeMitigatedQualityRisk
