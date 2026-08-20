{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Entity: 
An Entity is a distinct, identifiable Element that has a proper existence (living or non living). It is accessible by some referencing mechanism and can have Relations to other Entitys.The Entity class is the powerinstance of Class of Entity: all subtypes of Entity are instances of Class of Entity.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.e8b2f7c7673d36d1 where -- ============ Entity and Relation

open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Element

-- ============================================================
-- I. ENTITY
-- ============================================================
Entity : (u : Level) → Set (lsuc u)
Entity u = Element u

-- Entity isSubTypeOf Element : definitional alias, proved (bucket 1)
23d5276468511162 : ∀ {u} → (Entity u) ⊏⋆ (Element u)
23d5276468511162 = polySubTypeOf-identity

-- ============================================================
-- II. RELATION (Physical Links M0)
-- ============================================================

HomRelation : ∀ {u v} (s : Entity u) (t : Entity v) → Set (lsuc (u ⊔ v))
HomRelation {u}{v} s t = Linkage {u} {v} {u ⊔ v} s t

-- Helper for the constructution of relations
make_Relation : ∀ {u v} (label : String) (fwdRole : String) → Linkage (Entity u) (Entity v)
make_Relation = make_Linkage HomRelation

{- A Relation is the reification of a Linkage of the Predication Substrate. -}
Relation : ∀ {u v} → Linkage (Entity u) (Entity v)
Relation {u} {v} = make_Relation "Relation" "Related Entity"

-- a canonical point of the extension of the root Relation (support library;
-- used for degenerate extension maps in cross-level assertions and the model)
relationExtPoint : ∀ {u v} → LinkageExt (Relation {u} {v})
relationExtPoint {u} {v} = Unit* , (Unit* , functionLinkage (λ _ → tt*))

-- ============================================================
-- III. CLASSIFICATION OF RELATIONS
-- ============================================================

-- Polymorphic instanciation between relations
polyInstanceOfRel : ∀ {u1 v1 u2 v2}
                   {e1 : Entity u1} {e2 : Entity v1}
                   {c1 : ClassOfEntity u2} {c2 : ClassOfEntity v2}
                   → Linkage (HomRelation e1 e2) (HomClassOfRelation c1 c2)
polyInstanceOfRel {u1} {v1} {u2} {v2} {e1} {e2} {c1} {c2} = record
  { label       = "Polymorphic instanciation of Relation"
  ; forwardrole = "Classifiying Class of Relation"
  ; localType   = λ instRel →
       Σ (HomClassOfRelation c1 c2)
         (λ classRel →
            Linkage {lsuc (u1 ⊔ v1)}
                    {lsuc (lsuc (u2 ⊔ v2))}
                    {lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))}   -- Explicit levels - avoid metavariales
                    (HomRelation e1 e2) (HomClassOfRelation c1 c2))
  ; ref = λ {instRel} (classRel , _) → classRel
  }

-- Mathematical predicate of polyInstanceOfRel
_∷ᵣ⋆_ : ∀ {u1 v1 u2 v2}
        {e1 : Entity u1} {e2 : Entity v1}
        {c1 : ClassOfEntity u2} {c2 : ClassOfEntity v2}
        (iRel : HomRelation e1 e2)
        (cRel : HomClassOfRelation c1 c2)
        → Set (lsuc (lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))))
iRel ∷ᵣ⋆ cRel = iRel —⟨ polyInstanceOfRel ⟩→ cRel

-- Strict instanciation between relations
instanceOfRel : ∀ {u v}
                {e1 : Entity u} {e2 : Entity u}
                {c1 : ClassOfEntity v} {c2 : ClassOfEntity v}
                → Linkage (HomRelation e1 e2) (HomClassOfRelation c1 c2)
