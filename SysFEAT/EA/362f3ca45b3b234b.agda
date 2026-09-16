{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Entity: 
A Relational Entity is a relational data structure that is either a Table or a Table View.A Relational Entity is accessible by means of a primary key, and if necessary foreign keys; it is described by an ordered sequence of Columns.

Documentation : https://framework.sysfeat.com/pages/362f3ca45b3b234b.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
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
st-362f3ca45b3b234b-762582bb5f6bd659 : RelationalEntity ⊏ₑ PhysicalDataEntity
st-362f3ca45b3b234b-762582bb5f6bd659 = polySubTypeOf-identity

--  RelationalEntity is subTypeOf RelationalDatabLOCK
st-362f3ca45b3b234b-7731894d62166495 : RelationalEntity ⊏⋆ₑ RelationalDatabLOCK
st-362f3ca45b3b234b-7731894d62166495 = polySubTypeOf-identity

-- == Relationships =======================

{- Column: 
A Column is the basic component of a relational Relational Entity (Table or Table View). A Column is derived from the Attribute of a Logical Data Entity or an Association. It can be connected to the Index or the Key that it constitutes.
-}
-- Aggregate Member : Column
Column : ClassOfClassOfIndividual
Column = ClassOfIndividual

-- Membership relation
membershipOfColumn :  Linkage RelationalEntity Column
membershipOfColumn = make_upwardNestingRelation "column membership" "nested column"

-- Aggregation relation
aggregationOfColumnTypeColumn :  Linkage Column ColumnType
aggregationOfColumnTypeColumn = make_Relation "ColumnType aggregation" "aggregated ColumnType"

{- column : derived relation obtained by composing
   membershipOfColumn and aggregationOfColumnTypeColumn
   It directly links an Relational Entity to the final aggregated ColumnType
   hiding the reifying Column
-}
column : Linkage RelationalEntity ColumnType
column = membershipOfColumn  ∘  aggregationOfColumnTypeColumn

postulate -- column is subTypeOf physicalDataSlot
  st-137d21e95ee2c954-e6f222845f771913  : column   ⊏⋆ᵣ  physicalDataSlot 
postulate -- column is subTypeOf physicalRelationship
  st-137d21e95ee2c954-b6e3df8e5fbb724d  : column   ⊏⋆ᵣ  physicalRelationship 

