{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Aggregate Entity Block: 
An Aggregate Entity Block is a self-contained and independant Aggregate Block that is not an Ordering Connection.Examples:- Operating Eco-System;- Action Process Type;- Directive;- Agent Type.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d56d9868525869 where -- ========== Aggregate Entity Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c5ce68514283 public -- Aggregate Block

AggregateEntityBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
AggregateEntityBlock u = MixedOrderEntity u

postulate -- AggregateEntityBlock is subTypeOf AggregateBlock
  st-23d56dba685258b6 : ∀ {u v} → (AggregateEntityBlock u) ⊏⋆ₑ (AggregateBlock v)

-- == Relationships =======================

{- Unbounded Member: 
An Unbounded Member is an Aggregate Member of an Aggregate Entity Block that aggregates a Building Block that is not a Bounded Aggregate.
-}
-- Aggregate Member : Unbounded Member
UnboundedMember : ∀ (u : Level) → ClassOfMixedOrderEntity u
UnboundedMember u = AggregateMember u


-- Membership relation
membershipOfUnboundedMember : ∀ {u v} →  Linkage (AggregateEntityBlock u) (UnboundedMember v)
membershipOfUnboundedMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfUnboundedBlock : ∀ {u v} →  Linkage (UnboundedMember u) (BuildingBlock v)
aggregationOfUnboundedBlock = aggregationOfBuildingBlock

{- unboundedMember : derived relation obtained by composing
   membershipOfUnboundedMember and aggregationOfUnboundBlock
   It directly links an Unbounded Aggregate to the final aggregated UnboundedAggregate
   hiding the reifying UnboundedMember
-}
unboundedMember : ∀ {u v w} → Linkage (AggregateEntityBlock u) (BuildingBlock w)
unboundedMember {u} {v} {w}  = membershipOfUnboundedMember {u} {v}   ∘  aggregationOfUnboundedBlock {v} {w} 

postulate -- unboundedMember is subTypeOf aggregateMember
  st-8cfaf71a6852b042-8cfaf3b36852acd4  : ∀ {u w} → unboundedMember {u} {u} {w} ⊏⋆ᵣ  aggregateMember {u} {u} {w}
