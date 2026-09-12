{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Column Type: 
An Column Type is specification of the content of a Column such as  customer name ,  order date ,  address .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.137d21d35ee2c7f3 where -- ========== Column Type

open import Agda.Primitive
open import SysFEAT.EA.e6f220d45f771837 public -- Physical Data Property

ColumnType : ClassOfClassOfBoundedIndividual
ColumnType = ClassOfBoundedIndividual

--  ColumnType is subTypeOf PhysicalDataProperty
st-e6f22cb65f771ec0 : ColumnType ⊏ₑ PhysicalDataProperty
st-e6f22cb65f771ec0 = polySubTypeOf-identity

-- == Relationships =======================
