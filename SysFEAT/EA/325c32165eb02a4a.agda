{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Domain: 
A Data Domain is subset of the enterprises data that are meant to be manipulated together in the context of business operations.For instance, a  Sales  Data Domain contains at least the following entities: Customers, Orders, Products.Each Data Entity in a Data Domain has CRUD characteristics. For instance, Products are read-only in a  Sales  Data Domain, while Customers and Orders have all CRUD characteristics.Data Domains define functional data boundaries used both for Data Allocation to Business Systems (see Data Stores) and Data Governance for data stewardship (Data Catalogs).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.325c32165eb02a4a where -- ========== Data Domain

open import Agda.Primitive
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain
open import SysFEAT.EA.203b8ff05a5f43fe public -- Concept Domain
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

DataDomain : ClassOfClassOfBoundedIndividual
DataDomain = ClassOfBoundedIndividual

--  DataDomain withAspect DataBlock
st-30efb3c561f37d21 : DataDomain ⊏ₐₑ (DataBlock (lsuc(lzero)))
st-30efb3c561f37d21 = polySubTypeOf-identity

--  DataDomain is subTypeOf InformationDomain
st-cbd9df655fb7dbfb : DataDomain ⊏ₑ InformationDomain
st-cbd9df655fb7dbfb = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Data Area: -}
specializedDataArea :  Linkage DataDomain DataDomain
specializedDataArea = make_subTypeOf "Specialized Data Area" "specializedDataArea"

postulate -- specializedDataArea is subTypeOf specializedInformationDomain
  st-325a376f66f346b3-325a380a66f34efb  : specializedDataArea   ⊏⋆ᵣ  specializedInformationDomain 

{- Realized Concept Domain: -}
realizedConceptDomain :  Linkage DataDomain ConceptDomain
realizedConceptDomain = make_subTypeOf "Realized Concept Domain" "realizedConceptDomain"

postulate -- realizedConceptDomain is subTypeOf realizedInformationDomain
  st-325a3a1566f35bda-325a3a0e66f3562c  : realizedConceptDomain   ⊏⋆ᵣ  realizedInformationDomain 

{- Domain Data Object: -}
-- Aggregate Member : Domain Data Object
DomainDataObject : ClassOfClassOfIndividual
DomainDataObject = ClassOfIndividual

-- Membership relation
membershipOfDomainDataObject :  Linkage DataDomain DomainDataObject
membershipOfDomainDataObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataAssetDomainDataObject :  Linkage DomainDataObject DataAsset
aggregationOfDataAssetDomainDataObject = aggregationOfBuildingBlock

{- domainDataObject : derived relation obtained by composing
   membershipOfDomainDataObject and aggregationOfDataAssetDomainDataObject
   It directly links an Data Domain to the final aggregated DataAsset
   hiding the reifying DomainDataObject
-}
domainDataObject : Linkage DataDomain DataAsset
domainDataObject = membershipOfDomainDataObject  ∘  aggregationOfDataAssetDomainDataObject

{- Sub-Data Area: -}
-- Aggregate Member : Sub-Data Area
SubDataArea : ClassOfClassOfIndividual
SubDataArea = ClassOfIndividual

-- Membership relation
membershipOfSubDataArea :  Linkage DataDomain SubDataArea
membershipOfSubDataArea = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataDomainSubDataArea :  Linkage SubDataArea DataDomain
aggregationOfDataDomainSubDataArea = aggregationOfBuildingBlock

{- subDataArea : derived relation obtained by composing
   membershipOfSubDataArea and aggregationOfDataDomainSubDataArea
   It directly links an Data Domain to the final aggregated DataDomain
   hiding the reifying SubDataArea
-}
subDataArea : Linkage DataDomain DataDomain
subDataArea = membershipOfSubDataArea  ∘  aggregationOfDataDomainSubDataArea
