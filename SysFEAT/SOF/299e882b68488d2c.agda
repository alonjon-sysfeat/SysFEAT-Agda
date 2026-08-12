{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Transformation: 
An Operational Transformation is an Initiative that creates or transform Operating Asset Types, based on a Capability Maps functional scope.Its Goal is to deliver new or improved Capabilitys, with measurable qualitative properties, to well identified beneficiary stakholders. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.299e882b68488d2c where -- ========== Operational Transformation

open import Agda.Primitive
open import SysFEAT.SOF.d321c226601262ae public -- Enduring Initiative
open import SysFEAT.SOF.01f12127689b6de2 public -- Capability Map
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

OperationalTransformation : ClassOfBoundedIndividual
OperationalTransformation = BoundedIndividual

postulate --  OperationalTransformation is subTypeOf EnduringInitiative
  st-299e88b568488e01 : OperationalTransformation ⊏ₑ EnduringInitiative

-- == Relationships =======================

{- Functional Scope: -}
functionalScope :  Linkage OperationalTransformation CapabilityMap
functionalScope = make_instanceOf "Functional Scope" "functionalScope"

postulate -- functionalScope is subTypeOf propertyOfIndividual
  st-01f1214c689b6e0f-19763dbb68926a48  : functionalScope   ⊏⋆ᵣ  propertyOfIndividual 

{- Subject Operating Asset: -}
-- Aggregate Member : Subject Operating Asset
SubjectOperatingAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u
SubjectOperatingAsset u = AggregateMember u


-- Membership relation
26CB447B69611567 : ∀ {u} →  Linkage OperationalTransformation (SubjectOperatingAsset u)
26CB447B69611567 = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetBlockSubjectOperatingAsset : ∀ {u v} →  Linkage (SubjectOperatingAsset u) (AssetBlock v)
aggregationOfAssetBlockSubjectOperatingAsset = aggregationOfBuildingBlock

{- subjectOperatingAsset : derived relation obtained by composing
   26CB447B69611567 and aggregationOfAssetBlockSubjectOperatingAsset
   It directly links an Operational Transformation to the final aggregated AssetBlock
   hiding the reifying SubjectOperatingAsset
-}
subjectOperatingAsset : ∀ {u w} → Linkage OperationalTransformation (AssetBlock w)
subjectOperatingAsset {u} {w}  = 26CB447B69611567 {u}   ∘  aggregationOfAssetBlockSubjectOperatingAsset {w} 
