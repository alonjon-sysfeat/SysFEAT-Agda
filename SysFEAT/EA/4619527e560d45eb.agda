{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Entity: 
A Logical Data Entity is a logical structure of a Data Entity. As any Data Entity, it has an independent existence and can be uniquely identified.A Logical Data Entity is characterized by Logical Relationships it has with other Logical Data Entity(ies) and by its Attributes.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4619527e560d45eb where -- ========== Logical Data Entity

open import Agda.Primitive
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element
open import SysFEAT.EA.325c32fc5eb02d02 public -- Data Entity
open import SysFEAT.EA.7d5286635eae7273 public -- Logical Data Property

LogicalDataEntity : ClassOfClassOfBoundedIndividual
LogicalDataEntity = ClassOfBoundedIndividual

--  LogicalDataEntity is subTypeOf LogicalDataElement
st-2b5859115eec5326 : LogicalDataEntity ⊏ₑ LogicalDataElement
st-2b5859115eec5326 = polySubTypeOf-identity

--  LogicalDataEntity is subTypeOf DataEntity
st-e7e3fb2c5fbb10f8 : LogicalDataEntity ⊏ₑ DataEntity
st-e7e3fb2c5fbb10f8 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Logical Entity: -}
specializedLogicalEntity :  Linkage LogicalDataEntity LogicalDataEntity
specializedLogicalEntity = make_subTypeOf "Specialized Logical Entity" "specializedLogicalEntity"

postulate -- specializedLogicalEntity is subTypeOf specializedDataEntity
  st-325a39d866f35355-325a380d66f350dd  : specializedLogicalEntity   ⊏⋆ᵣ  specializedDataEntity 
postulate -- specializedLogicalEntity is subTypeOf specializedDataObject
  st-325a39d866f35355-325a380d66f3515e  : specializedLogicalEntity   ⊏⋆ᵣ  specializedDataObject 

{- Attribute: 
An Attribute is a value property of a Logical Data Entity.
-}
-- Aggregate Member : Attribute
Attribute : ClassOfClassOfIndividual
Attribute = ClassOfIndividual

-- Membership relation
membershipOfAttribute :  Linkage LogicalDataEntity Attribute
membershipOfAttribute = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataPropertyAttribute :  Linkage Attribute LogicalDataProperty
aggregationOfLogicalDataPropertyAttribute = aggregationOfBuildingBlock

{- attribute : derived relation obtained by composing
   membershipOfAttribute and aggregationOfLogicalDataPropertyAttribute
   It directly links an Logical Data Entity to the final aggregated LogicalDataProperty
   hiding the reifying Attribute
-}
attribute : Linkage LogicalDataEntity LogicalDataProperty
attribute = membershipOfAttribute  ∘  aggregationOfLogicalDataPropertyAttribute

{- Logical Relationship: 
A part of a class, a component, etc. or a role of a collaboration.
-}
-- Aggregate Member : Logical Relationship
LogicalRelationship : ClassOfClassOfIndividual
LogicalRelationship = ClassOfIndividual

-- Membership relation
membershipOfLogicalRelationship :  Linkage LogicalDataEntity LogicalRelationship
membershipOfLogicalRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataEntityLogicalRelationship :  Linkage LogicalRelationship LogicalDataEntity
aggregationOfLogicalDataEntityLogicalRelationship = aggregationOfBuildingBlock

{- logicalRelationship : derived relation obtained by composing
   membershipOfLogicalRelationship and aggregationOfLogicalDataEntityLogicalRelationship
   It directly links an Logical Data Entity to the final aggregated LogicalDataEntity
   hiding the reifying LogicalRelationship
-}
logicalRelationship : Linkage LogicalDataEntity LogicalDataEntity
logicalRelationship = membershipOfLogicalRelationship  ∘  aggregationOfLogicalDataEntityLogicalRelationship
