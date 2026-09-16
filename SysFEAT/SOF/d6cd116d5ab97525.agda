{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Domain: 
An Information Domain is a family of Information Entity(ies) which constitutes a unit a knowlege required by an Agent Type to operate during Behavior Type execution.

Documentation : https://framework.sysfeat.com/pages/d6cd116d5ab97525.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d6cd116d5ab97525 where -- ========== Information Domain

open import Agda.Primitive
open import SysFEAT.UpperOntology.8d1ceeab68f755a5 public -- Class Partition
open import SysFEAT.SOF.6c5f80e468587f06 public -- Information Block
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset

InformationDomain : ClassOfClassOfBoundedIndividual
InformationDomain = ClassOfBoundedIndividual

--  InformationDomain withAspect ClassPartition
st-d6cd116d5ab97525-8d1ceeab68f755a5 : InformationDomain ⊏ₐₑ (ClassPartition (lsuc(lzero)))
st-d6cd116d5ab97525-8d1ceeab68f755a5 = polySubTypeOf-identity

--  InformationDomain withAspect InformationBlock
st-d6cd116d5ab97525-6c5f80e468587f06 : InformationDomain ⊏ₐₑ (InformationBlock (lsuc(lzero)))
st-d6cd116d5ab97525-6c5f80e468587f06 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Information Domain: -}
specializedInformationDomain :  Linkage InformationDomain InformationDomain
specializedInformationDomain = make_subTypeOf "Specialized Information Domain" "Specialized Information Domain"

postulate -- specializedInformationDomain is subTypeOf subTypeOfEntity
  st-325a380a66f34efb-8336837268e9448b  : specializedInformationDomain   ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

{- Realized Information Domain: -}
realizedInformationDomain :  Linkage InformationDomain InformationDomain
realizedInformationDomain = make_subTypeOf "Realized Information Domain" "Realized Information Domain"

postulate -- realizedInformationDomain is subTypeOf subTypeOfEntity
  st-325a3a0e66f3562c-8336837268e9448b  : realizedInformationDomain   ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

{- Domain Asset: 
Information Entity that is part of an Information Domain.
-}
-- Aggregate Member : Domain Asset
DomainAsset : ClassOfClassOfIndividual
DomainAsset = ClassOfIndividual

-- Membership relation
membershipOfDomainAsset :  Linkage InformationDomain DomainAsset
membershipOfDomainAsset = make_upwardNestingRelation "domainAsset membership" "nested domainAsset"

-- Aggregation relation
aggregationOfInformationAssetDomainAsset :  Linkage DomainAsset InformationAsset
aggregationOfInformationAssetDomainAsset = make_Relation "InformationAsset aggregation" "aggregated InformationAsset"

{- domainAsset : derived relation obtained by composing
   membershipOfDomainAsset and aggregationOfInformationAssetDomainAsset
   It directly links an Information Domain to the final aggregated InformationAsset
   hiding the reifying DomainAsset
-}
domainAsset : Linkage InformationDomain InformationAsset
domainAsset = membershipOfDomainAsset  ∘  aggregationOfInformationAssetDomainAsset

postulate -- domainAsset is subTypeOf unboundedMember
  st-24ae4a405ed16bcf-8cfaf71a6852b042  : domainAsset   ⊏⋆ᵣ  unboundedMember {lzero} {lzero}


{- Sub-Information Area: 
The decompostion of an Information Domain into sub-Information Domain.
-}
-- Aggregate Member : Sub-Information Area
SubInformationArea : ClassOfClassOfIndividual
SubInformationArea = ClassOfIndividual

-- Membership relation
membershipOfSubInformationArea :  Linkage InformationDomain SubInformationArea
membershipOfSubInformationArea = make_upwardNestingRelation "subInformationArea membership" "nested subInformationArea"

-- Aggregation relation
aggregationOfInformationDomainSubInformationArea :  Linkage SubInformationArea InformationDomain
aggregationOfInformationDomainSubInformationArea = make_Relation "InformationDomain aggregation" "aggregated InformationDomain"

{- subInformationArea : derived relation obtained by composing
   membershipOfSubInformationArea and aggregationOfInformationDomainSubInformationArea
   It directly links an Information Domain to the final aggregated InformationDomain
   hiding the reifying SubInformationArea
-}
subInformationArea : Linkage InformationDomain InformationDomain
subInformationArea = membershipOfSubInformationArea  ∘  aggregationOfInformationDomainSubInformationArea

postulate -- subInformationArea is subTypeOf unboundedMember
  st-24ae4a625ed16c60-8cfaf71a6852b042  : subInformationArea   ⊏⋆ᵣ  unboundedMember {lzero} {lzero}

