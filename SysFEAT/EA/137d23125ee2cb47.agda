{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Data Map: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.137d23125ee2cb47 where -- ========== Relational Data Map

open import Agda.Primitive
open import SysFEAT.EA.f4be4bb95ee18b51 public -- Physical Data Map
open import SysFEAT.EA.7731894d62166495 public -- Relational Data bLOCK
open import SysFEAT.EA.362f3c7e5b3b22f8 public -- Relational Schema

RelationalDataMap : ClassOfClassOfBoundedIndividual
RelationalDataMap = ClassOfBoundedIndividual

--  RelationalDataMap is subTypeOf PhysicalDataMap
st-137d237e5ee2ce03 : RelationalDataMap ⊏ₑ PhysicalDataMap
st-137d237e5ee2ce03 = polySubTypeOf-identity

--  RelationalDataMap is subTypeOf RelationalDatabLOCK
st-77318b7362167b2f : RelationalDataMap ⊏⋆ₑ RelationalDatabLOCK
st-77318b7362167b2f = polySubTypeOf-identity

-- == Relationships =======================

{- Sub-Relational Domain: -}
-- Aggregate Member : Sub-Relational Domain
SubRelationalDomain : ClassOfClassOfIndividual
SubRelationalDomain = ClassOfIndividual

-- Membership relation
membershipOfSubRelationalDomain :  Linkage RelationalDataMap SubRelationalDomain
membershipOfSubRelationalDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfRelationalSchemaSubRelationalDomain :  Linkage SubRelationalDomain RelationalSchema
aggregationOfRelationalSchemaSubRelationalDomain = aggregationOfBuildingBlock

{- subRelationalDomain : derived relation obtained by composing
   membershipOfSubRelationalDomain and aggregationOfRelationalSchemaSubRelationalDomain
   It directly links an Relational Data Map to the final aggregated RelationalSchema
   hiding the reifying SubRelationalDomain
-}
subRelationalDomain : Linkage RelationalDataMap RelationalSchema
subRelationalDomain = membershipOfSubRelationalDomain  ∘  aggregationOfRelationalSchemaSubRelationalDomain

{- External Relational Domain: -}
-- Aggregate Member : External Relational Domain
ExternalRelationalDomain : ClassOfClassOfIndividual
ExternalRelationalDomain = ClassOfIndividual

-- Membership relation
membershipOfExternalRelationalDomain :  Linkage RelationalDataMap ExternalRelationalDomain
membershipOfExternalRelationalDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfRelationalSchemaExternalRelationalDomain :  Linkage ExternalRelationalDomain RelationalSchema
aggregationOfRelationalSchemaExternalRelationalDomain = aggregationOfBuildingBlock

{- externalRelationalDomain : derived relation obtained by composing
   membershipOfExternalRelationalDomain and aggregationOfRelationalSchemaExternalRelationalDomain
   It directly links an Relational Data Map to the final aggregated RelationalSchema
   hiding the reifying ExternalRelationalDomain
-}
externalRelationalDomain : Linkage RelationalDataMap RelationalSchema
externalRelationalDomain = membershipOfExternalRelationalDomain  ∘  aggregationOfRelationalSchemaExternalRelationalDomain
