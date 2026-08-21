{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Entity: 
A Class of Entity is a Class of Element that classifies Entitys. Being a subtype of Entity, it is also an instance of itself.Note:1)  SysFEAT is a higher-order ontology, so  Class of Entity may have instances that are also Class of Entity (Class of Classes).2)  SysFEAT is also a non-well-founded and allows for self-referencing  Class of Entity.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.20702bc568e969f4 where -- ============ Class of Entity & Class of Relation

open import SysFEAT.UpperOntology.20702b2568e9694d public -- Class of Element

-- ============================================================
-- I. CLASS OF ENTITY
-- ============================================================
ClassOfEntity : (u : Level) → Set (lsuc (lsuc u))
ClassOfEntity u = ClassOfElement u

-- ClassOfEntity isSubTypeOf ClassOfElement : definitional alias, proved
4de914586a2956a1 : ∀ {u} →  (ClassOfEntity u) ⊏ (ClassOfElement u)
4de914586a2956a1 = subTypeOf-identity

-- ============================================================
-- II ClassOfRelation hom type
-- ============================================================

-- HomType of ClassOfRelation
HomClassOfRelation : ∀ {u v} (cs : ClassOfEntity u) (ct : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
HomClassOfRelation {u} {v} cs ct = Linkage {lsuc u} {lsuc v} {lsuc (u ⊔ v)} cs ct

-- Helper for the constructution of class of relations
make_classOfRelation : ∀ {u v} (label : String) (fwdRole : String) → Linkage (ClassOfEntity u) (ClassOfEntity v)
make_classOfRelation = make_Linkage HomClassOfRelation

-- ============================================================
-- III. CLASS OF RELATION
-- ============================================================
ClassOfRelationType : (u v : Level) → Set (lsuc (lsuc (lsuc (u ⊔ v))))
ClassOfRelationType u v = Linkage {lsuc (lsuc u)} {lsuc (lsuc v)} {lsuc (lsuc (u ⊔ v))}
                                 (ClassOfEntity u) (ClassOfEntity v)

classOfRelation : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
classOfRelation = make_classOfRelation "Class of Relation" "Related Classe Entity"

-- HomType of subtyping Linkage between class of relations
HomRelLinkage : ∀ {u1 v1 u2 v2}
                {cs1 : ClassOfEntity u1} {ct1 : ClassOfEntity v1}
                {cs2 : ClassOfEntity u2} {ct2 : ClassOfEntity v2}
                (subRel : HomClassOfRelation cs1 ct1) (superRel : HomClassOfRelation cs2 ct2)
                → Set (lsuc (lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))))
HomRelLinkage {u1}{v1}{u2}{v2}{cs1}{ct1}{cs2}{ct2} subRel superRel =
  -- Linkage between HomClassOfRelation
  Linkage {lsuc (lsuc (u1 ⊔ v1))} {lsuc (lsuc (u2 ⊔ v2))} {lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))}
          (HomClassOfRelation cs1 ct1) (HomClassOfRelation cs2 ct2)
  ⊗
  -- instance inclusion constraint on extensions
  (∀ (w : LinkageExt subRel) → LinkageExt superRel)

-- Polymorphic subtyping between class of relations
polySubTypeOfRel : ∀ {u1 v1 u2 v2}
                   {cs1 : ClassOfEntity u1} {ct1 : ClassOfEntity v1}
                   {cs2 : ClassOfEntity u2} {ct2 : ClassOfEntity v2}
                   → Linkage (HomClassOfRelation cs1 ct1) (HomClassOfRelation cs2 ct2)
polySubTypeOfRel {u1}{v1}{u2}{v2}{cs1}{ct1}{cs2}{ct2} =
  make_Linkage (HomRelLinkage {u1}{v1}{u2}{v2}{cs1}{ct1}{cs2}{ct2})
               "Polymorphic Subtyping of Class of Relation"
               "Super Relation"

-- Mathematical notation of polySubTypeOfRel
_⊏⋆ᵣ_ : ∀ {u1 v1 u2 v2}
        {cs1 : ClassOfEntity u1} {ct1 : ClassOfEntity v1}
        {cs2 : ClassOfEntity u2} {ct2 : ClassOfEntity v2}
        (subRel   : HomClassOfRelation cs1 ct1)
        (superRel : HomClassOfRelation cs2 ct2)
        → Set (lsuc (lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))))
subRel ⊏⋆ᵣ superRel = subRel —⟨ polySubTypeOfRel ⟩→ superRel

-- Strict subtyping between class of relations
subTypeOfRel : ∀ {u} {cs1 ct1 cs2 ct2 : ClassOfEntity u}
               (subRel   : HomClassOfRelation cs1 ct1)
               (superRel : HomClassOfRelation cs2 ct2)
               → Set (lsuc (lsuc (lsuc u)))
