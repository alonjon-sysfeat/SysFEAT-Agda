{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data View: 
A Logical Data View a collection of filtered Logical Data Entitys.

Documentation : https://framework.sysfeat.com/pages/7eaa886156121e80.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7eaa886156121e80 where -- ========== Logical Data View

open import Agda.Primitive
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element
open import SysFEAT.EA.325c32fc5eb02d02 public -- Data Entity
open import SysFEAT.EA.4619527e560d45eb public -- Logical Data Entity

LogicalDataView : ClassOfClassOfBoundedIndividual
LogicalDataView = ClassOfBoundedIndividual

--  LogicalDataView is subTypeOf LogicalDataElement
st-7eaa886156121e80-2b5858b85eec51d9 : LogicalDataView ⊏ₑ LogicalDataElement
st-7eaa886156121e80-2b5858b85eec51d9 = polySubTypeOf-identity

--  LogicalDataView is subTypeOf DataEntity
st-7eaa886156121e80-325c32fc5eb02d02 : LogicalDataView ⊏ₑ DataEntity
st-7eaa886156121e80-325c32fc5eb02d02 = polySubTypeOf-identity

-- == Relationships =======================

{- Root Data Entity: -}
-- Aggregate Member : Root Data Entity
RootDataEntity : ClassOfClassOfIndividual
RootDataEntity = ClassOfIndividual

-- Membership relation
membershipOfRootDataEntity :  Linkage LogicalDataView RootDataEntity
membershipOfRootDataEntity = make_upwardNestingRelation "rootDataEntity membership" "nested rootDataEntity"

-- Aggregation relation
aggregationOfLogicalDataEntityRootDataEntity :  Linkage RootDataEntity LogicalDataEntity
aggregationOfLogicalDataEntityRootDataEntity = make_Relation "LogicalDataEntity aggregation" "aggregated LogicalDataEntity"

{- rootDataEntity : derived relation obtained by composing
   membershipOfRootDataEntity and aggregationOfLogicalDataEntityRootDataEntity
   It directly links an Logical Data View to the final aggregated LogicalDataEntity
   hiding the reifying RootDataEntity
-}
rootDataEntity : Linkage LogicalDataView LogicalDataEntity
rootDataEntity = membershipOfRootDataEntity  ∘  aggregationOfLogicalDataEntityRootDataEntity



{- Embedded Data Object: -}
-- Aggregate Member : Embedded Data Object
EmbeddedDataObject : ClassOfClassOfIndividual
EmbeddedDataObject = ClassOfIndividual

-- Membership relation
membershipOfEmbeddedDataObject :  Linkage LogicalDataView EmbeddedDataObject
membershipOfEmbeddedDataObject = make_upwardNestingRelation "embeddedDataObject membership" "nested embeddedDataObject"

-- Aggregation relation
aggregationOfLogicalDataElementEmbeddedDataObject :  Linkage EmbeddedDataObject LogicalDataElement
aggregationOfLogicalDataElementEmbeddedDataObject = make_Relation "LogicalDataElement aggregation" "aggregated LogicalDataElement"

{- embeddedDataObject : derived relation obtained by composing
   membershipOfEmbeddedDataObject and aggregationOfLogicalDataElementEmbeddedDataObject
   It directly links an Logical Data View to the final aggregated LogicalDataElement
   hiding the reifying EmbeddedDataObject
-}
embeddedDataObject : Linkage LogicalDataView LogicalDataElement
embeddedDataObject = membershipOfEmbeddedDataObject  ∘  aggregationOfLogicalDataElementEmbeddedDataObject

postulate -- embeddedDataObject is subTypeOf attribute
  st-2b58627c5eec61ec-8f1c9ad668ca8db4  : embeddedDataObject   ⊏⋆ᵣ  attribute 


{- Referenced Entity: -}
-- Aggregate Member : Referenced Entity
ReferencedEntity : ClassOfClassOfIndividual
ReferencedEntity = ClassOfIndividual

-- Membership relation
membershipOfReferencedEntity :  Linkage LogicalDataView ReferencedEntity
membershipOfReferencedEntity = make_upwardNestingRelation "referencedEntity membership" "nested referencedEntity"

-- Aggregation relation
aggregationOfLogicalDataEntityReferencedEntity :  Linkage ReferencedEntity LogicalDataEntity
aggregationOfLogicalDataEntityReferencedEntity = make_Relation "LogicalDataEntity aggregation" "aggregated LogicalDataEntity"

{- referencedEntity : derived relation obtained by composing
   membershipOfReferencedEntity and aggregationOfLogicalDataEntityReferencedEntity
   It directly links an Logical Data View to the final aggregated LogicalDataEntity
   hiding the reifying ReferencedEntity
-}
referencedEntity : Linkage LogicalDataView LogicalDataEntity
referencedEntity = membershipOfReferencedEntity  ∘  aggregationOfLogicalDataEntityReferencedEntity

postulate -- referencedEntity is subTypeOf logicalDataMember
  st-2b5862e95eec6337-e7e3fa0a5fbb0ddb  : referencedEntity   ⊏⋆ᵣ  logicalDataMember 
postulate -- referencedEntity is subTypeOf relationship
  st-2b5862e95eec6337-b6e3cc7a5fbb6878  : referencedEntity   ⊏⋆ᵣ  relationship 

