{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Assurance Case: 


Documentation : https://framework.sysfeat.com/pages/f1606a8267d86149.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f1606a8267d86149 where -- ========== Operational Assurance Case

open import Agda.Primitive
open import SysFEAT.EA.07ca19e95dd854e9 public -- Assurance Case
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.EA.f1606adf67d861a5 public -- Operating Risk Type

OperationalAssuranceCase : ClassOfClassOfBoundedIndividual
OperationalAssuranceCase = ClassOfBoundedIndividual

--  OperationalAssuranceCase is subTypeOf AssuranceCase
st-f1606a8267d86149-07ca19e95dd854e9 : OperationalAssuranceCase ⊏ₑ AssuranceCase
st-f1606a8267d86149-07ca19e95dd854e9 = polySubTypeOf-identity

-- == Relationships =======================

{- Resource Operating Asset: -}
-- Aggregate Member : Resource Operating Asset
ResourceOperatingAsset : ClassOfClassOfIndividual
ResourceOperatingAsset = ClassOfIndividual

-- Membership relation
membershipOfResourceOperatingAsset :  Linkage OperationalAssuranceCase ResourceOperatingAsset
membershipOfResourceOperatingAsset = make_upwardNestingRelation "resourceOperatingAsset membership" "nested resourceOperatingAsset"

-- Aggregation relation
aggregationOfResourceOperatingAssetResourceOperatingAsset :  Linkage ResourceOperatingAsset ResourceOperatingAsset
aggregationOfResourceOperatingAssetResourceOperatingAsset = make_Relation "ResourceOperatingAsset aggregation" "aggregated ResourceOperatingAsset"

{- resourceOperatingAsset : derived relation obtained by composing
   membershipOfResourceOperatingAsset and aggregationOfResourceOperatingAssetResourceOperatingAsset
   It directly links an Operational Assurance Case to the final aggregated ResourceOperatingAsset
   hiding the reifying ResourceOperatingAsset
-}
resourceOperatingAsset : Linkage OperationalAssuranceCase ResourceOperatingAsset
resourceOperatingAsset = membershipOfResourceOperatingAsset  ∘  aggregationOfResourceOperatingAssetResourceOperatingAsset

postulate -- resourceOperatingAsset is subTypeOf involvedAsset
  st-f1606bb067d86473-9152e6975ed764d3  : resourceOperatingAsset   ⊏⋆ᵣ  involvedAsset 


{- Mitigated Operational Risk: -}
-- Aggregate Member : Mitigated Operational Risk
MitigatedOperationalRisk : ThirdOrderClass
MitigatedOperationalRisk = SecondOrderClass

-- Membership relation
membershipOfMitigatedOperationalRisk :  Linkage OperationalAssuranceCase MitigatedOperationalRisk
membershipOfMitigatedOperationalRisk = make_upwardNestingRelation "mitigatedOperationalRisk membership" "nested mitigatedOperationalRisk"

-- Aggregation relation
aggregationOfOperatingRiskTypeMitigatedOperationalRisk :  Linkage MitigatedOperationalRisk OperatingRiskType
aggregationOfOperatingRiskTypeMitigatedOperationalRisk = make_Relation "OperatingRiskType aggregation" "aggregated OperatingRiskType"

{- mitigatedOperationalRisk : derived relation obtained by composing
   membershipOfMitigatedOperationalRisk and aggregationOfOperatingRiskTypeMitigatedOperationalRisk
   It directly links an Operational Assurance Case to the final aggregated OperatingRiskType
   hiding the reifying MitigatedOperationalRisk
-}
mitigatedOperationalRisk : Linkage OperationalAssuranceCase OperatingRiskType
mitigatedOperationalRisk = membershipOfMitigatedOperationalRisk  ∘  aggregationOfOperatingRiskTypeMitigatedOperationalRisk

postulate -- mitigatedOperationalRisk is subTypeOf mitigatedRisk
  st-f1606c2967d86662-582e770166f6a8cf  : mitigatedOperationalRisk   ⊏⋆ᵣ  mitigatedRisk 

