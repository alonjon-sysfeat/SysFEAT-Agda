{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Data Schema: 
A NoSQL Data Schema represents a set of data stored in a NOSQL database management system and used in Application Deployment Architectures.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.028f05535b4f58b0 where -- ========== NoSQL Data Schema

open import Agda.Primitive
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain
open import SysFEAT.EA.8180baa3600110c8 public -- NoSQL Element

NoSQLDataSchema : ClassOfClassOfBoundedIndividual
NoSQLDataSchema = ClassOfBoundedIndividual

--  NoSQLDataSchema is subTypeOf PhysicalDataDomain
st-028f05655b4f58d8 : NoSQLDataSchema ⊏ₑ PhysicalDataDomain
st-028f05655b4f58d8 = polySubTypeOf-identity

-- == Relationships =======================

{- Included NoSQL Element: -}
-- Aggregate Member : Included NoSQL Element
IncludedNoSQLElement : ClassOfClassOfIndividual
IncludedNoSQLElement = ClassOfIndividual

-- Membership relation
membershipOfIncludedNoSQLElement :  Linkage NoSQLDataSchema IncludedNoSQLElement
membershipOfIncludedNoSQLElement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNoSQLElementIncludedNoSQLElement :  Linkage IncludedNoSQLElement NoSQLElement
aggregationOfNoSQLElementIncludedNoSQLElement = aggregationOfBuildingBlock

{- includedNoSQLElement : derived relation obtained by composing
   membershipOfIncludedNoSQLElement and aggregationOfNoSQLElementIncludedNoSQLElement
   It directly links an NoSQL Data Schema to the final aggregated NoSQLElement
   hiding the reifying IncludedNoSQLElement
-}
includedNoSQLElement : Linkage NoSQLDataSchema NoSQLElement
includedNoSQLElement = membershipOfIncludedNoSQLElement  ∘  aggregationOfNoSQLElementIncludedNoSQLElement
