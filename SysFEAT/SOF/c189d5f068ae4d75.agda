{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Property: 
An Information Property is an Information Asset that represents a characteristic (Property) of an Information Entity.An Information Property is fundamentally defined by its value. It doesnt evolve over time and is thereby immutable.Examples:. Address.. Customer Name.. Amounts,

Documentation : https://framework.sysfeat.com/pages/c189d5f068ae4d75.htm

External references:
  DDD - Glossary - Value Object: https://www.dddcommunity.org/resources/ddd_terms?valueobject
  Martin Fowler - Value Object: https://martinfowler.com/bliki/ValueObject.html
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c189d5f068ae4d75 where -- ========== Information Property

open import Agda.Primitive
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property

InformationProperty : PropertyType
InformationProperty = Property


--  InformationProperty is subTypeOf InformationAsset
st-c189d5f068ae4d75-e6f250185f772ee1 : InformationProperty ⊏ₑ InformationAsset
st-c189d5f068ae4d75-e6f250185f772ee1 = polySubTypeOf-identity

--  InformationProperty is subTypeOf Property
st-c189d5f068ae4d75-746ac18368905aa2 : InformationProperty ⊏ₑ Property
st-c189d5f068ae4d75-746ac18368905aa2 = polySubTypeOf-identity


-- == Relations =======================

{- Specialized Information Property: -}
specializedInformationProperty :  Linkage InformationProperty InformationProperty
specializedInformationProperty = make_subTypeOf "Specialized Information Property" "Specialized Information Property"

postulate -- specializedInformationProperty is subTypeOf specializedInformationAsset
  st-c189dcc568ae56ac-325a372e66f33bca  : specializedInformationProperty   ⊏⋆ᵣ  specializedInformationAsset 

{- Sub Information Property: -}
-- Aggregate Member : Sub Information Property
SubInformationProperty : ClassOfClassOfIndividual
SubInformationProperty = ClassOfIndividual

-- Membership relation
membershipOfSubInformationProperty :  Linkage InformationProperty SubInformationProperty
membershipOfSubInformationProperty = make_upwardNestingRelation "subInformationProperty membership" "nested subInformationProperty"

-- Aggregation relation
aggregationOfInformationPropertySubInformationProperty :  Linkage SubInformationProperty InformationProperty
aggregationOfInformationPropertySubInformationProperty = make_Relation "InformationProperty aggregation" "aggregated InformationProperty"

{- subInformationProperty : derived relation obtained by composing
   membershipOfSubInformationProperty and aggregationOfInformationPropertySubInformationProperty
   It directly links an Information Property to the final aggregated InformationProperty
   hiding the reifying SubInformationProperty
-}
subInformationProperty : Linkage InformationProperty InformationProperty
subInformationProperty = membershipOfSubInformationProperty  ∘  aggregationOfInformationPropertySubInformationProperty

postulate -- subInformationProperty is subTypeOf informationAssetRelationship
  st-c189d78568ae4f12-18eb1f335fdb6e7f  : subInformationProperty   ⊏⋆ᵣ  informationAssetRelationship 

