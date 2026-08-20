{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Ordered Entity: 
Class of Ordered Entity is the Meta-Class (subtype of Class of Entity and instance of  Meta-Class) of all power-type based Class of Entitys that follow a strict ordering of metalevels.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.7d35645c68f37329 where -- ============== Class of Ordered Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Class of Mixed Order Entity

-- ============================================================
-- I. ClassOfOrderedEntity declaration
--    OrderedMetaClass is declared in this module to avoid circular dependencies
-- ============================================================
OrderedMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
OrderedMetaClass u = MetaClass u

ClassOfOrderedEntity : (u : Level) → OrderedMetaClass u
ClassOfOrderedEntity u = ClassOfEntity u

-- ClassOfOrderedEntity isSubTypeOf ClassOfEntity 
7d35649168f3739b : ∀ {u} → (ClassOfOrderedEntity u) ⊏ₑ (ClassOfEntity u)
7d35649168f3739b {u} = polySubTypeOf-identity

-- ClassOfOrderedEntity isPowerInstanceOf OrderedMetaClass 
d9cce64E6937133b : ∀ {u} → (ClassOfOrderedEntity u) ∷ₚₑ (OrderedMetaClass u)
d9cce64E6937133b {u} = powerInstanceOfEntity-fromCoercion (λ A → Lift _ A)

-- ============================================================
-- II. OrderedMetaclass is declared as a metaSubType of ClassOfOrderedEntity
--     which makes it a reflexive metaclass
-- ============================================================
-- OrderedMetaclass isSubTypeOf ClassOfOrderedEntity

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



