{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Primitive Type: 
A Primitive Type is a NoSQL Field that represents a data format such as  string ,  integer .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7326bf5e63d77585 where -- ========== Primitive Type

open import Agda.Primitive
open import SysFEAT.EA.254e4dd45f7f8749 public -- NoSQL Field

PrimitiveType : ClassOfClassOfBoundedIndividual
PrimitiveType = ClassOfBoundedIndividual

--  PrimitiveType is subTypeOf NoSQLField
st-7326bf6563d775c9 : PrimitiveType ⊏ₑ NoSQLField
st-7326bf6563d775c9 = polySubTypeOf-identity

-- == Relationships =======================
