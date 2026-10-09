{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Composite Property: 
A Composite Property is a Property that is composed of other Propertys. - Ability to cook (a capability) - 7/7 days a week.

Documentation : https://framework.sysfeat.com/pages/3e525e406ab05b0d.htm

External references:
  ISO 15926 - MultidimensionalProperty: https://15926.blog/topics/data-model/index.htm#MultidimensionalProperty
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3e525e406ab05b0d where -- ========== Composite Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property
open import SysFEAT.UpperOntology.23d56d9868525869 public -- Aggregate Entity Block
open import SysFEAT.UpperOntology.86b99fec6ac32863 public -- Composite Property Type

CompositeProperty : CompositePropertyType
CompositeProperty = Property

--  CompositeProperty is subTypeOf Property
st-3e525e406ab05b0d-746ac18368905aa2 : CompositeProperty ⊏ₑ Property
st-3e525e406ab05b0d-746ac18368905aa2 = polySubTypeOf-identity

--  CompositeProperty withAspect AggregateEntityBlock
st-3e525e406ab05b0d-23d56d9868525869 : CompositeProperty ⊏ₐₑ (AggregateEntityBlock (lsuc(lzero)))
st-3e525e406ab05b0d-23d56d9868525869 = polySubTypeOf-identity

postulate -- CompositeProperty is PowerInstanceOf Composite Property Type
  86b9a0756ac3295e : CompositeProperty ∷ₚₑ CompositePropertyType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Property Part: 
A Property Part is an aggregate composition (Class of Holonymy) of  a Property within a whole Composite Property.
-}
-- Aggregate Member : Property Part
PropertyPart : ClassOfClassOfAbstractEntity
PropertyPart = ClassOfAbstractEntity



--  PropertyPart is subTypeOf ClassOfAbstractEntity
st-3e5261066ab05e0f-3aca55ee6aa645c2 : PropertyPart ⊏ₑ ClassOfAbstractEntity
st-3e5261066ab05e0f-3aca55ee6aa645c2 = polySubTypeOf-identity

--  PropertyPart withAspect UnboundedMember
st-3e5261066ab05e0f-8cfaf71a6852b042 : PropertyPart ⊏ₐₑ (UnboundedMember (lsuc(lzero)))
st-3e5261066ab05e0f-8cfaf71a6852b042 = polySubTypeOf-identity

-- Membership relation
membershipOfPropertyPart :  Linkage CompositeProperty PropertyPart
membershipOfPropertyPart = make_upwardNestingRelation "propertyPart membership" "nested propertyPart"

-- Aggregation relation
aggregationOfPropertyPropertyPart :  Linkage PropertyPart Property
aggregationOfPropertyPropertyPart = make_Relation "Property aggregation" "aggregated Property"

{- propertyPart : derived relation obtained by composing
   membershipOfPropertyPart and aggregationOfPropertyPropertyPart
   It directly links an Composite Property to the final aggregated Property
   hiding the reifying PropertyPart
-}
propertyPart : Linkage CompositeProperty Property
propertyPart = membershipOfPropertyPart  ∘  aggregationOfPropertyPropertyPart

postulate -- propertyPart is subTypeOf classOfHolonymy
  st-3e5261066ab05e0f-d91704746a62320c  : propertyPart  ⊏⋆ᵣ  classOfHolonymy

