{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Composite Property: 
A Composite Property is a Property that is composed of other Propertys.

Documentation : https://framework.sysfeat.com/pages/3e525e406ab05b0d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3e525e406ab05b0d where -- ========== Composite Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property
open import SysFEAT.UpperOntology.23d56d9868525869 public -- Aggregate Entity Block

CompositeProperty : PropertyType
CompositeProperty = Property


--  CompositeProperty is subTypeOf Property
st-3e525e406ab05b0d-746ac18368905aa2 : CompositeProperty ⊏ₑ Property
st-3e525e406ab05b0d-746ac18368905aa2 = polySubTypeOf-identity

--  CompositeProperty withAspect AggregateEntityBlock
st-3e525e406ab05b0d-23d56d9868525869 : CompositeProperty ⊏ₐₑ (AggregateEntityBlock (lsuc(lzero)))
st-3e525e406ab05b0d-23d56d9868525869 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Property Part: 
A Property Part is a composition (Class of Holonymy) of a Composite Property.
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
3E5261076AB05E60 :  Linkage CompositeProperty PropertyPart
3E5261076AB05E60 = make_upwardNestingRelation "propertyPart membership" "nested propertyPart"

-- Aggregation relation
3E5261076AB05E1D :  Linkage PropertyPart Property
3E5261076AB05E1D = make_Relation "Property aggregation" "aggregated Property"

{- propertyPart : derived relation obtained by composing
   3E5261076AB05E60 and 3E5261076AB05E1D
   It directly links an Composite Property to the final aggregated Property
   hiding the reifying PropertyPart
-}
propertyPart : Linkage CompositeProperty Property
propertyPart = 3E5261076AB05E60  ∘  3E5261076AB05E1D

postulate -- propertyPart is subTypeOf classOfHolonymy
  st-3e5261066ab05e0f-d91704746a62320c  : propertyPart  ⊏⋆ᵣ  classOfHolonymy

