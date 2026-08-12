{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Meta-Class: 
Meta-Class (also called Class of Classes of Entity) is the Class of Entity of all Class of Entitys each of whose instances is necessarily a Class of Entity. In other word, Meta-Class is the powertype of Class of Entity: all sub-classes of Class of Entitys are instances of Meta-Class.Since Meta-Class is itself a sub-type of Class of Entity, Meta-Class is an instance of itself. 
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.e27801e868f17024 where -- ============================= MetaClass and metaRelation

open import Agda.Primitive
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity and Class of Relation

-- ============================================================
-- I. MetaClass (Top level of the ontology)
-- ============================================================

{- Represents the absolute top-level space (M3) of the ontology. 
   A MetaClass categorizes standard Entity Classes (M2), enforcing 
   the reflexive and stratified architecture of the SysFEAT framework. -}
MetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
MetaClass u = ClassOfEntity (lsuc u)

MetaClass-isSubTypeOf-ClassOfEntity : ∀ {u} → (MetaClass u) ⊏⋆ₑ (ClassOfEntity (lsuc u))
MetaClass-isSubTypeOf-ClassOfEntity {u} = ⊏⋆-refl

ClassOfEntity-isInstanceOf-MetaClass : ∀ {u} →  (ClassOfEntity u) ∷ₘ (MetaClass u)
ClassOfEntity-isInstanceOf-MetaClass {u} = ∷ₘ-fromMap (λ A → Lift _ A)
-- ============================================================
-- II. Meta Relations (Meta-Level)
-- ============================================================
HomMetaRelation : ∀ {u v} (ms : MetaClass u) (mt : MetaClass v) → Set (lsuc (lsuc (lsuc (u ⊔ v))))
HomMetaRelation {u} {v} ms mt =
  Linkage {lsuc (lsuc u)}       -- u' : ms : Set (lsuc (lsuc u))
          {lsuc (lsuc v)}       -- v' : mt : Set (lsuc (lsuc v))  ← était u
          {lsuc (lsuc (u ⊔ v))} -- w' : evidence  ← parenthèse corrigée
          ms mt

-- Helper for the constructution of class of meta relations
make_metaRelation : ∀ {u v} (label : String) (fwdRole : String) → Linkage (MetaClass u) (MetaClass v)
make_metaRelation = make_Linkage HomMetaRelation

{- The universal concept of a relation at the meta-level (M3). 
   It establishes the formal mathematical space for all possible 
   linkages that can exist between two MetaClasses. -}

metaRelation : ∀ {u v} → Linkage (MetaClass u) (MetaClass v)
metaRelation = make_metaRelation "Universal Meta Relation between MetaClasses" "Related MetaClass"

-- metaRelation is sub-type of classOfRelation  [moved to SysFEAT.Ontology.Axioms]
{- The structural instantiation bridge mapping a specific class-level 
   linkage (M1) to a universal meta-relation concept (M3). It relies 
   strictly on pure mathematical inclusion between their LinkageSets. 
metaInstanceOfRel : ∀ {u v u' v'} {cs : ClassOfEntity u} {ct : ClassOfEntity v} 
                      (cr : classOfRelationLinkage cs ct) 
                      (mr : classOfClassOfRelation (lsuc u') (lsuc v')) 
                      → Set (lsuc (lsuc (u ⊔ v) ⊔ lsuc (lsuc (lsuc (u' ⊔ v')))))
metaInstanceOfRel cr mr = polyInstanceOfRel cr mr
-}

-- ============================================================
-- III. Fundamental metaRelations
-- ============================================================

{- A specialized meta-level relation (M3) that explicitly represents 
   the subtyping (inheritance) linkage between two MetaClasses. 
classOfSubTypeOfEntity : ∀ {u v} (m1 : MetaClass u) (m2 : MetaClass v) → Set (lsuc (lsuc (lsuc (u ⊔ v))))
classOfSubTypeOfEntity m1 m2 = classOfRelationLinkage m1 m2

postulate
  classOfSubTypeOfEntity-isInstanceOf_metaRelation : ∀ {u v} {m1 : MetaClass u} {m2 : MetaClass v} 
    (cr : classOfSubTypeOfEntity m1 m2) →
    polyInstanceOfRel cr (metaRelation {u} {v})

postulate
  MetaClass-isInstanceOf-itself : ∀ {u} → 
    metaInstanceOf (MetaClass u) (MetaClass (lsuc u))
-}
