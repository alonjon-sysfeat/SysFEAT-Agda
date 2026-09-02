{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Assurance Case: 
A Data Assurance Case is a structured argument, supported by evidence, intended to justify that a data is acceptably assured relative to a concern (such as quality, safety, security or privacy) in the intended operating environment.The operating environment includes:1. Policies related to the use of data in the organization (privacy policy, regulation policy, ...).2. Data quality policies defined by the organization.3. Risk to be mitigated in the use, consumption and sharing of data by the organization.4. Control directives to be followed in the use, consumption and sharing of data by the organization.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.b90aeac8600e619f where -- ========== Data Assurance Case

open import Agda.Primitive
open import SysFEAT.EA.07ca19e95dd854e9 public -- Assurance Case
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.SOF.582e785466f6b36f public -- Data Risk Type

DataAssuranceCase : ClassOfClassOfBoundedIndividual
DataAssuranceCase = ClassOfBoundedIndividual

--  DataAssuranceCase is subTypeOf AssuranceCase
st-b90aeaef600e62b5 : DataAssuranceCase ⊏ₑ AssuranceCase
st-b90aeaef600e62b5 = polySubTypeOf-identity

-- == Relationships =======================

{- Concerned Information: -}
-- Aggregate Member : Concerned Information
ConcernedInformation : ClassOfClassOfIndividual
ConcernedInformation = ClassOfIndividual

-- Membership relation
membershipOfConcernedInformation :  Linkage DataAssuranceCase ConcernedInformation
membershipOfConcernedInformation = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationAssetConcernedInformation :  Linkage ConcernedInformation InformationAsset
aggregationOfInformationAssetConcernedInformation = aggregationOfBuildingBlock

{- concernedInformation : derived relation obtained by composing
   membershipOfConcernedInformation and aggregationOfInformationAssetConcernedInformation
   It directly links an Data Assurance Case to the final aggregated InformationAsset
   hiding the reifying ConcernedInformation
-}
concernedInformation : Linkage DataAssuranceCase InformationAsset
concernedInformation = membershipOfConcernedInformation  ∘  aggregationOfInformationAssetConcernedInformation

{- Mitigated Data Risk: -}
-- Aggregate Member : Mitigated Data Risk
MitigatedDataRisk : ThirdOrderClass
MitigatedDataRisk = SecondOrderClass

-- Membership relation
membershipOfMitigatedDataRisk :  Linkage DataAssuranceCase MitigatedDataRisk
membershipOfMitigatedDataRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataRiskTypeMitigatedDataRisk :  Linkage MitigatedDataRisk DataRiskType
aggregationOfDataRiskTypeMitigatedDataRisk = aggregationOfBuildingBlock

{- mitigatedDataRisk : derived relation obtained by composing
   membershipOfMitigatedDataRisk and aggregationOfDataRiskTypeMitigatedDataRisk
   It directly links an Data Assurance Case to the final aggregated DataRiskType
   hiding the reifying MitigatedDataRisk
-}
mitigatedDataRisk : Linkage DataAssuranceCase DataRiskType
mitigatedDataRisk = membershipOfMitigatedDataRisk  ∘  aggregationOfDataRiskTypeMitigatedDataRisk
