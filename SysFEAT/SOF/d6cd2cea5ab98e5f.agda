{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Entity: 
An Information Entity is an Information Asset that is not fundamentally defined by its attributes, but rather by its continuity.An Information Entity evolves over time and has states.For instance a person is an Information Entity. Employe is a state of a person.An Information Entity has relationships to other Information Entitys and can have Information Propertys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d6cd2cea5ab98e5f where -- ========== Information Entity

open import Agda.Primitive
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual
open import SysFEAT.SOF.c189d5f068ae4d75 public -- Information Property

InformationEntity : ClassOfClassOfBoundedIndividual
InformationEntity = ClassOfBoundedIndividual

postulate --  InformationEntity is subTypeOf InformationAsset
  st-51ae665d5ee7d56c : InformationEntity ⊏ₑ InformationAsset

postulate --  InformationEntity is subTypeOf ClassOfBoundedIndividual
  st-56ea65136605b505 : InformationEntity ⊏ₑ ClassOfBoundedIndividual

-- == Relationships =======================

{- Specialized Information Entity: 
Generalization relationship between a sub-Information Entity and its super-Information Entity.
-}
specializedInformationEntity :  Linkage InformationEntity InformationEntity
specializedInformationEntity = make_subTypeOf "Specialized Information Entity" "specializedInformationEntity"

postulate -- specializedInformationEntity is subTypeOf specializedInformationAsset
  st-325a37b966f34da2-325a372e66f33bca  : specializedInformationEntity   ⊏⋆ᵣ  specializedInformationAsset 

{- Qualifying Information Property: -}
-- Aggregate Member : Qualifying Information Property
QualifyingInformationProperty : ClassOfClassOfIndividual
QualifyingInformationProperty = ClassOfIndividual

-- Membership relation
membershipOfQualifyingInformationProperty :  Linkage InformationEntity QualifyingInformationProperty
membershipOfQualifyingInformationProperty = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationPropertyQualifyingInformationProperty :  Linkage QualifyingInformationProperty InformationProperty
aggregationOfInformationPropertyQualifyingInformationProperty = aggregationOfBuildingBlock

{- qualifyingInformationProperty : derived relation obtained by composing
   membershipOfQualifyingInformationProperty and aggregationOfInformationPropertyQualifyingInformationProperty
   It directly links an Information Entity to the final aggregated InformationProperty
   hiding the reifying QualifyingInformationProperty
-}
qualifyingInformationProperty : Linkage InformationEntity InformationProperty
qualifyingInformationProperty = membershipOfQualifyingInformationProperty  ∘  aggregationOfInformationPropertyQualifyingInformationProperty

{- Information Relationship: 
An Information Relationship is a characteristic of an Information Entity that represents a relationships to other Information Entity(ies).
-}
-- Aggregate Member : Information Relationship
InformationRelationship : ClassOfClassOfIndividual
InformationRelationship = ClassOfIndividual

-- Membership relation
membershipOfInformationRelationship :  Linkage InformationEntity InformationRelationship
membershipOfInformationRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationEntityInformationRelationship :  Linkage InformationRelationship InformationEntity
aggregationOfInformationEntityInformationRelationship = aggregationOfBuildingBlock

{- informationRelationship : derived relation obtained by composing
   membershipOfInformationRelationship and aggregationOfInformationEntityInformationRelationship
   It directly links an Information Entity to the final aggregated InformationEntity
   hiding the reifying InformationRelationship
-}
informationRelationship : Linkage InformationEntity InformationEntity
informationRelationship = membershipOfInformationRelationship  ∘  aggregationOfInformationEntityInformationRelationship