instanceOfRel {u} {v} {e1} {e2} {c1} {c2} = record
  { label       = "Instanciation of Relation"
  ; forwardrole = "Classifiying Class of Relation"
  ; localType   = λ instRel →
       Σ (HomClassOfRelation c1 c2)
         (λ classRel →
            Linkage {lsuc (u)}
                    {lsuc (lsuc (v))}
                    {lsuc (lsuc (u ⊔ v))}   -- Explicit levels - avoid metavariales
                    (HomRelation e1 e2) (HomClassOfRelation c1 c2))
  ; ref = λ {instRel} (classRel , _) → classRel
  }

-- Mathematical predicate of instanceOfRel
_∷ᵣ_ : ∀ {u v}
        {e1 : Entity u} {e2 : Entity u}
        {c1 : ClassOfEntity v} {c2 : ClassOfEntity v}
        (iRel : HomRelation e1 e2)
        (cRel : HomClassOfRelation c1 c2)
        → Set (lsuc (lsuc (lsuc (u ⊔ v))))
iRel ∷ᵣ cRel = iRel —⟨ polyInstanceOfRel ⟩→ cRel

-- PowerInstanciation of relations between class of relations
powerInstanceOfRel : ∀ {u1 v1 u2 v2}
                   {cs1 : ClassOfEntity u1} {ct1 : ClassOfEntity v1}
                   {cs2 : ClassOfEntity u2} {ct2 : ClassOfEntity v2}
                   → Linkage (HomClassOfRelation cs1 ct1) (HomClassOfRelation cs2 ct2)
powerInstanceOfRel {u1} {v1} {u2} {v2} {cs1} {ct1} {cs2} {ct2} = record
  { label       = "Polymorphic instanciation of class of relation"
  ; forwardrole = "Power Class of Relation"
  ; localType   = λ subRel →
       Σ (HomClassOfRelation cs2 ct2)
         (λ superRel →
            Linkage {lsuc (lsuc (u1 ⊔ v1))}
                    {lsuc (lsuc (u2 ⊔ v2))}
                    {lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))}   -- Explicit levels - avoid metavariales
                    (HomClassOfRelation cs1 ct1) (HomClassOfRelation cs2 ct2))
  ; ref = λ {subRel} (superRel , _) → superRel
  }

-- Mathematical predicate of powerInstanceOfRel
_∷ᵣₚ_ : ∀ {u1 v1 u2 v2}
        {cs1 : ClassOfEntity u1} {ct1 : ClassOfEntity v1}
        {cs2 : ClassOfEntity u2} {ct2 : ClassOfEntity v2}
        (subRel   : HomClassOfRelation cs1 ct1)
        (superRel : HomClassOfRelation cs2 ct2)
        → Set (lsuc (lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))))
piRel ∷ᵣₚ ptRel = piRel —⟨ polySubTypeOfRel ⟩→ ptRel

