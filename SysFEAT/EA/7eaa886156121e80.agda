{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data View: 
A Logical Data View a collection of filtered Logical Data Entitys.
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
st-2b58597c5eec556d : LogicalDataView ⊏ₑ LogicalDataElement
st-2b58597c5eec556d = polySubTypeOf-identity

--  LogicalDataView is subTypeOf DataEntity
st-4478c335603c1b8c : LogicalDataView ⊏ₑ DataEntity
st-4478c335603c1b8c = polySubTypeOf-identity

-- == Relationships =======================

{- Root Data Entity: -}
-- Aggregate Member : Root Data Entity
RootDataEntity : ClassOfClassOfIndividual
RootDataEntity = ClassOfIndividual

-- Membership relation
membershipOfRootDataEntity :  Linkage LogicalDataView RootDataEntity
membershipOfRootDataEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataEntityRootDataEntity :  Linkage RootDataEntity LogicalDataEntity
aggregationOfLogicalDataEntityRootDataEntity = aggregationOfBuildingBlock

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
membershipOfEmbeddedDataObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataElementEmbeddedDataObject :  Linkage EmbeddedDataObject LogicalDataElement
aggregationOfLogicalDataElementEmbeddedDataObject = aggregationOfBuildingBlock

{- embeddedDataObject : derived relation obtained by composing
   membershipOfEmbeddedDataObject and aggregationOfLogicalDataElementEmbeddedDataObject
   It directly links an Logical Data View to the final aggregated LogicalDataElement
   hiding the reifying EmbeddedDataObject
-}
embeddedDataObject : Linkage LogicalDataView LogicalDataElement
embeddedDataObject = membershipOfEmbeddedDataObject  ∘  aggregationOfLogicalDataElementEmbeddedDataObject

{- Referenced Entity: -}
-- Aggregate Member : Referenced Entity
ReferencedEntity : ClassOfClassOfIndividual
ReferencedEntity = ClassOfIndividual

-- Membership relation
membershipOfReferencedEntity :  Linkage LogicalDataView ReferencedEntity
membershipOfReferencedEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataEntityReferencedEntity :  Linkage ReferencedEntity LogicalDataEntity
aggregationOfLogicalDataEntityReferencedEntity = aggregationOfBuildingBlock

{- referencedEntity : derived relation obtained by composing
   membershipOfReferencedEntity and aggregationOfLogicalDataEntityReferencedEntity
   It directly links an Logical Data View to the final aggregated LogicalDataEntity
   hiding the reifying ReferencedEntity
-}
referencedEntity : Linkage LogicalDataView LogicalDataEntity
referencedEntity = membershipOfReferencedEntity  ∘  aggregationOfLogicalDataEntityReferencedEntity
