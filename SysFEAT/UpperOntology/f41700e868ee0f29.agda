{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

First Order Entity: 
A First Order Entity is a kind of Ordered Entity that is not itself a class (Class of Entity): it cannot have instances. The  First Order Entity  class is the powerinstance of First Order Class.  First Order Entitys are the most common type of entities.The word  Individual  is sometimes used to designate particulars. In SysFEAT, the term Individual is reserved for particulars that have a spatio-temporal extent.Examples:. The set of numbers {1,2,3,4}.. The mathematical constant ð (pi).. The English word  Tree  (as a specific string of characters in a specific language). . The Eiffel tower (31st March 1889 - ...).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.f41700e868ee0f29 where -- ======================== First Order Entity (Level 1)

open import Agda.Primitive
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity & Class of Relation
open import SysFEAT.UpperOntology.0dd6b365690d316b public -- Ordered Entity
open import SysFEAT.UpperOntology.b148d6d568ec7bf1 public -- First Order Class (M1) - brings the Mereology Kit (Entity module)

-- ============================================================
-- I. First Order Entity  (M1 level)
-- ============================================================ 
FirstOrderEntity : FirstOrderClass
FirstOrderEntity = OrderedEntity lzero

-- FirstOrderEntity isSubTypeOf OrderedEntity
78e39efd68ef141b : FirstOrderEntity ⊏ₑ (OrderedEntity lzero)
78e39efd68ef141b = ⊏⋆-refl

-- FirstOrderEntity isPowerInstanceOf FirstOrderClass
78e37a6868ef0712 : FirstOrderEntity ∷ₚₑ FirstOrderClass
78e37a6868ef0712  = ∷ₚₑ-fromMap (λ A → Lift _ A)

-- ============================================================
-- II. Physical Relations (M1 level)
-- ============================================================ 
firstOrderRelation : Linkage FirstOrderEntity FirstOrderEntity
firstOrderRelation = make_Relation "Root of First Order Relation" "Related FirstOrder Entity"

-- firstOrderRelation isSubTypeOf Relation  [moved to SysFEAT.Ontology.Axioms]
-- ============================================================
-- III. Physical Mereology (The Assemblies M1)
-- ============================================================ 
{-
Holonymy is a directional "whole-to-part" Relation (often called  Composition) between First Order Entities, where the source First Order Entity (the whole) incorporates the target First Order Entity as one of its constituent parts.
In accordance with principles of compositionality,  Holonymy is not simply the inverse of Meronymy (Part Of). In many cases, the target part is an independant First Order Entity which exists conceptually and often physically without requiring knowledge of, or containing an inherent reference to, its parent whole.
The embedding of a part within its whole involves a form of nesting (see Nesting Relationship and Aggregate Block). 
It is important to note, however, that nesting does not inherently imply Holonymy.
-}
holonymyRelation : Linkage FirstOrderEntity FirstOrderEntity
holonymyRelation = make_holonymyRelation "Root of First holonymy Relation" "Part Entity"

-- holonymyRelation isSubTypeOf firstOrderRelation (FIX: subject was firstOrderRelation by copy-paste; mirrors M1: classOfHolonymy ⊏⋆ᵣ classOfFirstOrderRelation)  [PROVED - was a postulate]
be05d30567070844 : holonymyRelation ⊏⋆ᵣ firstOrderRelation
be05d30567070844  =
  ⊏⋆ᵣ-fromExtMap {subRel = holonymyRelation} {superRel = firstOrderRelation} (λ w → w)
-- holonymyRelation ispowerInstanceOf classOfHolonymy  [moved to SysFEAT.Ontology.Axioms]
{-
Meronymy (Part Of) is a directional "part-to-whole" Relation between First Order Entitys, where the source First Order Entity (the part) is defined has being part of a larger whole First Order Entity.
In accordance with principles of compositionality, Meronymy (Part Of) is not simply the inverse of Holonymy. In some cases, the whole First Order Entity is not inherently defined by some its parts.
Location (Located at)  and period relationships are such Meronymy (Part Of).
Example:
- William Shakespeare is born in Stratford-upon-Avon, but the Stratford-upon-Avon geo-location is not inherently defined by William Shakespeare. It is defined by its geophysical containers: Continent-Europe, Landmass-Great Britain.
- William Shakespeare is born in 1564, but the year 1564 is not inherently defined by the birth of William Shakespeare. 
  It is defined by its position in the Gregorian calendar and contains countless other global events.
-}
meronymyRelation : Linkage FirstOrderEntity FirstOrderEntity
meronymyRelation = make_meronymyRelation "Root of First meronymy Relation" "Whole Entity"

-- meronymyRelation isSubTypeOf firstOrderRelation (FIX: subject was firstOrderRelation by copy-paste; mirrors M1: classOfMeronymy ⊏⋆ᵣ classOfFirstOrderRelation)  [PROVED - was a postulate]
4aebb6e669640bb2 : meronymyRelation ⊏⋆ᵣ firstOrderRelation
4aebb6e669640bb2  =
  ⊏⋆ᵣ-fromExtMap {subRel = meronymyRelation} {superRel = firstOrderRelation} (λ w → w)
-- meronymyRelation ispowerInstanceOf classOfMeronymy (FIX comment: said holonymy)  [moved to SysFEAT.Ontology.Axioms]
-- ============================================================
-- IV. Mereological principles at M1
-- ============================================================
{-
The physical mereology of the Assemblies (M0): First Order Entities inherit
the full mereological kit through the two directional roots, OPENED PUBLICLY
(plain names ≤ₚ, <ₚ, Overlaps, ... - M0 is the primary usage level).
The GEM bundle is assumed at M0: this is the explicit design choice of
BORO/West integration-grade identity for individuals.
-}
open MereologyKit FirstOrderEntity holonymyRelation meronymyRelation public

{- The GEM bundle is NO LONGER POSTULATED at M0: for the current degenerate
   mereological roots it is REFUTABLE (SysFEAT.Ontology.Audit proves
   GEMAxioms → ⊥). Downstream reasoning that needs GEM is parametric over it:
   `open M0-GEM-Hypothetical gem` discharges it against a future model in
   which the mereological Hom types carry real structure. -}
module M0-GEM-Hypothetical (M0-GEM : GEMAxioms) where
  open GEMAxioms M0-GEM public

-- Constructors for M1 declinations of the mereological roots: every relation
-- built here injects (definitionally, λ h → h : same Hom shape as the root)
-- into holonymyRelation / meronymyRelation, and therefore feeds the core
-- parthood ≤ₚ, its ordering theorems and the GEM principles.
make_holonymySpecialization : (label fwdRole : String) → HolonymySpecialization {rootFibreLevel}
make_holonymySpecialization label fwdRole = record
  { relation = make_holonymyRelation label fwdRole
  ; inj      = λ h → h
  }

make_meronymySpecialization : (label fwdRole : String) → MeronymySpecialization {rootFibreLevel}
make_meronymySpecialization label fwdRole = record
  { relation = make_meronymyRelation label fwdRole
  ; inj      = λ h → h
  }
