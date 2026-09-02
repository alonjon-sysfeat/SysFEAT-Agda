{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Entity: 
A Relational Entity is a relational data structure that is either a Table or a Table View.A Relational Entity is accessible by means of a primary key, and if necessary foreign keys; it is described by an ordered sequence of Columns.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362f3ca45b3b234b where -- ========== Relational Entity

open import Agda.Primitive
open import SysFEAT.EA.762582bb5f6bd659 public -- Physical Data Entity
open import SysFEAT.EA.7731894d62166495 public -- Relational Data bLOCK
open import SysFEAT.EA.137d21d35ee2c7f3 public -- Column Type

RelationalEntity : ClassOfClassOfBoundedIndividual
RelationalEntity = ClassOfBoundedIndividual

--  RelationalEntity is subTypeOf PhysicalDataEntity
st-137d24225ee2cfa3 : RelationalEntity ⊏ₑ PhysicalDataEntity
st-137d24225ee2cfa3 = polySubTypeOf-identity

--  RelationalEntity is subTypeOf RelationalDatabLOCK
st-77318b7d62167bbb : RelationalEntity ⊏⋆ₑ RelationalDatabLOCK
st-77318b7d62167bbb = polySubTypeOf-identity

-- == Relationships =======================

{- Column: 
A Column is the basic component of a relational Relational Entity (Table or Table View). A Column is derived from the Attribute of a Logical Data Entity or an Association. It can be connected to the Index or the Key that it constitutes.
-}
-- Aggregate Member : Column
Column : ClassOfClassOfIndividual
Column = ClassOfIndividual

-- Membership relation
membershipOfColumn :  Linkage RelationalEntity Column
membershipOfColumn = membershipOfAggregateMember

-- Aggregation relation
aggregationOfColumnTypeColumn :  Linkage Column ColumnType
aggregationOfColumnTypeColumn = aggregationOfBuildingBlock

{- column : derived relation obtained by composing
   membershipOfColumn and aggregationOfColumnTypeColumn
   It directly links an Relational Entity to the final aggregated ColumnType
   hiding the reifying Column
-}
column : Linkage RelationalEntity ColumnType
column = membershipOfColumn  ∘  aggregationOfColumnTypeColumn
