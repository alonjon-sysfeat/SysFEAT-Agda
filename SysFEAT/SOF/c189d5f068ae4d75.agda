{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Property: 
An Information Property is an Information Asset that represents a characteristic (Class of Property) of an Information Entity.An Information Property is fundamentally defined by its value. It doesnt evolve over time and is thereby immutable.Examples:. Address.. Customer Name.. Amounts,
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c189d5f068ae4d75 where -- ========== Information Property

open import Agda.Primitive
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Class of Property

InformationProperty : PropertyType
InformationProperty = ClassOfProperty

--  InformationProperty is subTypeOf InformationAsset
st-e6f24eb45f772e1c : InformationProperty ⊏ₑ InformationAsset
st-e6f24eb45f772e1c = polySubTypeOf-identity

--  InformationProperty is subTypeOf ClassOfProperty
st-9397a25d6877759b : InformationProperty ⊏ₑ ClassOfProperty
st-9397a25d6877759b = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Information Property: -}
specializedInformationProperty :  Linkage InformationProperty InformationProperty
specializedInformationProperty = make_subTypeOf "Specialized Information Property" "specializedInformationProperty"

postulate -- specializedInformationProperty is subTypeOf specializedInformationAsset
  st-c189dcc568ae56ac-325a372e66f33bca  : specializedInformationProperty   ⊏⋆ᵣ  specializedInformationAsset 

{- Sub Information Property: -}
-- Aggregate Member : Sub Information Property
SubInformationProperty : ClassOfClassOfIndividual
SubInformationProperty = ClassOfIndividual

-- Membership relation
membershipOfSubInformationProperty :  Linkage InformationProperty SubInformationProperty
membershipOfSubInformationProperty = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationPropertySubInformationProperty :  Linkage SubInformationProperty InformationProperty
aggregationOfInformationPropertySubInformationProperty = aggregationOfBuildingBlock

{- subInformationProperty : derived relation obtained by composing
   membershipOfSubInformationProperty and aggregationOfInformationPropertySubInformationProperty
   It directly links an Information Property to the final aggregated InformationProperty
   hiding the reifying SubInformationProperty
-}
subInformationProperty : Linkage InformationProperty InformationProperty
subInformationProperty = membershipOfSubInformationProperty  ∘  aggregationOfInformationPropertySubInformationProperty
