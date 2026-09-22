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


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Root Data Entity: -}
-- Aggregate Member : Root Data Entity
RootDataEntity : ClassOfClassOfBoundedIndividual
RootDataEntity = ClassOfBoundedIndividual



--  RootDataEntity is subTypeOf LogicalDataEntity
st-2b585c895eec581f-4619527e560d45eb : RootDataEntity ⊏ₑ LogicalDataEntity
st-2b585c895eec581f-4619527e560d45eb = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Embedded Data Object: -}
-- Aggregate Member : Embedded Data Object
EmbeddedDataObject : ClassOfClassOfBoundedIndividual
EmbeddedDataObject = ClassOfBoundedIndividual



--  EmbeddedDataObject is subTypeOf Attribute
st-2b58627c5eec61ec-8f1c9ad668ca8db4 : EmbeddedDataObject ⊏ₑ Attribute
st-2b58627c5eec61ec-8f1c9ad668ca8db4 = polySubTypeOf-identity

--  EmbeddedDataObject is subTypeOf LogicalDataElement
st-2b58627c5eec61ec-2b5858b85eec51d9 : EmbeddedDataObject ⊏ₑ LogicalDataElement
st-2b58627c5eec61ec-2b5858b85eec51d9 = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Referenced Entity: -}
-- Aggregate Member : Referenced Entity
ReferencedEntity : ClassOfClassOfBoundedIndividual
ReferencedEntity = ClassOfBoundedIndividual



--  ReferencedEntity is subTypeOf LogicalDataMember
st-2b5862e95eec6337-e7e3fa0a5fbb0ddb : ReferencedEntity ⊏ₑ LogicalDataMember
st-2b5862e95eec6337-e7e3fa0a5fbb0ddb = polySubTypeOf-identity

--  ReferencedEntity is subTypeOf Relationship
st-2b5862e95eec6337-b6e3cc7a5fbb6878 : ReferencedEntity ⊏ₑ Relationship
st-2b5862e95eec6337-b6e3cc7a5fbb6878 = polySubTypeOf-identity

--  ReferencedEntity is subTypeOf LogicalDataEntity
st-2b5862e95eec6337-4619527e560d45eb : ReferencedEntity ⊏ₑ LogicalDataEntity
st-2b5862e95eec6337-4619527e560d45eb = polySubTypeOf-identity

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


