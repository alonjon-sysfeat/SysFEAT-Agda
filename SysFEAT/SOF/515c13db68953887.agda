{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Capability: 
A Capability is a functional Asset Property which refers to the ability to produce an Outcome Event.Capabilitys are fulfilled by Agent Types performing Behavior Types including interactions with other Agent Types to produce Outcome Events.

Documentation : https://framework.sysfeat.com/pages/515c13db68953887.htm

External references:
  OpenGroup - ArchiMate - Capability: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Strategy-Layer.html#sec-Capability
  Russell Ackoff - Choice & Communication - FunctionalClass: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#FunctionalClass
  OMG - UAF - Capability: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Capability
  OpenGroup - TOGAF - Definition - Capability: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_33
  OpenGroup - OAA - Capability: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_capability
  WordNet - Capability: https://en-word.net/ili/i64310
  DAU Glossary - Capability: https://www.dau.edu/glossary/capability
  OMG - BACM - Capability: https://www.omg.org/spec/BACM/1.0/PDF#page=48
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.515c13db68953887 where -- ========== Capability

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset

Capability : PropertyType
Capability = ClassOfProperty

--  Capability is subTypeOf AssetProperty
st-dd2656da689f5c92 : Capability ⊏ₑ AssetProperty
st-dd2656da689f5c92 = polySubTypeOf-identity

--  Capability withAspect AssetBlock
st-9397ddd56877cbda : Capability ⊏ₐₑ (AssetBlock (lsuc(lzero)))
st-9397ddd56877cbda = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Capability: -}
specializedCapability :  Linkage Capability Capability
specializedCapability = make_subTypeOf "Specialized Capability" "Specialized Capability"

postulate -- specializedCapability is subTypeOf specializedProperty
  st-01f11e77689b6b10-1662112a68925f90  : specializedCapability   ⊏⋆ᵣ  specializedProperty 

{- Involved Information: -}
-- Aggregate Member : Involved Information
InvolvedInformation : ClassOfClassOfIndividual
InvolvedInformation = ClassOfIndividual

-- Membership relation
membershipOfInvolvedInformation :  Linkage Capability InvolvedInformation
membershipOfInvolvedInformation = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationAssetInvolvedInformation :  Linkage InvolvedInformation InformationAsset
aggregationOfInformationAssetInvolvedInformation = aggregationOfBuildingBlock

{- involvedInformation : derived relation obtained by composing
   membershipOfInvolvedInformation and aggregationOfInformationAssetInvolvedInformation
   It directly links an Capability to the final aggregated InformationAsset
   hiding the reifying InvolvedInformation
-}
involvedInformation : Linkage Capability InformationAsset
involvedInformation = membershipOfInvolvedInformation  ∘  aggregationOfInformationAssetInvolvedInformation

{- Capability Part: 
Sub-Capability with a capability.Sub-Capabilities can have dependencies whereby a dependent capability needs the outcome of a required capability for one of its outcome to be delivered. 
-}
-- Aggregate Member : Capability Part
CapabilityPart : ClassOfClassOfIndividual
CapabilityPart = ClassOfIndividual

-- Membership relation
membershipOfCapabilityPart :  Linkage Capability CapabilityPart
membershipOfCapabilityPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCapabilityCapabilityPart :  Linkage CapabilityPart Capability
aggregationOfCapabilityCapabilityPart = aggregationOfBuildingBlock

{- capabilityPart : derived relation obtained by composing
   membershipOfCapabilityPart and aggregationOfCapabilityCapabilityPart
   It directly links an Capability to the final aggregated Capability
   hiding the reifying CapabilityPart
-}
capabilityPart : Linkage Capability Capability
capabilityPart = membershipOfCapabilityPart  ∘  aggregationOfCapabilityCapabilityPart
