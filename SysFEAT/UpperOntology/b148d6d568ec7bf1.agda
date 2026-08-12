{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

First Order Class: 
First Order Class is the Meta-Class of all subclasses of First Order Entity. Each instance of First Order Class is a Class of Entity, each of whose instances is necessarily a First Order Entity. 
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.b148d6d568ec7bf1 where -- ====================== First Order Class (Level 1)

open import Agda.Primitive
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity and Relation
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass et MetaRelation (M2)
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- Class of Ordered Entity
open import SysFEAT.UpperOntology.78e382a768ef0daa public -- Second Order Class

-- ============================================================
-- I. First Order Class (M1 level)
-- ============================================================ 
FirstOrderClass : SecondOrderClass
FirstOrderClass = ClassOfOrderedEntity lzero

-- FirstOrderClass isSubTypeOf ClassOfOrderedEntity
12fe2cfc68ed169c : FirstOrderClass ⊏ₑ (ClassOfOrderedEntity lzero)
12fe2cfc68ed169c = ⊏⋆-refl

-- FirstOrderClass isPowerInstanceOf SecondOrderClass
78e382d568ef0df8 : FirstOrderClass ∷ₚₑ SecondOrderClass
78e382d568ef0df8  = ∷ₚₑ-fromMap (λ A → Lift _ A)

-- ============================================================
-- II. Relations between First Order Class (M1 level)
-- ============================================================ 
classOfFirstOrderRelation : Linkage FirstOrderClass FirstOrderClass
classOfFirstOrderRelation = make_classOfRelation "Root class of class of first order relation" "Related First Order Class"

-- classOfFirstOrderRelation isSubTypeOf classOfOrderedRelation  [moved to SysFEAT.Ontology.Axioms]
-- ============================================================
-- III. Mereological Relations (Templates M1)
-- ============================================================ 
-- APEX HomTypes and universe-polymorphic roots live UPSTREAM in the
-- Class of Entity module (HomClassOfHolonymy, make_classOfHolonymy,
-- polyClassOfHolonymy, ...) so that every metalevel has them in scope.

{- Class of Holonymy is the powertype of Holonymy Relation. (Whole -> Part)
   Level-0 member of the polymorphic family. -}
classOfHolonymy : Linkage FirstOrderClass FirstOrderClass
classOfHolonymy = polyClassOfHolonymy

-- classOfHolonymy isSubTypeOf classOfFirstOrderRelation 
215db38c68b4375d : classOfHolonymy ⊏⋆ᵣ classOfFirstOrderRelation
215db38c68b4375d  =
  ⊏⋆ᵣ-fromExtMap {subRel = classOfHolonymy} {superRel = classOfFirstOrderRelation} (λ w → w)
{- Class of Meronymy is the powertype of Meronymy Relation (part - whole). -}
classOfMeronymy : Linkage FirstOrderClass FirstOrderClass
classOfMeronymy = polyClassOfMeronymy

-- classOfMeronymy isSubTypeOf classOfFirstOrderRelation
526b3ea169df6b26 : classOfMeronymy ⊏⋆ᵣ classOfFirstOrderRelation
526b3ea169df6b26  =
  ⊏⋆ᵣ-fromExtMap {subRel = classOfMeronymy} {superRel = classOfFirstOrderRelation} (λ w → w)
-- ============================================================
-- IV. Mereological Governance (Meta level M2)
-- ============================================================ 
metaHolonymy : ∀ {u v} → Linkage (MetaClass u) (MetaClass v)
metaHolonymy = make_metaRelation "Universal Holonymy Meta Relation between MetaClasses" "Part MetaClass"

metaMeronymy : ∀ {u v} → Linkage (MetaClass u) (MetaClass v)
metaMeronymy = make_metaRelation "Universal Meronymy Meta Relation between MetaClasses" "Whole MetaClass"

-- ============================================================
-- V. Mereological principles at M1
-- ============================================================
{-
The template mereology of classes (M1): First Order Classes carry their own
parthood surface (design-level decomposition - attributed bill of materials),
through classOfHolonymy / classOfMeronymy. The structure is QUALIFIED
(ClassParthood.…) to avoid clashing with the M0 names opened publicly by the
First Order Entity module. NO GEM bundle is assumed at M1: class identity is
deliberately not extensional (the fibred slot architecture argues against it).
-}
module ClassParthood = ClassParthoodAt lzero            -- FirstOrderClass

-- The upper metalevels of the tower (solution 2: same polymorphic roots,
-- one kit instantiation per level).
module ClassParthood₂ = ClassParthoodAt (lsuc lzero)          -- SecondOrderClass (= MetaClass lzero)
module ClassParthood₃ = ClassParthoodAt (lsuc (lsuc lzero))   -- ThirdOrderClass  (= MetaClass (lsuc lzero))

-- Constructors for M1 declinations: every class-level mereological relation
-- built here injects (definitionally) into its root and therefore feeds the
-- class-level parthood ClassParthood._≤ₚ_ and its ordering theorems.
make_classOfHolonymySpecialization : (label fwdRole : String) → ClassParthood.HolonymySpecialization {ClassParthood.rootFibreLevel}
make_classOfHolonymySpecialization label fwdRole = record
  { relation = make_classOfHolonymy label fwdRole
  ; inj      = λ h → h
  }

make_classOfMeronymySpecialization : (label fwdRole : String) → ClassParthood.MeronymySpecialization {ClassParthood.rootFibreLevel}
make_classOfMeronymySpecialization label fwdRole = record
  { relation = make_classOfMeronymyRelation label fwdRole
  ; inj      = λ h → h
  }
