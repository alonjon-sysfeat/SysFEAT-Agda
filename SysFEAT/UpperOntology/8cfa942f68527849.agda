{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Unbounded Aggregate: 
An Unbounded Aggregate is an Aggregate Entity Block that does not have boundaries and, thereby, that cannot participate to Ordering Connections.Examples:- Operating Eco-System;- Directive.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.8cfa942f68527849 where -- ========== Unbounded Aggregate

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d56d9868525869 public -- Aggregate Entity Block

UnboundedAggregate : ∀ (u : Level) → ClassOfMixedOrderEntity u
UnboundedAggregate u = MixedOrderEntity u

--  UnboundedAggregate is subTypeOf AggregateEntityBlock
st-8cfaf3836852ac6f : ∀ {u v} → (UnboundedAggregate u) ⊏⋆ₑ (AggregateEntityBlock v)
st-8cfaf3836852ac6f = trivialPolySubTypeOfEntity

-- == Relationships =======================
