{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

MetaData Schema: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.254e4d265f7f857a where -- ========== MetaData Schema

open import Agda.Primitive
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain
open import SysFEAT.EA.77318c6c62167dd7 public -- NoSQL Data Asset
open import SysFEAT.EA.8180baa3600110c8 public -- NoSQL Element

MetaDataSchema : ClassOfClassOfBoundedIndividual
MetaDataSchema = ClassOfBoundedIndividual

--  MetaDataSchema is subTypeOf PhysicalDataDomain
st-ae2430e26039035d : MetaDataSchema ⊏ₑ PhysicalDataDomain
st-ae2430e26039035d = polySubTypeOf-identity

--  MetaDataSchema is subTypeOf NoSQLDataAsset
st-77318d6262167ffa : MetaDataSchema ⊏⋆ₑ NoSQLDataAsset
st-77318d6262167ffa = polySubTypeOf-identity

-- == Relationships =======================

{- Data Set: 
NoSQL Dataset that is defined by a MetaData Schema.
-}
-- Aggregate Member : Data Set
DataSet : ClassOfClassOfIndividual
DataSet = ClassOfIndividual

-- Membership relation
membershipOfDataSet :  Linkage MetaDataSchema DataSet
membershipOfDataSet = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNoSQLElementDataSet :  Linkage DataSet NoSQLElement
aggregationOfNoSQLElementDataSet = aggregationOfBuildingBlock

{- dataSet : derived relation obtained by composing
   membershipOfDataSet and aggregationOfNoSQLElementDataSet
   It directly links an MetaData Schema to the final aggregated NoSQLElement
   hiding the reifying DataSet
-}
dataSet : Linkage MetaDataSchema NoSQLElement
dataSet = membershipOfDataSet  ∘  aggregationOfNoSQLElementDataSet