-- ============================================================
-- IV. CLASSIFICATION OF ENTITIES
-- ============================================================
-- Hom Type for InstanceOfEntity
HomInstanceOfEntity : ∀ {u v} (e : Entity u) (c : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
HomInstanceOfEntity {u} {v} e c = Linkage {u} {lsuc v} {lsuc (u ⊔ v)} e c

-- Helper for the constructution of instanciation relations
make_instanceOf : ∀ {u v} (label : String) (fwdRole : String) → Linkage (Entity u) (ClassOfEntity v)
make_instanceOf = make_Linkage HomInstanceOfEntity

-- Strict instanciation between entities and their classes
instanceOfEntity :  ∀ {u v} → Linkage (Entity u) (ClassOfEntity v)
instanceOfEntity {u} {v} = record
  { label       = "Polymorphic Instantiation"
  ; forwardrole = "Classifying Type"
  ; localType   = λ e → Σ (ClassOfEntity v) (λ c → HomInstanceOfEntity e c)
  ; ref         = λ {e} (c , L) → c
  }

-- | ∷ₑ : predicate of instanciation of Entity
_∷ₑ_ : ∀ {u v} (e : Entity u) (c : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
_∷ₑ_ e c = e —⟨ instanceOfEntity ⟩→ c

-- powerInstanceOf relies on instanceOf shifted up, so universes must match.
powerInstanceOfEntity :  ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
powerInstanceOfEntity {u} {v} = record
    { label       = "Power instantiation"
    ; forwardrole = "Power Type"
    ; localType   = λ (e : ClassOfEntity u) →
                    Σ (ClassOfEntity v) λ c →
                      (Linkage {lsuc (u)} {lsuc (v)} {lsuc (u ⊔ v)} e c)
  ; ref         = λ {e} p → proj₁ p
  }

-- | ∷ₚₑ : predicate of power instanciation of Entity
_∷ₚₑ_ : ∀ {u v} (e : ClassOfEntity u) (c : ClassOfEntity v) → Set (lsuc (lsuc (u ⊔ v)))
_∷ₚₑ_ e c = e —⟨ powerInstanceOfEntity ⟩→ c

-- ============================================================
-- IV.b ENTITY-LEVEL WITNESS CONSTRUCTORS (SUPPORT LIBRARY, new)
-- ============================================================

-- instantiation witness from an element-level coercion (FAITHFUL)
instanceOfEntity-fromCoercion : ∀ {u v} {e : Entity u} {c : ClassOfEntity v} → (e → c) → e ∷ₑ c
instanceOfEntity-fromCoercion {c = c} f = (c , functionLinkage f) , refl

-- power-instantiation witness from a class-level coercion (FAITHFUL;
-- for the canonical powertype pairs the coercion is `Lift` or `λ A → A`)
powerInstanceOfEntity-fromCoercion : ∀ {u v} {e : ClassOfEntity u} {c : ClassOfEntity v} → (e → c) → e ∷ₚₑ c
powerInstanceOfEntity-fromCoercion {c = c} f = (c , functionLinkage f) , refl

-- degenerate witnesses (satisfiability model only)
degenerateInstanceOfEntity : ∀ {u v} {e : Entity u} {c : ClassOfEntity v} → e ∷ₑ c
degenerateInstanceOfEntity {u} {v} {e} {c} = (c , liftLinkage {w = lsuc (u ⊔ v)}) , refl

degeneratePowerInstanceOfEntity : ∀ {u v} {e : ClassOfEntity u} {c : ClassOfEntity v} → e ∷ₚₑ c
degeneratePowerInstanceOfEntity {u} {v} {e} {c} = (c , liftLinkage {w = lsuc (u ⊔ v)}) , refl

degeneratePolyInstanceOfRel : ∀ {u1 v1 u2 v2}
        {e1 : Entity u1} {e2 : Entity v1}
        {c1 : ClassOfEntity u2} {c2 : ClassOfEntity v2}
        {iRel : HomRelation e1 e2} {cRel : HomClassOfRelation c1 c2}
        → iRel ∷ᵣ⋆ cRel
degeneratePolyInstanceOfRel {u1} {v1} {u2} {v2} {e1} {e2} {c1} {c2} {cRel = cRel} =
  (cRel , admin) , refl
  where
  admin : Linkage {lsuc (u1 ⊔ v1)} {lsuc (lsuc (u2 ⊔ v2))} {lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))}
                  (HomRelation e1 e2) (HomClassOfRelation c1 c2)
  admin = record
    { label       = "Generic Evidence Linkage"
    ; forwardrole = "Any Target"
    ; localType   = λ _ → Lift (lsuc (lsuc (u1 ⊔ v1 ⊔ u2 ⊔ v2))) (HomClassOfRelation c1 c2)
    ; ref         = lower
    }

-- ============================================================
-- VI. STRUCTURAL ASPECTS OF RELATIONS (Reference, Dependency, ...)
-- ============================================================
referenceRelation : ∀ {u v} → Linkage (Entity u) (Entity v)
referenceRelation {u} {v} = make_Relation "Refencing Relation" "Related Entity"

