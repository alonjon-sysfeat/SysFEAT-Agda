{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Column Type: 
An Column Type is specification of the content of a Column such as  customer name ,  order date ,  address .

Documentation : https://framework.sysfeat.com/pages/137d21d35ee2c7f3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.137d21d35ee2c7f3 where -- ========== Column Type

open import Agda.Primitive
open import SysFEAT.EA.e6f220d45f771837 public -- Physical Data Property

ColumnType : ClassOfClassOfBoundedIndividual
ColumnType = ClassOfBoundedIndividual

--  ColumnType is subTypeOf PhysicalDataProperty
st-137d21d35ee2c7f3-e6f220d45f771837 : ColumnType ⊏ₑ PhysicalDataProperty
st-137d21d35ee2c7f3-e6f220d45f771837 = polySubTypeOf-identity


-- == Relations =======================
