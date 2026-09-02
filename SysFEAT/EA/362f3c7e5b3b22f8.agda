{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Schema: 
A Relational Schema is a set of relational Table , keys, indexes and associated items that represent the structure of a relational database. A relational database can have multiple schemas.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362f3c7e5b3b22f8 where -- ========== Relational Schema

open import Agda.Primitive
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain
open import SysFEAT.EA.7731894d62166495 public -- Relational Data bLOCK
open import SysFEAT.EA.362f3ca45b3b234b public -- Relational Entity

RelationalSchema : ClassOfClassOfBoundedIndividual
RelationalSchema = ClassOfBoundedIndividual

--  RelationalSchema is subTypeOf PhysicalDataDomain
st-028f04325b4f56b8 : RelationalSchema ⊏ₑ PhysicalDataDomain
st-028f04325b4f56b8 = polySubTypeOf-identity

--  RelationalSchema is subTypeOf RelationalDatabLOCK
st-77318b7862167b75 : RelationalSchema ⊏⋆ₑ RelationalDatabLOCK
st-77318b7862167b75 = polySubTypeOf-identity

-- == Relationships =======================

{- Relation Store Part: -}
-- Aggregate Member : Relation Store Part
RelationStorePart : ClassOfClassOfIndividual
RelationStorePart = ClassOfIndividual

-- Membership relation
membershipOfRelationStorePart :  Linkage RelationalSchema RelationStorePart
membershipOfRelationStorePart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfRelationalEntityRelationStorePart :  Linkage RelationStorePart RelationalEntity
aggregationOfRelationalEntityRelationStorePart = aggregationOfBuildingBlock

{- relationStorePart : derived relation obtained by composing
   membershipOfRelationStorePart and aggregationOfRelationalEntityRelationStorePart
   It directly links an Relational Schema to the final aggregated RelationalEntity
   hiding the reifying RelationStorePart
-}
relationStorePart : Linkage RelationalSchema RelationalEntity
relationStorePart = membershipOfRelationStorePart  ∘  aggregationOfRelationalEntityRelationStorePart

{- Sub Data Area: -}
-- Aggregate Member : Sub Data Area
SubDataArea : ClassOfClassOfIndividual
SubDataArea = ClassOfIndividual

-- Membership relation
membershipOfSubDataArea :  Linkage RelationalSchema SubDataArea
membershipOfSubDataArea = membershipOfAggregateMember

-- Aggregation relation
aggregationOfRelationalEntitySubDataArea :  Linkage SubDataArea RelationalEntity
aggregationOfRelationalEntitySubDataArea = aggregationOfBuildingBlock

{- subDataArea : derived relation obtained by composing
   membershipOfSubDataArea and aggregationOfRelationalEntitySubDataArea
   It directly links an Relational Schema to the final aggregated RelationalEntity
   hiding the reifying SubDataArea
-}
subDataArea : Linkage RelationalSchema RelationalEntity
subDataArea = membershipOfSubDataArea  ∘  aggregationOfRelationalEntitySubDataArea
