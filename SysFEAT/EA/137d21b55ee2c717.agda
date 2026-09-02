{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Table: 
ATable is a relational data structure, used as the reference for the switch to production. The Table is the central element of the relational databases. A table is accessible by means of a primary key, and if necessary foreign keys; it is described by an ordered sequence of Columns. A Table is generally derived from a Logical Data Entity or asssociation.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.137d21b55ee2c717 where -- ========== Table

open import Agda.Primitive
open import SysFEAT.EA.362f3ca45b3b234b public -- Relational Entity
open import SysFEAT.EA.4619527e560d45eb public -- Logical Data Entity

Table : ClassOfClassOfBoundedIndividual
Table = ClassOfBoundedIndividual

--  Table is subTypeOf RelationalEntity
st-137d249f5ee2d1e9 : Table ⊏ₑ RelationalEntity
st-137d249f5ee2d1e9 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Table: -}
specializedTable :  Linkage Table Table
specializedTable = make_subTypeOf "Specialized Table" "specializedTable"

postulate -- specializedTable is subTypeOf specializedPhysicalEntity
  st-325a373866f33d05-325a375866f33f11  : specializedTable   ⊏⋆ᵣ  specializedPhysicalEntity 

{- Realized Data Entity: -}
realizedDataEntity :  Linkage Table LogicalDataEntity
realizedDataEntity = make_subTypeOf "Realized Data Entity" "realizedDataEntity"