subTypeOfRel {u} {cs1} {ct1} {cs2} {ct2} subRel superRel =
  _⊏⋆ᵣ_ {u} {u} {u} {u} {cs1} {ct1} {cs2} {ct2} subRel superRel

-- ============================================================
-- III.b RELATION-SUBTYPE WITNESSES (SUPPORT LIBRARY, new)
-- ============================================================
{-
A ⊏⋆ᵣ witness is (an administrative M2 linkage +) a map between the two
extensions. The M2 linkage is administrative (any inhabitant will do); the
semantic content is the extension map:
  * identity  - when the two relations are built over the SAME Hom family
    (the extensions are then definitionally equal): the generator's
    "same-root declination" case;
  * a real projection/coercion - when a sub-side witness structurally
    contains a super-side witness;
  * a constant map to a chosen point - the trivial model-only case.
-}
polySubTypeOfRel-fromExtensionMap : ∀ {u1 v1 u2 v2}
    {cs1 : ClassOfEntity u1} {ct1 : ClassOfEntity v1}
    {cs2 : ClassOfEntity u2} {ct2 : ClassOfEntity v2}
    {subRel : HomClassOfRelation cs1 ct1} {superRel : HomClassOfRelation cs2 ct2}
  → (LinkageExt subRel → LinkageExt superRel)
  → subRel ⊏⋆ᵣ superRel
polySubTypeOfRel-fromExtensionMap {u1}{v1}{u2}{v2} {cs1 = cs1} {ct1} {cs2} {ct2} {superRel = sup} f =
  (sup , (admin , f)) , refl
  where
  admin : Linkage {lsuc (lsuc (u1 ⊔ v1))} {lsuc (lsuc (u2 ⊔ v2))} {lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))}
                  (HomClassOfRelation cs1 ct1) (HomClassOfRelation cs2 ct2)
  admin = record
    { label       = "Generic Evidence Linkage"
    ; forwardrole = "Any Target"
    ; localType   = λ _ → Lift (lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))) (HomClassOfRelation cs2 ct2)
    ; ref         = lower
    }

-- ============================================================
-- IV. RELATION BETWEEN CLASS OF ENTITIES
-- ============================================================

-- 1. Polymorphic SubTyping
polySubTypeOfEntity : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
polySubTypeOfEntity = make_subTypeOf "Polymorphic Subtyping of Class of Entity" "Super Class of Entity"

-- Mathematical predicate of polySubTypeOfEntity
_⊏⋆ₑ_ : ∀ {u v} (c1 : ClassOfEntity u) (c2 : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
c1 ⊏⋆ₑ c2 = c1 —⟨ polySubTypeOfEntity ⟩→ c2

-- Honest contraction (replaces the unprovable ⊏⋆ₑ-≅-Linkage postulate):
-- a polymorphic entity-subtyping witness is exactly a HomSubType evidence.
⊏⋆ₑ-asHomSubType : ∀ {u v} {c1 : ClassOfEntity u} {c2 : ClassOfEntity v}
  → (c1 ⊏⋆ₑ c2) ≃ HomSubType c1 c2
⊏⋆ₑ-asHomSubType {c1 = c1} = witness-≃ (HomSubType c1)

-- polySubTypeOfEntity is sub-type of classOfRelation : PROVED.
-- Extension map: a subtyping witness (target , (M1-linkage , transport))
-- structurally CONTAINS a classOfRelation witness (target , M1-linkage).
ed2d64e169483a86 : ∀ {u v} → polySubTypeOfEntity {u} {v} ⊏⋆ᵣ classOfRelation {u} {v}
ed2d64e169483a86 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = polySubTypeOfEntity {u} {v}} {superRel = classOfRelation {u} {v}}
    (λ (c , (t , (lnk , _))) → (c , (t , lnk)))

-- 2. Strict SubTyping
subTypeOfEntity  : ∀ {u} → Linkage (ClassOfEntity u) (ClassOfEntity u)
subTypeOfEntity = make_subTypeOf "Strict Subtyping of Class of Entity" "Super Class of Entity"

-- Mathematical notation of subTypeOfEntity
_⊏ₑ_ : ∀ {u} (c1 c2 : ClassOfEntity u) → Set (lsuc (lsuc u))
c1 ⊏ₑ c2 = c1 —⟨ subTypeOfEntity ⟩→ c2

-- Honest contraction (replaces the unprovable ⊏ₑ-≅-Linkage postulate).
⊏ₑ-asHomSubType : ∀ {u} {c1 : ClassOfEntity u} {c2 : ClassOfEntity u}
  → (c1 ⊏ₑ c2) ≃ HomSubType c1 c2
⊏ₑ-asHomSubType {c1 = c1} = witness-≃ (HomSubType c1)

