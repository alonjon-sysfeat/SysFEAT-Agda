{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Simple Field: 
A Simple Field is a NoSQL Field that represent a single piece of data. A Simple Field cannot be decomposed.Simple Fields are often described by their name, primitive type and length.For instance,  customer name ,  customer id  and  stree number  are usually considered as Simple Fields.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a80ddaf663d347bc where -- ========== Simple Field

open import Agda.Primitive
open import SysFEAT.EA.254e4dd45f7f8749 public -- NoSQL Field

SimpleField : ClassOfClassOfBoundedIndividual
SimpleField = ClassOfBoundedIndividual

--  SimpleField is subTypeOf NoSQLField
st-a80ddb4f63d34870 : SimpleField ⊏ₑ NoSQLField
st-a80ddb4f63d34870 = polySubTypeOf-identity

-- == Relationships =======================
