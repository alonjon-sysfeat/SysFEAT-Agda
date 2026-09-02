{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Field: 
A NoSQL Field is a Physical Data Property that is the specification of the content of a NoSQL Dataset.NoSQL Fields can be  reused  by multiple NoSQL Datasets where they play the role of Identification MetaField, Relationship MetaField or Value MetaField.A NoSQL Field can be :1) a Primitive Type that defines the data type of a field, such as  string  or  integer .2) a Simple Field that defines a simple value such as  customer name  or  delivery date . Simple Fields are often described by their name, primitive type and length.3) a Structured Field that defines complex values such as  address .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.254e4dd45f7f8749 where -- ========== NoSQL Field

open import Agda.Primitive
open import SysFEAT.EA.e6f220d45f771837 public -- Physical Data Property
open import SysFEAT.EA.8180baa3600110c8 public -- NoSQL Element

NoSQLField : ClassOfClassOfBoundedIndividual
NoSQLField = ClassOfBoundedIndividual

--  NoSQLField is subTypeOf PhysicalDataProperty
st-254e4fcf5f7f8a54 : NoSQLField ⊏ₑ PhysicalDataProperty
st-254e4fcf5f7f8a54 = polySubTypeOf-identity

--  NoSQLField is subTypeOf NoSQLElement
st-cd7a52a95ff3e6a7 : NoSQLField ⊏ₑ NoSQLElement
st-cd7a52a95ff3e6a7 = polySubTypeOf-identity

-- == Relationships =======================

{- Super Meta Field: -}
superMetaField :  Linkage NoSQLField NoSQLField
superMetaField = make_classOfHolonymy "Super Meta Field" "superMetaField"