-- subTypeOfEntity is sub-type of polySubTypeOfEntity : PROVED.
-- Both sides are built over the same Hom family (HomSubType {u}{u});
-- the extensions coincide definitionally and the identity map witnesses it.
S-ed2d64e169483a86 : ∀ {u} → subTypeOfEntity {u} ⊏⋆ᵣ polySubTypeOfEntity {u} {u}
S-ed2d64e169483a86 {u} =
  polySubTypeOfRel-fromExtensionMap {subRel = subTypeOfEntity {u}} {superRel = polySubTypeOfEntity {u} {u}} (λ w → w)

-- metaSubTypeOfEntity is a subTyping used to define reflexive powertypes
metaSubTypeOfEntity : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
metaSubTypeOfEntity = make_subTypeOf "Meta subtyping of Class of Entity" "Super Power Instance"

-- Mathematical notation of metaSubTypeOfEntity
_⊏ₘₑ_ : ∀ {u v} (c1 : ClassOfEntity u) (c2 : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
c1 ⊏ₘₑ c2 = c1 —⟨ metaSubTypeOfEntity ⟩→ c2

-- metaSubTypeOfEntity is sub-type of polySubTypeOfEntity : PROVED (same Hom family).
M-ed2d64e169483a86 : ∀ {u v} → metaSubTypeOfEntity {u} {v} ⊏⋆ᵣ polySubTypeOfEntity {u} {v}
M-ed2d64e169483a86 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = metaSubTypeOfEntity {u} {v}} {superRel = polySubTypeOfEntity {u} {v}} (λ w → w)

-- Honest contraction (replaces the unprovable ⊏ₘₑ-≅-Linkage postulate).
⊏ₘₑ-asHomSubType : ∀ {u v} {c1 : ClassOfEntity u} {c2 : ClassOfEntity v}
  → (c1 ⊏ₘₑ c2) ≃ HomSubType c1 c2
⊏ₘₑ-asHomSubType {c1 = c1} = witness-≃ (HomSubType c1)

-- entity-level spellings of the coercion-based / trivial subtype witnesses
subTypeOfEntity-fromCoercion : ∀ {u} {c d : ClassOfEntity u} → (c → d) → c ⊏ₑ d
subTypeOfEntity-fromCoercion = subTypeOf-fromCoercion

subTypeOfEntity-identity : ∀ {u} {c : ClassOfEntity u} → c ⊏ₑ c
subTypeOfEntity-identity = subTypeOf-identity

polySubTypeOfEntity-identity : ∀ {u} {c : ClassOfEntity u} → c ⊏⋆ₑ c
polySubTypeOfEntity-identity = polySubTypeOf-identity

metaSubTypeOfEntity-identity : ∀ {u} {c : ClassOfEntity u} → c ⊏ₘₑ c
metaSubTypeOfEntity-identity = polySubTypeOf-identity

trivialSubTypeOfEntity : ∀ {u} {c d : ClassOfEntity u} → c ⊏ₑ d
trivialSubTypeOfEntity = trivialPolySubTypeOf

trivialPolySubTypeOfEntity : ∀ {u v} {c : ClassOfEntity u} {d : ClassOfEntity v} → c ⊏⋆ₑ d
trivialPolySubTypeOfEntity = trivialPolySubTypeOf

trivialMetaSubTypeOfEntity : ∀ {u v} {c : ClassOfEntity u} {d : ClassOfEntity v} → c ⊏ₘₑ d
trivialMetaSubTypeOfEntity = trivialPolySubTypeOf

-- ============================================================
-- V. MEREOLOGICAL APEX AT CLASS LEVEL - universe-polymorphic
-- ============================================================
{-
The class-level mereological roots are UNIVERSE-POLYMORPHIC families; one
definition serves every metalevel of the tower. Cross-level edges (u /= v)
exist as raw linkages; the parthood ORDER is instantiated per level (see
ClassParthoodAt in the Entity module).
-}
HomClassOfHolonymy : ∀ {u} (cwh : ClassOfEntity u) (cp : ClassOfEntity u) → Set (lsuc (lsuc (u)))
HomClassOfHolonymy = HomClassOfRelation

HomClassOfMeronymy : ∀ {u v} (cp : ClassOfEntity u) (cwh : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
HomClassOfMeronymy = HomClassOfRelation

make_classOfHolonymy : ∀ {u} (label fwdRole : String) → Linkage (ClassOfEntity u) (ClassOfEntity u)
make_classOfHolonymy = make_Linkage HomClassOfHolonymy

make_classOfMeronymyRelation : ∀ {u v} (label fwdRole : String) → Linkage (ClassOfEntity u) (ClassOfEntity v)
make_classOfMeronymyRelation = make_Linkage HomClassOfMeronymy

-- The polymorphic roots (one family, every metalevel).
polyClassOfHolonymy : ∀ {u} → Linkage (ClassOfEntity u) (ClassOfEntity u)
polyClassOfHolonymy = make_classOfHolonymy "Class of Whole->Part relationship" "Part Class"

polyClassOfMeronymy : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
polyClassOfMeronymy = make_classOfMeronymyRelation "Class of Part->Whole relationship" "Whole Class"
