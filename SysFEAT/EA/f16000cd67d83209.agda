{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Compliance Case: 
A Compliance Case is an Assurance Case (a claim) that a particular set of Resource Operating Assets (Systems or Processes) adequately mitigates certain identified Compliance Risk Types by means of appropriated controls.A Compliance Case shall provide confidence that the concerned assets will function as intended in their environment of use.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f16000cd67d83209 where -- ========== Compliance Case

open import Agda.Primitive
open import SysFEAT.EA.07ca19e95dd854e9 public -- Assurance Case
open import SysFEAT.EA.190c57d568976e60 public -- Regulation Article
open import SysFEAT.EA.c94a7376684a0c07 public -- Resource Operational Asset
open import SysFEAT.EA.582e757066f6a328 public -- Compliance Risk Type

ComplianceCase : ClassOfClassOfBoundedIndividual
ComplianceCase = ClassOfBoundedIndividual

--  ComplianceCase is subTypeOf AssuranceCase
st-f16000e167d83288 : ComplianceCase ⊏ₑ AssuranceCase
st-f16000e167d83288 = polySubTypeOf-identity

-- == Relationships =======================

{- Constraining Regulation: 
Business Directive covered by the Compliance Case.
-}
constrainingRegulation :  Linkage ComplianceCase RegulationArticle
constrainingRegulation = make_subTypeOf "Constraining Regulation" "constrainingRegulation"

postulate -- constrainingRegulation is subTypeOf contrainingOperationalPolicy
  st-4b947fdd68a4a331-01f1120d689b5a99  : constrainingRegulation   ⊏⋆ᵣ  contrainingOperationalPolicy 

{- Involved Operating Asset: -}
-- Aggregate Member : Involved Operating Asset
InvolvedOperatingAsset : ClassOfClassOfIndividual
InvolvedOperatingAsset = ClassOfIndividual

-- Membership relation
membershipOfInvolvedOperatingAsset :  Linkage ComplianceCase InvolvedOperatingAsset
membershipOfInvolvedOperatingAsset = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOperationalAssetInvolvedOperatingAsset :  Linkage InvolvedOperatingAsset ResourceOperationalAsset
aggregationOfResourceOperationalAssetInvolvedOperatingAsset = aggregationOfBuildingBlock

{- involvedOperatingAsset : derived relation obtained by composing
   membershipOfInvolvedOperatingAsset and aggregationOfResourceOperationalAssetInvolvedOperatingAsset
   It directly links an Compliance Case to the final aggregated ResourceOperationalAsset
   hiding the reifying InvolvedOperatingAsset
-}
involvedOperatingAsset : Linkage ComplianceCase ResourceOperationalAsset
involvedOperatingAsset = membershipOfInvolvedOperatingAsset  ∘  aggregationOfResourceOperationalAssetInvolvedOperatingAsset

{- Mitigated Compliance Risk: 
Set of Compliance Risk Types that are claimed to be identified and mitgated by appropriate Control Measures.
-}
-- Aggregate Member : Mitigated Compliance Risk
MitigatedComplianceRisk : ThirdOrderClass
MitigatedComplianceRisk = SecondOrderClass

-- Membership relation
membershipOfMitigatedComplianceRisk :  Linkage ComplianceCase MitigatedComplianceRisk
membershipOfMitigatedComplianceRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfComplianceRiskTypeMitigatedComplianceRisk :  Linkage MitigatedComplianceRisk ComplianceRiskType
aggregationOfComplianceRiskTypeMitigatedComplianceRisk = aggregationOfBuildingBlock

{- mitigatedComplianceRisk : derived relation obtained by composing
   membershipOfMitigatedComplianceRisk and aggregationOfComplianceRiskTypeMitigatedComplianceRisk
   It directly links an Compliance Case to the final aggregated ComplianceRiskType
   hiding the reifying MitigatedComplianceRisk
-}
mitigatedComplianceRisk : Linkage ComplianceCase ComplianceRiskType
mitigatedComplianceRisk = membershipOfMitigatedComplianceRisk  ∘  aggregationOfComplianceRiskTypeMitigatedComplianceRisk
