{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Ordered Entity: 
Class of Ordered Entity is the Meta-Class (subtype of Class of Entity and instance of  Meta-Class) of all power-type based Class of Entitys that follow a strict ordering of metalevels.

Documentation: https://www.framework.sysfeat.com/pages/7d35645c68f37329.htm

External references:
   CycProject 2005 - Fixed-Order Class                                : https://www.framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=5
   Multi-level conceptual modeling: Theory, language and application  : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
   BORO Research - Unification of Types and Multi-Level Modeling      : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
   SysFEAT - TheoraticalFoundations-MultiLevelModeling.pdf            : https://www.framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.7d35645c68f37329 where -- ============== ClassOfOrderedEntity

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- ClassOfMixedOrderEntity
open import SysFEAT.UpperOntology.d9cce4e96937128c public -- OrderedMetaClass

-- ============================================================
-- I. ClassOfOrderedEntity declaration
-- ============================================================
ClassOfOrderedEntity : (u : Level) → OrderedMetaClass u
ClassOfOrderedEntity u = ClassOfEntity u

-- ClassOfOrderedEntity isSubTypeOf ClassOfEntity 
7d35649168f3739b : ∀ {u} → (ClassOfOrderedEntity u) ⊏ₑ (ClassOfEntity u)
7d35649168f3739b {u} = polySubTypeOf-identity

-- ClassOfOrderedEntity isInstanceOf OrderedMetaClass 
d9cce64E6937133b : ∀ {u} → (ClassOfOrderedEntity u) ∷ₑ (OrderedMetaClass u)
d9cce64E6937133b {u} = instanceOfEntity-fromCoercion (λ A → Lift _ A)

-- ============================================================
-- III. Aspect of Entity
--      A subTypeOf relation between ClassOfOrderedEntity and ClassOfMixedOrderEntity
-- ============================================================
{- The aspectOfEntity relationship defines that a Class of Ordered Entity specializes 
   a Class of Mixed-Order Entity by the specific aspect represented by this Class of 
   Mixed-Order Entity.
   Example: The class Container Package is a Lexical Scope for its Packaged Building Blocks. -}

aspectOfEntity : ∀ {u v} → Linkage (ClassOfOrderedEntity u) (ClassOfMixedOrderEntity v)
aspectOfEntity {u} {v} = make_subTypeOf "Aspect SubTyping" "Super Aspect"

-- Mathematical predicate of aspectOfEntity                                                               
_⊏ₐₑ_ :  ∀ {u v} (c1 : ClassOfOrderedEntity u) (c2 : ClassOfMixedOrderEntity v) → Set (lsuc (lsuc (u ⊔ v)))
_⊏ₐₑ_ c1 c2 = c1 —⟨ aspectOfEntity  ⟩→ c2

-- aspectOfEntity isSubTypeOf polySubTypeOfEntity
da2b741c69d78c55 : ∀ {u v} → aspectOfEntity {u}{v} ⊏⋆ᵣ polySubTypeOfEntity {u}{v}
da2b741c69d78c55 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = (aspectOfEntity {u}{v})} {superRel = (polySubTypeOfEntity {u}{v})} (λ w → w)

-- ============================================================
-- V. Order or Relations (M2 Level)
-- ============================================================
-- Class of relation between class of Entities belonging to different levels of universe
classOfMixedOrderRelation : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
classOfMixedOrderRelation {u} {v} = make_classOfRelation "Classe of relation between Classes of Entity" "Referenced Class of Entity"

-- Class of relation between class of Entities belonging to the same level of universe
classOfOrderedRelation : ∀ {u} → Linkage (ClassOfOrderedEntity u) (ClassOfOrderedEntity u)
classOfOrderedRelation {u} = make_classOfRelation "Class of orderedRelation between Classes of Entity" "Referenced Class of Entity"