-- referenceRelation is subtypeOf Relation : PROVED (same Hom family, identity extension map)
23d53a6668511cec : ∀ {u v} → referenceRelation {u} {v} ⊏⋆ᵣ Relation {u} {v}
23d53a6668511cec {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = referenceRelation {u} {v}} {superRel = Relation {u} {v}} (λ w → w)

existentialDependency : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
existentialDependency {u} {v} = make_Relation "Existential dependency Relation" "Dependency Entity"

{- existentialDependency is subtypeOf Relation : the historical statement
   relates a CLASS-level relation to the ENTITY-level root one level below;
   only the degenerate (point) extension map inhabits it. The faithful
   statement targets Relation one level up (same Hom family, identity map). -}
cbfce84668535952 : ∀ {u v} → existentialDependency {u} {v} ⊏⋆ᵣ Relation {u} {v}
cbfce84668535952 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = existentialDependency {u} {v}} {superRel = Relation {u} {v}}
    (λ _ → relationExtPoint)

cbfce84668535952-corrected : ∀ {u v} → existentialDependency {u} {v} ⊏⋆ᵣ Relation {lsuc u} {lsuc v}
cbfce84668535952-corrected {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = existentialDependency {u} {v}} {superRel = Relation {lsuc u} {lsuc v}} (λ w → w)

existentialIndependence : ∀ {u v} → Linkage (ClassOfEntity u) (ClassOfEntity v)
existentialIndependence {u} {v} = make_Relation "Existential independence Relation" "Related Entity"

-- existentialIndependence is subtypeOf Relation : same situation as above.
cbfcf29668535a09 : ∀ {u v} → existentialIndependence {u} {v} ⊏⋆ᵣ Relation {u} {v}
cbfcf29668535a09 {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = existentialIndependence {u} {v}} {superRel = Relation {u} {v}}
    (λ _ → relationExtPoint)

cbfcf29668535a09-corrected : ∀ {u v} → existentialIndependence {u} {v} ⊏⋆ᵣ Relation {lsuc u} {lsuc v}
cbfcf29668535a09-corrected {u} {v} =
  polySubTypeOfRel-fromExtensionMap {subRel = existentialIndependence {u} {v}} {superRel = Relation {lsuc u} {lsuc v}} (λ w → w)

-- ============================================================
-- VIII. MEREOLOGICAL APEX HOMTYPES
-- ============================================================
{-
The mereological roots are APEX forms of relations between Entities. Today these
HomTypes coincide definitionally with HomRelation; having a named family gives
the single locus where future structural enrichments of holonymy/meronymy
evidence (e.g. spatio-temporal inclusion) will live. NOTE (design report): it is
exactly this definitional coincidence that makes the GEM identity criterion
refutable at M0 - enriching these Hom types is the precondition for asserting GEM.
-}
HomHolonymyRelation : ∀ {u} (wh : Entity u) (p : Entity u) → Set (lsuc (u))
HomHolonymyRelation = HomRelation

HomMeronymyRelation : ∀ {u} (p : Entity u) (wh : Entity u) → Set (lsuc (u))
HomMeronymyRelation = HomRelation

-- Builders of raw mereological Linkages from the apex HomTypes.
make_holonymyRelation : ∀ {u} (label fwdRole : String) → Linkage (Entity u) (Entity u)
make_holonymyRelation = make_Linkage HomHolonymyRelation

make_meronymyRelation : ∀ {u} (label fwdRole : String) → Linkage (Entity u) (Entity u)
make_meronymyRelation = make_Linkage HomMeronymyRelation

