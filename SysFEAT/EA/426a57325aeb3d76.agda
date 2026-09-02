{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Processing: 
A Privacy Processing is a Data Assurance Case  related to any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.426a57325aeb3d76 where -- ========== Privacy Processing

open import Agda.Primitive
open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case
open import SysFEAT.EA.08d17cde678a2b47 public -- Business Partner
open import SysFEAT.EA.258c66a25fd25310 public -- Person Right
open import SysFEAT.SOF.4356520b6a110f68 public -- Data Category
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.EA.b3c824665c709228 public -- Security Measure Type
open import SysFEAT.EA.582e783366f6b210 public -- Privacy Risk Type

PrivacyProcessing : ClassOfClassOfBoundedIndividual
PrivacyProcessing = ClassOfBoundedIndividual

--  PrivacyProcessing is subTypeOf DataAssuranceCase
st-364213c5600808b7 : PrivacyProcessing ⊏ₑ DataAssuranceCase
st-364213c5600808b7 = polySubTypeOf-identity

-- == Relationships =======================

{- impacted data subject: 
People-human beings from whom or about whom you collect information in connection with your business and its operations.
-}
impacteddatasubject :  Linkage PrivacyProcessing BusinessPartner
impacteddatasubject = make_classOfHolonymy "impacted data subject" "impacteddatasubject"


{- Person Right: -}
personRight :  Linkage PrivacyProcessing PersonRight
personRight = make_classOfHolonymy "Person Right" "personRight"


{- Data Category: -}
dataCategory : ∀ {u} →  Linkage PrivacyProcessing (DataCategory u)
dataCategory = make_instanceOf "Data Category" "dataCategory"


{- Data Transfer: 
Any transfer of personal data which are undergoing processing or are intended for processing after transfer to a third country or to an international organization.
-}
-- Aggregate Member : Data Transfer
DataTransfer : ClassOfClassOfIndividual
DataTransfer = ClassOfIndividual

-- Membership relation
membershipOfDataTransfer :  Linkage PrivacyProcessing DataTransfer
membershipOfDataTransfer = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationAssetDataTransfer :  Linkage DataTransfer InformationAsset
aggregationOfInformationAssetDataTransfer = aggregationOfBuildingBlock

{- dataTransfer : derived relation obtained by composing
   membershipOfDataTransfer and aggregationOfInformationAssetDataTransfer
   It directly links an Privacy Processing to the final aggregated InformationAsset
   hiding the reifying DataTransfer
-}
dataTransfer : Linkage PrivacyProcessing InformationAsset
dataTransfer = membershipOfDataTransfer  ∘  aggregationOfInformationAssetDataTransfer

{- Security Measure: -}
-- Aggregate Member : Security Measure
SecurityMeasure : ClassOfClassOfIndividual
SecurityMeasure = ClassOfIndividual

-- Membership relation
membershipOfSecurityMeasure :  Linkage PrivacyProcessing SecurityMeasure
membershipOfSecurityMeasure = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSecurityMeasureTypeSecurityMeasure :  Linkage SecurityMeasure SecurityMeasureType
aggregationOfSecurityMeasureTypeSecurityMeasure = aggregationOfBuildingBlock

{- securityMeasure : derived relation obtained by composing
   membershipOfSecurityMeasure and aggregationOfSecurityMeasureTypeSecurityMeasure
   It directly links an Privacy Processing to the final aggregated SecurityMeasureType
   hiding the reifying SecurityMeasure
-}
securityMeasure : Linkage PrivacyProcessing SecurityMeasureType
securityMeasure = membershipOfSecurityMeasure  ∘  aggregationOfSecurityMeasureTypeSecurityMeasure

{- Mitigated Privacy Risk: 
Represents any risk related to data privacy that should be identified and assessed during a DPIA process.
-}
-- Aggregate Member : Mitigated Privacy Risk
MitigatedPrivacyRisk : ThirdOrderClass
MitigatedPrivacyRisk = SecondOrderClass

-- Membership relation
membershipOfMitigatedPrivacyRisk :  Linkage PrivacyProcessing MitigatedPrivacyRisk
membershipOfMitigatedPrivacyRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk :  Linkage MitigatedPrivacyRisk PrivacyRiskType
aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk = aggregationOfBuildingBlock

{- mitigatedPrivacyRisk : derived relation obtained by composing
   membershipOfMitigatedPrivacyRisk and aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk
   It directly links an Privacy Processing to the final aggregated PrivacyRiskType
   hiding the reifying MitigatedPrivacyRisk
-}
mitigatedPrivacyRisk : Linkage PrivacyProcessing PrivacyRiskType
mitigatedPrivacyRisk = membershipOfMitigatedPrivacyRisk  ∘  aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk
