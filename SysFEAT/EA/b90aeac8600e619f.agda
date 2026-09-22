{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Assurance Case: 
A Data Assurance Case is a structured argument, supported by evidence, intended to justify that a data is acceptably assured relative to a concern (such as quality, safety, security or privacy) in the intended operating environment.The operating environment includes:1. Policies related to the use of data in the organization (privacy policy, regulation policy, ...).2. Data quality policies defined by the organization.3. Risk to be mitigated in the use, consumption and sharing of data by the organization.4. Control directives to be followed in the use, consumption and sharing of data by the organization.

Documentation : https://framework.sysfeat.com/pages/b90aeac8600e619f.htm

External references:
  NIST - Assurance Case: https://csrc.nist.gov/glossary/term/assurance_case
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
st-b90aeac8600e619f-07ca19e95dd854e9 : DataAssuranceCase ⊏ₑ AssuranceCase
st-b90aeac8600e619f-07ca19e95dd854e9 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Concerned Information: -}
-- Aggregate Member : Concerned Information
ConcernedInformation : ClassOfClassOfBoundedIndividual
ConcernedInformation = ClassOfBoundedIndividual



--  ConcernedInformation is subTypeOf InvolvedAsset
st-b90afa69600e715c-9152e6975ed764d3 : ConcernedInformation ⊏ₑ InvolvedAsset
st-b90afa69600e715c-9152e6975ed764d3 = polySubTypeOf-identity

--  ConcernedInformation is subTypeOf InformationAsset
st-b90afa69600e715c-e6f250185f772ee1 : ConcernedInformation ⊏ₑ InformationAsset
st-b90afa69600e715c-e6f250185f772ee1 = polySubTypeOf-identity

-- Membership relation
membershipOfConcernedInformation :  Linkage DataAssuranceCase ConcernedInformation
membershipOfConcernedInformation = make_upwardNestingRelation "concernedInformation membership" "nested concernedInformation"

-- Aggregation relation
aggregationOfInformationAssetConcernedInformation :  Linkage ConcernedInformation InformationAsset
aggregationOfInformationAssetConcernedInformation = make_Relation "InformationAsset aggregation" "aggregated InformationAsset"

{- concernedInformation : derived relation obtained by composing
   membershipOfConcernedInformation and aggregationOfInformationAssetConcernedInformation
   It directly links an Data Assurance Case to the final aggregated InformationAsset
   hiding the reifying ConcernedInformation
-}
concernedInformation : Linkage DataAssuranceCase InformationAsset
concernedInformation = membershipOfConcernedInformation  ∘  aggregationOfInformationAssetConcernedInformation



-- -------------------------------------------------------------------------------------------- 
{- Mitigated Data Risk: -}
-- Aggregate Member : Mitigated Data Risk
MitigatedDataRisk : ThirdOrderClass
MitigatedDataRisk = SecondOrderClass


--  MitigatedDataRisk is subTypeOf MitigatedRisk
st-582e7e2266f6c278-582e770166f6a8cf : MitigatedDataRisk ⊏⋆ₑ MitigatedRisk
st-582e7e2266f6c278-582e770166f6a8cf = polySubTypeOf-identity

-- Membership relation
membershipOfMitigatedDataRisk :  Linkage DataAssuranceCase MitigatedDataRisk
membershipOfMitigatedDataRisk = make_upwardNestingRelation "mitigatedDataRisk membership" "nested mitigatedDataRisk"

-- Aggregation relation
aggregationOfDataRiskTypeMitigatedDataRisk :  Linkage MitigatedDataRisk DataRiskType
aggregationOfDataRiskTypeMitigatedDataRisk = make_Relation "DataRiskType aggregation" "aggregated DataRiskType"

{- mitigatedDataRisk : derived relation obtained by composing
   membershipOfMitigatedDataRisk and aggregationOfDataRiskTypeMitigatedDataRisk
   It directly links an Data Assurance Case to the final aggregated DataRiskType
   hiding the reifying MitigatedDataRisk
-}
mitigatedDataRisk : Linkage DataAssuranceCase DataRiskType
mitigatedDataRisk = membershipOfMitigatedDataRisk  ∘  aggregationOfDataRiskTypeMitigatedDataRisk


