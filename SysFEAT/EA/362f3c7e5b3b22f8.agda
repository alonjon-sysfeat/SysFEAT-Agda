{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Schema: 
A Relational Schema is a set of relational Table , keys, indexes and associated items that represent the structure of a relational database. A relational database can have multiple schemas.

Documentation : https://framework.sysfeat.com/pages/362f3c7e5b3b22f8.htm

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
st-362f3c7e5b3b22f8-028f03ff5b4f55ee : RelationalSchema ⊏ₑ PhysicalDataDomain
st-362f3c7e5b3b22f8-028f03ff5b4f55ee = polySubTypeOf-identity

--  RelationalSchema is subTypeOf RelationalDatabLOCK
st-362f3c7e5b3b22f8-7731894d62166495 : RelationalSchema ⊏⋆ₑ RelationalDatabLOCK
st-362f3c7e5b3b22f8-7731894d62166495 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Relation Store Part: -}
-- Aggregate Member : Relation Store Part
RelationStorePart : ClassOfClassOfBoundedIndividual
RelationStorePart = ClassOfBoundedIndividual



--  RelationStorePart is subTypeOf PhysicalDomainObject
st-137d23d85ee2ced6-e6f223f55f771b8d : RelationStorePart ⊏ₑ PhysicalDomainObject
st-137d23d85ee2ced6-e6f223f55f771b8d = polySubTypeOf-identity

--  RelationStorePart is subTypeOf RelationalEntity
st-137d23d85ee2ced6-362f3ca45b3b234b : RelationStorePart ⊏ₑ RelationalEntity
st-137d23d85ee2ced6-362f3ca45b3b234b = polySubTypeOf-identity

-- Membership relation
membershipOfRelationStorePart :  Linkage RelationalSchema RelationStorePart
membershipOfRelationStorePart = make_upwardNestingRelation "relationStorePart membership" "nested relationStorePart"

-- Aggregation relation
aggregationOfRelationalEntityRelationStorePart :  Linkage RelationStorePart RelationalEntity
aggregationOfRelationalEntityRelationStorePart = make_Relation "RelationalEntity aggregation" "aggregated RelationalEntity"

{- relationStorePart : derived relation obtained by composing
   membershipOfRelationStorePart and aggregationOfRelationalEntityRelationStorePart
   It directly links an Relational Schema to the final aggregated RelationalEntity
   hiding the reifying RelationStorePart
-}
relationStorePart : Linkage RelationalSchema RelationalEntity
relationStorePart = membershipOfRelationStorePart  ∘  aggregationOfRelationalEntityRelationStorePart



-- -------------------------------------------------------------------------------------------- 
{- Sub Data Area: -}
-- Aggregate Member : Sub Data Area
SubDataArea : ClassOfClassOfBoundedIndividual
SubDataArea = ClassOfBoundedIndividual



--  SubDataArea is subTypeOf RelationalEntity
st-f4be32dc5ee1b4ee-362f3ca45b3b234b : SubDataArea ⊏ₑ RelationalEntity
st-f4be32dc5ee1b4ee-362f3ca45b3b234b = polySubTypeOf-identity

-- Membership relation
membershipOfSubDataArea :  Linkage RelationalSchema SubDataArea
membershipOfSubDataArea = make_upwardNestingRelation "subDataArea membership" "nested subDataArea"

-- Aggregation relation
aggregationOfRelationalEntitySubDataArea :  Linkage SubDataArea RelationalEntity
aggregationOfRelationalEntitySubDataArea = make_Relation "RelationalEntity aggregation" "aggregated RelationalEntity"

{- subDataArea : derived relation obtained by composing
   membershipOfSubDataArea and aggregationOfRelationalEntitySubDataArea
   It directly links an Relational Schema to the final aggregated RelationalEntity
   hiding the reifying SubDataArea
-}
subDataArea : Linkage RelationalSchema RelationalEntity
subDataArea = membershipOfSubDataArea  ∘  aggregationOfRelationalEntitySubDataArea


