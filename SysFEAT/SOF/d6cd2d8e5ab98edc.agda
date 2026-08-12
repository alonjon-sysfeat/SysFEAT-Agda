{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Map: 
An Information Map is a Operating Property Map that is the top level grouping of Information Domains. Information Maps are used to provide navigationtop level entry points for Information Dictionary(ies) and to scope data management initiatives at the level of portfolio management ( Data Catalog), at the project level or at the Enterprise level (Enterprise Concept Map).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d6cd2d8e5ab98edc where -- ========== Information Map

open import Agda.Primitive
open import SysFEAT.UpperOntology.06710aeb68ed2d29 public -- Meta Family of Class
open import SysFEAT.SOF.6c5f80e468587f06 public -- Information Block
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain

InformationMap : ClassOfClassOfBoundedIndividual
InformationMap = ClassOfBoundedIndividual

postulate --  InformationMap withAspect MetaFamilyOfClass
  st-299e32f268486286 : InformationMap ⊏ₐₑ (MetaFamilyOfClass (lsuc(lzero)))

postulate --  InformationMap withAspect InformationBlock
  st-8f1c9aa668ca8d67 : InformationMap ⊏ₐₑ (InformationBlock (lsuc(lzero)))

-- == Relationships =======================

{- Information Domain Member: -}
-- Aggregate Member : Information Domain Member
InformationDomainMember : ClassOfClassOfIndividual
InformationDomainMember = ClassOfIndividual

-- Membership relation
membershipOfInformationDomainMember :  Linkage InformationMap InformationDomainMember
membershipOfInformationDomainMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationDomainInformationDomainMember :  Linkage InformationDomainMember InformationDomain
aggregationOfInformationDomainInformationDomainMember = aggregationOfBuildingBlock

{- informationDomainMember : derived relation obtained by composing
   membershipOfInformationDomainMember and aggregationOfInformationDomainInformationDomainMember
   It directly links an Information Map to the final aggregated InformationDomain
   hiding the reifying InformationDomainMember
-}
informationDomainMember : Linkage InformationMap InformationDomain
informationDomainMember = membershipOfInformationDomainMember  ∘  aggregationOfInformationDomainInformationDomainMember

{- external Information Area: -}
-- Aggregate Member : external Information Area
externalInformationArea : ClassOfClassOfIndividual
externalInformationArea = ClassOfIndividual

-- Membership relation
membershipOfexternalInformationArea :  Linkage InformationMap externalInformationArea
membershipOfexternalInformationArea = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationDomainexternalInformationArea :  Linkage externalInformationArea InformationDomain
aggregationOfInformationDomainexternalInformationArea = aggregationOfBuildingBlock

{- externalInformationArea : derived relation obtained by composing
   membershipOfexternalInformationArea and aggregationOfInformationDomainexternalInformationArea
   It directly links an Information Map to the final aggregated InformationDomain
   hiding the reifying externalInformationArea
-}
externalInformationArea : Linkage InformationMap InformationDomain
externalInformationArea = membershipOfexternalInformationArea  ∘  aggregationOfInformationDomainexternalInformationArea