-- ============================================================
-- IX. MEREOLOGY KIT
-- ============================================================
{-
The parametrized mereological kit: converse-coordination of the two
directional roots on a common truncated extension, ordering theorems
inherited from the Element module (IsOrderLinkage), declination bundles,
and the GEM axiom record.
-}
module MereologyKit {u w : Level}
                    (Carrier : Set u)
                    (holo : Linkage {u} {u} {w} Carrier Carrier)
                    (mero : Linkage {u} {u} {w} Carrier Carrier)
                    where

  -- One directed step of surface parthood (part -> whole), built by
  -- combinators: a converse holonymy edge OR a meronymy edge.
  partStepLinkage : Linkage Carrier Carrier
  partStepLinkage = union_Linkage (converse_Linkage holo) mero

  -- Derived parthood: the reflexive-transitive closure of the step linkage.
  corePartOf : Linkage Carrier Carrier
  corePartOf = closure_Linkage partStepLinkage

  -- The ordering structure of parthood: PROVED, not postulated.
  corePartOf-isOrder : IsOrderLinkage corePartOf
  corePartOf-isOrder = closure-isOrder partStepLinkage

  -- Core parthood ≤ₚ = the truncated (black-box) preorder of corePartOf.
  open IsOrderLinkage corePartOf-isOrder public
    renaming ( _≼_     to _≤ₚ_
             ; ≼-refl  to ≤ₚ-refl
             ; ≼-trans to ≤ₚ-trans
             ; ord-refl  to parthood-refl
             ; ord-trans to parthood-trans )

  -- The bundle: parthood as a first-class ordered Linkage.
  corePartOfOrder : OrderLinkage Carrier
  corePartOfOrder = record { linkage = corePartOf ; isOrder = corePartOf-isOrder }

  -- The composition law of the recursive decomposition tower, as a THEOREM.
  ≤ₚ-∘-absorb : ∀ {p q} → (p —⟨ corePartOf ∘ corePartOf ⟩→ q) → (p —⟨ corePartOf ⟩→ q)
  ≤ₚ-∘-absorb = closure-absorb-∘ partStepLinkage

  -- Converse-coordination: the two directional roots agree on the
  -- common truncated extension (definitional, not postulated).
  holo→step : ∀ {wh p} → (wh —⟨ holo ⟩→ p) → (p —⟨ partStepLinkage ⟩→ wh)
  holo→step {wh} {p} h = inj₁ (wh , h) , refl

  mero→step : ∀ {p wh} → (p —⟨ mero ⟩→ wh) → (p —⟨ partStepLinkage ⟩→ wh)
  mero→step (e , eq) = inj₂ e , eq

  holo→≤ₚ : ∀ {wh p} → (wh —⟨ holo ⟩→ p) → p ≤ₚ wh
  holo→≤ₚ h = ∣ step→closure (holo→step h) ∣

  mero→≤ₚ : ∀ {p wh} → (p —⟨ mero ⟩→ wh) → p ≤ₚ wh
  mero→≤ₚ m = ∣ step→closure (mero→step m) ∣

  -- ----------------------------------------------------------
  -- Mereological specializations relations that ARE holonymies / meronymies
  -- ----------------------------------------------------------
  record HolonymySpecialization {w' : Level} : Set (lsuc (u ⊔ w ⊔ w')) where
    field
      relation : Linkage {u} {u} {w'} Carrier Carrier
      inj      : ∀ {wh p} → (wh —⟨ relation ⟩→ p) → (wh —⟨ holo ⟩→ p)
    toParthood : ∀ {wh p} → (wh —⟨ relation ⟩→ p) → p ≤ₚ wh
    toParthood h = holo→≤ₚ (inj h)

  record MeronymySpecialization {w' : Level} : Set (lsuc (u ⊔ w ⊔ w')) where
    field
      relation : Linkage {u} {u} {w'} Carrier Carrier
      inj      : ∀ {p wh} → (p —⟨ relation ⟩→ wh) → (p —⟨ mero ⟩→ wh)
    toParthood : ∀ {p wh} → (p —⟨ relation ⟩→ wh) → p ≤ₚ wh
    toParthood h = mero→≤ₚ (inj h)

  -- The fibre level of the roots.
  rootFibreLevel : Level
  rootFibreLevel = w

  -- ----------------------------------------------------------
  -- Derived mereological vocabulary
  -- ----------------------------------------------------------
  Overlaps : Carrier → Carrier → Set (u ⊔ w)
  Overlaps x y = ∥ Σ Carrier (λ z → (z ≤ₚ x) ⊗ (z ≤ₚ y)) ∥

  _<ₚ_ : Carrier → Carrier → Set (u ⊔ w)   -- proper parthood
  x <ₚ y = (x ≤ₚ y) ⊗ (¬ (x ≡ y))
  infix 4 _<ₚ_

  -- s is a general (unrestricted) sum of the condition φ :
  -- something overlaps s iff it overlaps a φ-satisfier.
  isSumOf : (φ : Carrier → Set (u ⊔ w)) → Carrier → Set (u ⊔ w)
  isSumOf φ s = ∀ (z : Carrier)
    → (Overlaps z s → ∥ Σ Carrier (λ x → φ x ⊗ Overlaps z x) ∥)
    ⊗ (∥ Σ Carrier (λ x → φ x ⊗ Overlaps z x) ∥ → Overlaps z s)

  -- ----------------------------------------------------------
  -- The GEM axiom bundle (one instance per abstraction level)
  -- ----------------------------------------------------------
  record GEMAxioms : Set (lsuc (u ⊔ w)) where
    field
      -- Identity criterion (BORO/West at M0): mutual parthood is identity.
      ≤ₚ-antisym : ∀ {x y} → x ≤ₚ y → y ≤ₚ x → x ≡ y
      -- Strong Supplementation, algebraic form.
      strongSupplementation : ∀ {x y} → (∀ z → z ≤ₚ x → Overlaps z y) → x ≤ₚ y
      -- General Sum: every inhabited condition has a sum.
      generalSum : ∀ (φ : Carrier → Set (u ⊔ w)) → ∥ Σ Carrier φ ∥ → Σ Carrier (isSumOf φ)

    -- --------------------------------------------------------
    -- Extensionality theorems (proved, not assumed)
    -- --------------------------------------------------------
    -- Two things with the same parts are identical.
    sameParts→≡ : ∀ {x y}
      → (∀ z → (z ≤ₚ x → z ≤ₚ y) ⊗ (z ≤ₚ y → z ≤ₚ x))
      → x ≡ y
    sameParts→≡ {x} {y} h =
      ≤ₚ-antisym (strongSupplementation f) (strongSupplementation g)
      where
      f : ∀ z → z ≤ₚ x → Overlaps z y
      f z zx = ∣ z , (≤ₚ-refl , proj₁ (h z) zx) ∣
      g : ∀ z → z ≤ₚ y → Overlaps z x
      g z zy = ∣ z , (≤ₚ-refl , proj₂ (h z) zy) ∣

    -- General sums are unique: the payoff of extensional identity.
    sumUnique : ∀ {φ : Carrier → Set (u ⊔ w)} {s₁ s₂}
      → isSumOf φ s₁ → isSumOf φ s₂ → s₁ ≡ s₂
    sumUnique {φ} {s₁} {s₂} h₁ h₂ =
      ≤ₚ-antisym (strongSupplementation f) (strongSupplementation g)
      where
      f : ∀ z → z ≤ₚ s₁ → Overlaps z s₂
      f z zs₁ = proj₂ (h₂ z) (proj₁ (h₁ z) ∣ z , (≤ₚ-refl , zs₁) ∣)
      g : ∀ z → z ≤ₚ s₂ → Overlaps z s₁
      g z zs₂ = proj₂ (h₁ z) (proj₁ (h₂ z) ∣ z , (≤ₚ-refl , zs₂) ∣)


-- ============================================================
-- X. PER-LEVEL PARTHOOD OF CLASSES
-- ============================================================
{-
One instantiation of the Mereology Kit per metalevel of the class tower,
over the universe-polymorphic roots polyClassOfHolonymy / polyClassOfMeronymy.
-}
module ClassParthoodAt (u : Level) =
  MereologyKit (ClassOfEntity u) (polyClassOfHolonymy {u}) (polyClassOfMeronymy {u})
