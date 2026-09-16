{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Data Map: 


Documentation : https://framework.sysfeat.com/pages/137d23125ee2cb47.htm

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
st-137d23125ee2cb47-f4be4bb95ee18b51 : RelationalDataMap ⊏ₑ PhysicalDataMap
st-137d23125ee2cb47-f4be4bb95ee18b51 = polySubTypeOf-identity

--  RelationalDataMap is subTypeOf RelationalDatabLOCK
st-137d23125ee2cb47-7731894d62166495 : RelationalDataMap ⊏⋆ₑ RelationalDatabLOCK
st-137d23125ee2cb47-7731894d62166495 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub-Relational Domain: -}
-- Aggregate Member : Sub-Relational Domain
SubRelationalDomain : ClassOfClassOfIndividual
SubRelationalDomain = ClassOfIndividual

-- Membership relation
membershipOfSubRelationalDomain :  Linkage RelationalDataMap SubRelationalDomain
membershipOfSubRelationalDomain = make_upwardNestingRelation "subRelationalDomain membership" "nested subRelationalDomain"

-- Aggregation relation
aggregationOfRelationalSchemaSubRelationalDomain :  Linkage SubRelationalDomain RelationalSchema
aggregationOfRelationalSchemaSubRelationalDomain = make_Relation "RelationalSchema aggregation" "aggregated RelationalSchema"

{- subRelationalDomain : derived relation obtained by composing
   membershipOfSubRelationalDomain and aggregationOfRelationalSchemaSubRelationalDomain
   It directly links an Relational Data Map to the final aggregated RelationalSchema
   hiding the reifying SubRelationalDomain
-}
subRelationalDomain : Linkage RelationalDataMap RelationalSchema
subRelationalDomain = membershipOfSubRelationalDomain  ∘  aggregationOfRelationalSchemaSubRelationalDomain

postulate -- subRelationalDomain is subTypeOf physicalDomainMember
  st-137d232b5ee2ccee-f4be4c025ee18d1e  : subRelationalDomain   ⊏⋆ᵣ  physicalDomainMember 


{- External Relational Domain: -}
-- Aggregate Member : External Relational Domain
ExternalRelationalDomain : ClassOfClassOfIndividual
ExternalRelationalDomain = ClassOfIndividual

-- Membership relation
membershipOfExternalRelationalDomain :  Linkage RelationalDataMap ExternalRelationalDomain
membershipOfExternalRelationalDomain = make_upwardNestingRelation "externalRelationalDomain membership" "nested externalRelationalDomain"

-- Aggregation relation
aggregationOfRelationalSchemaExternalRelationalDomain :  Linkage ExternalRelationalDomain RelationalSchema
aggregationOfRelationalSchemaExternalRelationalDomain = make_Relation "RelationalSchema aggregation" "aggregated RelationalSchema"

{- externalRelationalDomain : derived relation obtained by composing
   membershipOfExternalRelationalDomain and aggregationOfRelationalSchemaExternalRelationalDomain
   It directly links an Relational Data Map to the final aggregated RelationalSchema
   hiding the reifying ExternalRelationalDomain
-}
externalRelationalDomain : Linkage RelationalDataMap RelationalSchema
externalRelationalDomain = membershipOfExternalRelationalDomain  ∘  aggregationOfRelationalSchemaExternalRelationalDomain

postulate -- externalRelationalDomain is subTypeOf externalPhysicalDomain
  st-1f235c605fbe93d7-4447473c5f4f6a69  : externalRelationalDomain   ⊏⋆ᵣ  externalPhysicalDomain 

