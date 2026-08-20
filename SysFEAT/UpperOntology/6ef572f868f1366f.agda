{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mixed-Order Entity: 
Mixed-Order Entity is a class of Entitys that is transversal to order levels, defined polymorphically over the universe hierarchy (for every level u). It is a polymorphic subtype of Entity (declaration: MixedOrderEntity u     Entity v) and a power instance of Class of Mixed-Order Entity (declaration:    ), which means that its subtypes may classify entities belonging to any universe level, whereas an Ordered Entity and its subtypes are anchored to a fixed level. A Mixed-Order Entity has no direct instances: it represents an aspect - a transversal characteristic  - that an ordered class acquires through the aspect relation (   ) without giving up its level anchoring. It is the SysFEAT counterpart of MLT*s orderless type, with two constitutive differences: transversality is carried by the universe polymorphism of the type system (rather than by a FOL axiomatization of integer levels), and cross-level classification goes through the controlled-reflexivity predicates (  ,   ), which makes it compatible with proof-kernel verification.Example:1) Aspects of Entitys, such as Lexical Scope.2) Building Blocks.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.6ef572f868f1366f where -- =============== Mixed-Order Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Mixed-Order Class

-- ============================================================
-- I. MixedOrder Entity (Univers of transversal Entities)
-- ============================================================ 
{- Mixed-Order Entity is a class of Entities that is transversal to order levels, defined polymorphically over 
   the universe hierarchy (for every level u). 
  It is a polymorphic subtype of Entity (declaration: MixedOrderEntity u ⊏⋆ₑ Entity v) and a power instance of 
  Class of Mixed-Order Entity (declaration: ∷ₚₑ), which means that its subtypes may classify entities belonging to
  any universe level, whereas an Ordered Entity and its subtypes are anchored to a fixed level. 
  A Mixed-Order Entity has no direct instances: it represents an aspect — a transversal characteristic
  that an ordered class acquires through the aspect relation (⊏ₐₑ) without giving up its level anchoring.
  It is the SysFEAT counterpart of MLT*'s orderless type, with two constitutive differences: transversality is carried by the universe polymorphism of the type system (rather than by a FOL axiomatization of integer levels), and cross-level classification goes through the controlled-reflexivity predicates (⊏ₘ, ∷ₘ), which makes it compatible with proof-kernel verification.
  1) Aspects of Entities, such as Lexical Scope.
  2) Building Blocks. -}

MixedOrderEntity : (u : Level) → ClassOfMixedOrderEntity u
MixedOrderEntity u = Entity u

--postulate -- MixedOrderEntity isSubTypeOf Entity
--edc1f4ad68f353db : ∀ {u v} → (MixedOrderEntity u) ⊏⋆ₑ (Entity v)
-- edc1f4ad68f353db {u} = polySubTypeOf-identity

--postulate -- OrderedEntity isPowerInstanceOf ClassOfOrderedEntit
--  6ef5732d68f1370c : ∀ {u v} → (MixedOrderEntity u) ∷ₚₑ (ClassOfMixedOrderEntity v)

