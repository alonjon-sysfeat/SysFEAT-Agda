{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Lexical Scope: 
A Lexical Scope is a kind of Mixed-Order Entity that defines the existence, visibility, and accessibility of the entities nested within it through a Nesting Relation.Nested Entitys have no independent identity or validity outside the lexical or structural scope in which they are defined - they exist only within and for the duration of their parent construct.Every Entity belongs to exactly one Lexical Scope.A Lexical Scope carries no intrinsic semantic meaning; it serves purely as a syntactic mechanism for establishing hierarchical containment.Examples:1) Composite structures (Aggregate Block) nesting their internal constituents (Aggregate Member).2) Social structures nesting their roles and functions.3) Computer functions nesting their local variables or inner functions.4) Packages nesting their Building Blocks (packaging).
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.a39aaa7f685e5118 where  -- ============ Lexical Scope

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Mixed-order Class
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity & Relationodule 
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- Class of Ordered Entity

-- ============================================================
-- 1. The abstract entity class LexicalScope
-- ============================================================

-- ── I. LexicalScope ─────────────────────────────────────────────────
--postulate
--   LexicalScope : ∀ {u} → ClassOfMixedOrderEntity u
--postulate
--  LexicalScope : (u : Level) → ClassOfOrderedEntity u
{- A  Lexical Scope is a kind of Mixed-Order Entity that defines the existence, visibility, and accessibility of the entities nested within it through a Nesting Relation.
Nested Entitys have no independent identity or validity outside the lexical or structural scope in which they are defined - they exist only within and for the duration of their parent construct.
Every Entity belongs to exactly one  Lexical Scope.
A  Lexical Scope carries no intrinsic semantic meaning; it serves purely as a syntactic mechanism for establishing hierarchical containment.
Examples:
1) Composite structures (Aggregate Block) nesting their internal constituents (Aggregate Member).
2) Social structures nesting their roles and functions.
3) Computer functions nesting their local variables or inner functions
4) Packages nesting their Building Blocks. -}
LexicalScope : (u : Level) → ClassOfMixedOrderEntity u
LexicalScope u = MixedOrderEntity u

-- LexicalScope is subTypeOf MixedOrderEntity 
a39aaab8685e517d : ∀ {u} → (LexicalScope u) ⊏⋆ₑ (MixedOrderEntity u)
a39aaab8685e517d {u} = ⊏⋆-refl

-- ── II. HomType de nesting ───────────────────────────────────────────
-- Le nesting de scope vers target = posséder un Linkage scope→target.
-- C'est la structure Linkage elle-même — le nesting IS le fibrage.
HomNestingRelation : ∀ {u v} (scope : LexicalScope u) (target : Entity v)
                   → Set (lsuc (u ⊔ v))
HomNestingRelation {u}{v} scope target =
  Σ (Linkage {u}{v}{u ⊔ v} scope target) λ L →
    --  ↑  le fibrage scope→target
    ∀ (s : scope) → Linkage.localType L s
    --  ↑  la subordination : pour tout s du scope, la fibre est habitée
    --     = l'existence de target est subordonnée à scope

-- Helper for the constructution of nesting relations
make_nestingRelation : ∀ {u v} (label : String) (fwdRole : String) → Linkage (Entity u) (Entity v)
make_nestingRelation = make_Linkage HomNestingRelation

{- A Nesting Relation is a Relation that references its target Entity by nesting, using a Nesting Adjacency.
Nesting is a fundamental concept in complex systems organization where elements are contained within other elements, creating hierarchical or constextual web-like structures. This embedding mechanism intrinsically links the properties, behaviors, and lifecycles of nested entities to their containing entities, forming cohesive units at multiple scales.
Nesting facilitates the emergence of complex Aggregate Blocks and properties from simpler entities, enables efficient design of systems across levels, and supports both autonomy and integration within systems (see Compositionality).
Nesting also facilitates the creation of modules through packaging of Building Blocks (see Packaging). -}

nestingRelation : ∀ {u v} → Linkage (LexicalScope u) (Entity v)
nestingRelation = make_nestingRelation "Nesting" "Nested Entity" 

{-
-- ── Root class nestingRelation ──────────────────────────
-- Relation entre ClassOfOrderedEntity et ClassOfMixedOrderEntity.
-- C'est un ASPECT : ⊏⋆ᵣ aspectOfEntity dans la hiérarchie.
classOfNestingRelation : ∀ {u v}
  → Linkage (ClassOfOrderedEntity u) (ClassOfMixedOrderEntity v)
classOfNestingRelation {u}{v} =
  make_classOfRelation "Class of Nesting Relation" "Nested Class"

postulate
  classOfNestingRelation-isAspect :
    ∀ {u v} → classOfNestingRelation {u}{v} ⊏⋆ᵣ aspectOfEntity {u}{v}

postulate
  nestingRelation-isInstance :
    ∀ {u v} → nestingRelation {u}{v} ⊏⋆ᵣ classOfNestingRelation {u}{v}
_-}
