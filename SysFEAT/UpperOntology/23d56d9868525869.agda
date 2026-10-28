{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Aggregate Entity Block: 
An Aggregate Entity Block is a self-contained and independant Aggregate Block that is not an Ordering Connection.Examples:- Operating Eco-System;- Action Process Type;- Directive;- Agent Type.

Documentation : https://framework.sysfeat.com/pages/23d56d9868525869.htm

External references:
  OMG - UML - StructuredClassifier                      : https://www.omg.org/spec/UML/2.5.1/PDF#page=225
  OMG - KerML - Type                                    : https://www.omg.org/spec/KerML/1.0/PDF#page=52
  DDD-Aggretate                                         : https://www.dddcommunity.org/library/vernon_2011
  Martin Fowler - Aggregate                             : https://martinfowler.com/bliki/DDD_Aggregate.html
  Stanford Encyclopedia of Philosophy - Compositionality: https://plato.stanford.edu/entries/compositionality/
  SysFEAT - Modularity                                  : https://framework.sysfeat.com/resources/framework/SysFEAT-ModelingFramework-01-Modularity.pdf
  SysFEAT - SysFEAT-ModelingFramework-Visualization.pdf : https://framework.sysfeat.com/resources/framework/SysFEAT-ModelingFramework-Visualization.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d56d9868525869 where -- ========== AggregateEntityBlock

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c5ce68514283 public -- Aggregate Block

AggregateEntityBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
AggregateEntityBlock u = MixedOrderEntity u

-- AggregateEntityBlock is subTypeOf AggregateBlock
st-23d56dba685258b6 : ∀ {u v} → (AggregateEntityBlock u) ⊏⋆ₑ (AggregateBlock v)
st-23d56dba685258b6 = trivialPolySubTypeOfEntity

-- == Internal Structure =======================

{- Unbounded Member: 
An Unbounded Member is an Aggregate Member of an Aggregate Entity Block that aggregates a Building Block that is not a Bounded Aggregate.
-}
UnboundedMember : ∀ (u : Level) → ClassOfMixedOrderEntity u
UnboundedMember u = AggregateMember u

-- Membership relation
membershipOfUnboundedMember : ∀ {u v} →  Linkage (AggregateEntityBlock u) (UnboundedMember v)
membershipOfUnboundedMember = membershipOfAggregateMember

-- membershipOfUnboundedMember isSubTypeOf membershipOfAggregateMember
c35aaaa06a9e5858 : ∀ {u v} → (membershipOfUnboundedMember {u} {v}) ⊏⋆ᵣ (membershipOfAggregateMember {u} {v})
c35aaaa06a9e5858 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = (membershipOfUnboundedMember {u} {v})} {superRel = (membershipOfAggregateMember {u} {v})} (λ w → w)

-- Aggregation relation
aggregationOfUnboundedBlock : ∀ {u v} →  Linkage (UnboundedMember u) (BuildingBlock v)
aggregationOfUnboundedBlock = aggregationOfBuildingBlock

-- aggregationOfUnboundedBlock isSubTypeOf membershipOfAggregateMember
c35aaee56a9e58b7 : ∀ {u v} → (aggregationOfUnboundedBlock {u} {v}) ⊏⋆ᵣ (aggregationOfBuildingBlock {u} {v})
c35aaee56a9e58b7 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = (aggregationOfUnboundedBlock {u} {v})} {superRel = (aggregationOfBuildingBlock {u} {v})} (λ w → w)


{- unboundedMember : derived relation obtained by composing
   membershipOfUnboundedMember and aggregationOfUnboundBlock
   It directly links an Unbounded Aggregate to the final aggregated UnboundedAggregate
   hiding the reifying UnboundedMember
-}
unboundedMember : ∀ {u w} → Linkage (AggregateEntityBlock u) (BuildingBlock w)
unboundedMember {u} {w}  = membershipOfUnboundedMember {u} {u ⊔ w}   ∘  aggregationOfUnboundedBlock {u ⊔ w} {w} 

postulate -- unboundedMember is subTypeOf aggregateMember
  st-8cfaf71a6852b042-8cfaf3b36852acd4  : ∀ {u w} → unboundedMember {u} {w} ⊏⋆ᵣ  aggregateMember {u} {w}
