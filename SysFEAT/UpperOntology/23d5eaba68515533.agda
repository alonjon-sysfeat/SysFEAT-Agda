{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordering Connection: 
An Ordering Connection is an Aggregate Block that defines possible connections between the Borders of two or more Bounded Aggregates.Examples:-  Outcome Event.- Service Interface.
 - ============================== -}


{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5eaba68515533 where -- ========== Ordering Connection

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c5ce68514283 public -- Aggregate Block

OrderingConnection : ∀ (u : Level) → ClassOfMixedOrderEntity u
OrderingConnection u = AggregateBlock u

-- OrderingConnection is subTypeOf AggregateBlock  [moved to SysFEAT.Ontology.Axioms]
-- == Connection Ends =======================

HomConnectionPoint : ∀ {u v} (c : OrderingConnection u) (a : BuildingBlock v) → Set (lsuc (u ⊔ v))
HomConnectionPoint {u} {v} c a = Linkage {u} {v} {u ⊔ v} c a

ConnectionAntecedent : ∀ {u v}  → Linkage (OrderingConnection u) (BuildingBlock v)
ConnectionAntecedent {u} {v} = make_Linkage (HomConnectionPoint {u} {v}) "Connection Antecedent" "Antecedent Affordance"

ConnectionConsequent : ∀ {u v}  → Linkage (OrderingConnection u) (BuildingBlock v)
ConnectionConsequent {u} {v} = make_Linkage (HomConnectionPoint {u} {v}) "Connection Consequent" "Consequent Affordance"


-- == Internal Structure =======================

{- Connection Member: -}
-- Aggregate Member : Connection Member
ConnectionMember : ∀ (u : Level) → ClassOfMixedOrderEntity u
ConnectionMember u = AggregateMember u


-- Membership relation
membershipOfConnectionMember : ∀ {u v} →  Linkage (OrderingConnection u) (ConnectionMember v)
membershipOfConnectionMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrderingConnectionConnectionMember : ∀ {u v} →  Linkage (ConnectionMember u) (OrderingConnection v)
aggregationOfOrderingConnectionConnectionMember = aggregationOfBuildingBlock

{- connectionMember : derived relation obtained by composing
   membershipOfConnectionMember and aggregationOfOrderingConnectionConnectionMember
   It directly links an Ordering Connection to the final aggregated OrderingConnection
   hiding the reifying ConnectionMember
-}
connectionMember : ∀ {u v w} → Linkage (OrderingConnection u) (OrderingConnection w)
connectionMember {u} {v} {w}  = membershipOfConnectionMember {u} {v}   ∘  aggregationOfOrderingConnectionConnectionMember {v} {w} 


