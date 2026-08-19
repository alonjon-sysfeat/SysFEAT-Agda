{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordered Entity: 
Ordered Entity is a class whose sub-types are classifed by a Class of Ordered Entity: It is the power instance of Class of Ordered Entity.Examples:- First Order Entity - First Order Class- Second Order Class
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.0dd6b365690d316b where -- =============== Ordered Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- Class of Ordered Entity

-- ============================================================
-- I. Ordered Entity (L'Univers des Instances Ancrées)
-- ============================================================ 
OrderedEntity : (u : Level) → ClassOfOrderedEntity u
OrderedEntity u = Entity u

-- OrderedEntity isSubTypeOf Entity
2f156b0a693968c7 : ∀ {u} → (OrderedEntity u) ⊏ₑ (Entity u)
2f156b0a693968c7 {u} = ⊏⋆-refl

-- OrderedEntity isPowerInstanceOf ClassOfOrderedEntity
08152bbd691731da : ∀ {u} → (OrderedEntity u) ∷ₚₑ (ClassOfOrderedEntity u)
08152bbd691731da {u} = ∷ₚₑ-fromMap (λ A → Lift _ A)

-- ============================================================
-- II. Order of Relations
-- ============================================================
orderedRelation : ∀ {u} → Linkage (OrderedEntity u) (OrderedEntity u)
orderedRelation {u} = make_Relation "Ordered Relation" "Related Entity"

--postulate 
--  orderRelation-isInstanceOf-classOfOrderedRelation : ∀ {u} {cs : ClassOfEntity u} {ct : ClassOfEntity u} 
--    (s : Entity u) (t : Entity u) (rel : orderedRelation s t) (crel : classOfOrderedRelation cs ct) →
--    rel ∷ᵣ crel

mixedOrderRelation :  ∀ {u v} → Linkage (Entity u) (Entity v)
mixedOrderRelation {u} {v} = make_Relation "Mixed Order Relation" "Related Entity"

-- to be checked ALIGNED: M0 -> M1 is an instantiation (∷ᵣ)
--postulate 
--  mixedOrderRelation-isInstanceOf-classOfMixedOrderRelation : ∀ {u v} {cs : ClassOfEntity u} {ct : ClassOfEntity v} 
--    (s : Entity u) (t : Entity v) (rel : mixedOrderRelation s t) (crel : classOfMixedOrderRelation cs ct) →
--    rel ∷ᵣ crel

