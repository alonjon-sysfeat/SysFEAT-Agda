{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordered Entity: 
Ordered Entity is a class whose sub-types are classifed by a Class of Ordered Entity: 
It is the power instance of Class of Ordered Entity.Examples:- First Order Entity - First Order Class- Second Order Class

Documentation : https://framework.sysfeat.com/pages/0dd6b365690d316b.htm

External references:
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  CycProject 2005 - At Least Nth-Order Class                        : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=7
  Open Caesar - Concept-LR                                          : https://opencaesar.io/oml/#Concept-LR 
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.0dd6b365690d316b where -- =============== OrderedEntity

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- ClassOfOrderedEntity

-- ============================================================
-- I. Ordered Entity (Universe of anchrored instances)
-- ============================================================ 
OrderedEntity : (u : Level) → ClassOfOrderedEntity u
OrderedEntity u = Entity u

-- OrderedEntity isSubTypeOf Entity
2f156b0a693968c7 : ∀ {u} → (OrderedEntity u) ⊏ₑ (Entity u)
2f156b0a693968c7 {u} = polySubTypeOf-identity

-- OrderedEntity isInstanceOf ClassOfOrderedEntity
08152bbd691731da : ∀ {u} → (OrderedEntity u) ∷ₑ (ClassOfOrderedEntity u)
08152bbd691731da {u} = instanceOfEntity-fromCoercion (λ A → Lift _ A)

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

