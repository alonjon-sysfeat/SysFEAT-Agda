{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Bounded Aggregate: 
A Bounded Aggregate is an Aggregate Entity Block which hides its internal structure to the outside world by means of formal Borders.The only way to access a Bounded Aggregate is through its formal Borders, which ensures the aggregates internal consistency.The Borders of a Bounded Aggregate is determined by the Ordering Connections it can participate to.Within a Bounded Aggregate structure, Bounded Members can be linked together through Ordering Connectors.The nature of Ordering Connectors is given by their associated Ordering Connection.Examples:- Action Process Typees are bounded by their start and end events (see Behavioral Event).- Applications are bounded by their APIs borders (API Service Point and API Request Point).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.8cfa941b6852781f where -- ========== Bounded Aggregate

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d56d9868525869 public -- Aggregate Entity Block
open import SysFEAT.UpperOntology.23d5eaba68515533 public -- Ordering Connection

BoundedAggregate : ∀ (u : Level) → ClassOfMixedOrderEntity u
BoundedAggregate u = AggregateEntityBlock u

-- BoundedAggregate is subTypeOf AggregateEntityBlock  [moved to SysFEAT.Ontology.Axioms]
-- == Relationships =======================

{- Bounded Member: 
A Bounded Member is an Entity Member that aggregates a Bounded Aggregate.
Bounded Members can be related by means of Ordering Connectors which connect an Exit Border of a source Bounded Member to a corresponding Entry Border of a target Bounded Member.
-}
-- Aggregate Member : Bounded Member
BoundedMember : ∀ (u : Level) → ClassOfMixedOrderEntity u
BoundedMember u = AggregateMember u

-- Membership relation
membershipOfBoundedMember : ∀ {u v} →  Linkage (BoundedAggregate u) (BoundedMember v)
membershipOfBoundedMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBoundedMember : ∀ {u v} →  Linkage (BoundedMember u) (BoundedAggregate v)
aggregationOfBoundedMember = aggregationOfBuildingBlock

{- boundedMember : derived relation obtained by composing
   membershipOfBoundedMember and aggregationOfBoundedAggregateBoundedMember
   It directly links an Bounded Aggregate to the final aggregated BoundedAggregate
   hiding the reifying BoundedMember
-}
boundedMember : ∀ {u v w} → Linkage (BoundedAggregate u) (BoundedAggregate w)
boundedMember {u} {v} {w}  = membershipOfBoundedMember {u} {v}   ∘  aggregationOfBoundedMember {v} {w} 


{- Ordering Connector: 
An Ordering Connector is Block Member that connects a source Bounded Member to a target Bounded Member through their Entry Border and Exit Border.The semantic of Connector is given by their associated Ordering Connection.Examples:. Event that manifests a transition between two states.. Sequences between the end of a process step and the start of another process step.. Interface connection between a service consumer agent and a service provider agent.
-}
-- Aggregate Member : Ordering Connector
OrderingConnector : ∀ (u : Level) → ClassOfMixedOrderEntity u
OrderingConnector u = AggregateMember u


-- Membership relation
membershipOfConnector : ∀ {u v} →  Linkage (BoundedAggregate u) (OrderingConnector v)
membershipOfConnector = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrderingConnector : ∀ {u v} →  Linkage (OrderingConnector u) (OrderingConnection v)
aggregationOfOrderingConnector = aggregationOfBuildingBlock

{- orderingConnector : derived relation obtained by composing
   membershipOfConnector and aggregationOfOrderingConnectionOrderingConnector
   It directly links an Bounded Aggregate to the final aggregated OrderingConnection
   hiding the reifying OrderingConnector
-}
orderingConnector : ∀ {u v w} → Linkage (BoundedAggregate u) (OrderingConnection w)
orderingConnector {u} {v} {w}  = membershipOfConnector {u} {v} ∘ aggregationOfOrderingConnector {v} {w} 
