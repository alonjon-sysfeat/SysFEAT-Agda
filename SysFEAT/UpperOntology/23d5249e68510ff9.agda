{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Element: 
Element is the most primitive concept in the Predication Substrate: anything that can be the subject or object of predication. Formally, Element u = Set u - a type at universe level u. An Element makes no ontological commitment: it is neither an Entity nor a Relation, neither concrete nor abstract. It is simply something that can be talked about - classified, linked, composed. Every concept in SysFEAT is an Element at some universe level; what distinguishes concepts is the level at which they live and the Linkages they participate in.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5249e68510ff9 where -- ===================== Element (Predication Substrate)

open import Agda.Primitive public
open import Agda.Builtin.String         public using (String)
open import Cubical.Foundations.Prelude public using ( _≡_ ; refl ; sym ; cong ; subst ; substRefl ; transport ; J ; Lift ; lift ; lower ; isProp )
open import Cubical.Data.Sigma          public using ( Σ ; _,_ ; fst ; snd ; _×_ )
open import Cubical.Data.Sum            public using ( _⊎_ ; inl ; inr )
open import Cubical.Data.Empty          public using ( ⊥ )
open import Cubical.Data.Unit           public using ( Unit* ; tt* )
open import Cubical.Relation.Nullary    public using ( ¬_ )
open import Cubical.HITs.PropositionalTruncation public using ( ∥_∥₁ ; ∣_∣₁ ; squash₁ )
  renaming ( rec to ∥∥₁-rec ; map to ∥∥₁-map )

-- ============================================================
-- 0.a Compatibility layer (historical stdlib spellings)
-- ============================================================

infixr 2 _⊗_
_⊗_ : ∀ {a b} → Set a → Set b → Set (a ⊔ b)
_⊗_ = _×_

infixr 1 _OR_
_OR_ : ∀ {a b} → Set a → Set b → Set (a ⊔ b)
_OR_ = _⊎_

pattern inj₁ x = inl x
pattern inj₂ x = inr x

proj₁ : ∀ {a b} {A : Set a} {B : A → Set b} → Σ A B → A
proj₁ = fst

proj₂ : ∀ {a b} {A : Set a} {B : A → Set b} (p : Σ A B) → B (proj₁ p)
proj₂ = snd

pattern ⟨_,_⟩ x y = x , y   -- historical Data.Product renaming used by generated modules

⊤ : ∀ {a} → Set a           -- historical Data.Unit.Polymorphic spelling
⊤ = Unit*

pattern tt = tt*

-- ============================================================
-- 0.b Core mathematical functions
-- ============================================================

-- Propositional truncation (HoTT ∥_∥)
--
{-
∥ A ∥ is the proposition "A is inhabited": it keeps THAT there is evidence and
forgets WHICH evidence. Applied to the witnesses of a Linkage, it produces the
classical (black-box) relation underneath the proof-relevant (white-box)
structure. The historical neutral interface is kept, but it is now DEFINED
from the library higher inductive type instead of postulated.
-}

∥_∥ : ∀ {a} → Set a → Set a
∥_∥ = ∥_∥₁

∣_∣ : ∀ {a} {A : Set a} → A → ∥ A ∥
∣_∣ = ∣_∣₁

squash : ∀ {a} {A : Set a} (x y : ∥ A ∥) → x ≡ y
squash = squash₁

∥∥-rec : ∀ {a b} {A : Set a} {P : Set b}
       → ((x y : P) → x ≡ y)   -- P is a mere proposition
       → (A → P) → ∥ A ∥ → P
∥∥-rec = ∥∥₁-rec

∥∥-map : ∀ {a b} {A : Set a} {B : Set b} → (A → B) → ∥ A ∥ → ∥ B ∥
∥∥-map = ∥∥₁-map


-- Functional equivalence (isomorphism) between two types A and B.
--
record _≃_ {a b} (A : Set a) (B : Set b) : Set (a ⊔ b) where
  constructor mk≃
  field
    to   : A → B
    from : B → A
    to∘from : ∀ x → to (from x) ≡ x
    from∘to : ∀ y → from (to y) ≡ y

open _≃_ public

-- ============================================================
-- I. Foundational ontological types
-- ============================================================

-- | Element : the universe of all "elements" (objects) at a given level.
--   Definitionally, it is the type of all Agda types of that level.
Element : (u : Level) → Set (lsuc u)
Element u = Set u

-- | ClassOfElement : the type of all classes of elements at a given level.
--   A class of elements is itself an element in the next higher universe.
ClassOfElement : (u : Level) → Element (lsuc (lsuc u))
ClassOfElement u = Element (lsuc u)

-- ============================================================
-- II. Linkage (fibred, proof‑relevant, composable)
-- ============================================================
{-
Linkage is the structural primitive of predication: a fibered, proof-relevant, compositional local predicate between a source Element and a target Element.
A Linkage from S to T assigns to each source s : S a local type of evidence (localType s) and a projection (ref) that determines the target from the evidence.
The reconstructed predicate ' s ⟨ L ⟩→ t ' is then a dependent pair: a witness e : localType s together with a proof that ref e ≡ t.
-}
record Linkage {u v w : Level} (S : Element u) (T : Element v) : Set (lsuc (u ⊔ v ⊔ w)) where
  field
    label       : String                     -- human‑readable name of the relation
    forwardrole : String                     -- descriptive role of the target
    localType   : S → Element w              -- fibre (evidence) over each source
    ref         : {s : S} → localType s → T  -- projection from evidence to target
  -- Method access of the HomtType between two classes
  Hom : ∀ (s : S) (t : T) → Set (w ⊔ v)
  Hom s t = Σ (localType s) λ e → ref e ≡ t

-- | Witness of a linkage: a concrete directed edge from s to t.
_—⟨_⟩→_ : ∀ {u v w} {s : Element u} {t : Element v}
        → s → Linkage {u} {v} {w} s t → t → Set (v ⊔ w)
s —⟨ L ⟩→ t = Linkage.Hom L s t

-- | LinkageExt : the total space (extension) of a linkage.
--   It collects all pairs (source , evidence) of the linkage.
LinkageExt : ∀ {u v w} {S : Element u} {T : Element v} → Linkage {u}{v}{w} S T → Set (u ⊔ w)
LinkageExt {S = S} L = Σ S (λ s → Linkage.localType L s)

-- ============================================================
-- III. Structural properties (functionality, totality)
-- ============================================================

-- | isFunctionalLinkage : a linkage is functional if each source
--   determines at most one image target (all evidence projects to the same target).
isFunctionalLinkage : ∀ {u v w} {S : Set u} {T : Set v} → Linkage {u}{v}{w} S T → Set (u ⊔ v ⊔ w)
isFunctionalLinkage {S = S} L =
  ∀ (x : S) (lx ly : Linkage.localType L x) → Linkage.ref L lx ≡ Linkage.ref L ly

-- | isTotalLeftLinkage : a linkage is total on the left if every source
--   admits at least one evidence (i.e. the fibre over each source is inhabited).
isTotalLeftLinkage : ∀ {u v w} {S : Set u} {T : Set v} → Linkage {u}{v}{w} S T → Set (u ⊔ w)
isTotalLeftLinkage {S = S} L = ∀ (x : S) → Linkage.localType L x

-- ============================================================
-- IV. Combinators (generic construction, math composition of linkages)
-- ============================================================

-- | compose_Linkage : mathematical composition of two linkages.
compose_Linkage : ∀ {u v z w1 w2} {S : Element u} {M : Element v} {T : Element z}
  → (L1 : Linkage {u}{v}{w1} S M)
  → (L2 : Linkage {v}{z}{w2} M T)
  → Linkage {u}{z}{w1 ⊔ w2} S T
compose_Linkage L1 L2 = record
  { label       = "Linkage composition"
  ; forwardrole = "composed type"
  ; localType   = λ s → Σ (Linkage.localType L1 s) (λ e1 → Linkage.localType L2 (Linkage.ref L1 e1))
  ; ref         = λ {s} (e1 , e2) → Linkage.ref L2 e2
  }

-- | _∘_ : infix notation for mathematical composition of two linkages.
_∘_ : ∀ {u v z w1 w2} {S : Element u} {M : Element v} {T : Element z}
    → Linkage {u}{v}{w1} S M → Linkage {v}{z}{w2} M T → Linkage {u}{z}{w1 ⊔ w2} S T
_∘_ = compose_Linkage


-- | make_Linkage : builds a Linkage from a binary relation Rel : Source → Target → Set lw.
make_Linkage : ∀ {ls lt lw} {source : Set ls} {target : Set lt}
  (homType  : source → target → Set lw)
  (label    : String)
  (fwdRole  : String)
  → Linkage {ls} {lt} {lt ⊔ lw} source target
make_Linkage {target = target} homType label fwdRole = record
  { label       = label
  ; forwardrole = fwdRole
  ; localType   = λ s → Σ target (λ t → homType s t)
  ; ref         = λ {s} (t , _) → t
  }

-- ============================================================
-- IV.b Generic witness constructors (SUPPORT LIBRARY, new)
-- ============================================================
{-
Two canonical ways to inhabit a Linkage type:

  * functionLinkage f : the graph of an element-level coercion f : S → T,
    with a trivial (unit) fibre. This is the FAITHFUL witness used to prove
    taxonomy relationships that are backed by an actual coercion
    (definitional aliases: f = id; structural restrictions: f = projection;
    level crossings: f = lift).

  * liftLinkage : the trivial witness whose fibre over every source is
    (a lifted copy of) the whole target. It shows that a bare Linkage type
    between any two Elements is always inhabited; it carries no semantic
    force and is reserved for the satisfiability model (see
    SysFEAT.Ontology.Model and the design report).
-}

functionLinkage : ∀ {u v w} {S : Element u} {T : Element v}
  → (S → T) → Linkage {u} {v} {w} S T
functionLinkage f = record
  { label       = "Function Linkage"
  ; forwardrole = "Image"
  ; localType   = λ _ → Unit*
  ; ref         = λ {s} _ → f s
  }

liftLinkage : ∀ {u v w} {S : Element u} {T : Element v}
  → Linkage {u} {v} {v ⊔ w} S T
liftLinkage {v = v} {w = w} {T = T} = record
  { label       = "Generic Evidence Linkage"
  ; forwardrole = "Any Target"
  ; localType   = λ _ → Lift w T
  ; ref         = lower
  }

-- ============================================================
-- V. Instantiation patterns (classification as a Linkage value)
-- ============================================================
-- | HomeType of instanceOf
HomInstanceOf : ∀ {u v} (e : Element u) (c : ClassOfElement v) → Set (lsuc (lsuc (u ⊔ v)))
HomInstanceOf {u} {v} e c = Linkage {u} {lsuc v} {lsuc (u ⊔ v)} e c

-- | polyInstanceOfLinkage : the fixed linkage value that represents the
--   universal polymorphic "instance-of" relation between all elements and all classes.
polyInstanceOf : ∀ {u v} → Linkage (Element u) (ClassOfElement v)
polyInstanceOf {u} {v} = record
  { label       = "Polymorphic Instantiation"
  ; forwardrole = "Classifying Type"
  ; localType   = λ e → Σ (ClassOfElement v) (λ c → HomInstanceOf e c)
  ; ref         = λ {e} (c , L) → c
  }

-- | ∷⋆ : polymorphic instantiation predicate.
--   e is an instance of c (across possibly different universe levels).
_∷⋆_ : ∀ {u v} (e : Element u) (c : ClassOfElement v) → Set (lsuc (lsuc (u ⊔ v)))
_∷⋆_ e c = e —⟨ polyInstanceOf ⟩→ c

-- ============================================================
-- V.b Witness ≃ evidence contraction (PROVED, previously postulated)
-- ============================================================
{-
A witness of a make_Linkage-shaped linkage IS an evidence with a determined
target: the pair-with-path packaging contracts away. Proved once, generically,
by path induction; it replaces the historical postulate `instanceEquivalence`
and is the honest form of the dropped `⊏ₑ-≅-Linkage`-style postulates
(see the design report, Task 2(c)).
-}
witness-≃ : ∀ {lt lw} {T : Set lt} (F : T → Set lw) {t : T}
          → (Σ (Σ T F) (λ e → proj₁ e ≡ t)) ≃ F t
witness-≃ {T = T} F {t} = mk≃ to′ from′ to∘from′ from∘to′
  where
  to′ : Σ (Σ T F) (λ e → proj₁ e ≡ t) → F t
  to′ ((t' , h) , eq) = subst F eq h

  from′ : F t → Σ (Σ T F) (λ e → proj₁ e ≡ t)
  from′ h = (t , h) , refl

  to∘from′ : ∀ h → to′ (from′ h) ≡ h
  to∘from′ h = substRefl {B = F} h

  from∘to′ : ∀ x → from′ (to′ x) ≡ x
  from∘to′ ((t' , h) , eq) =
    J (λ y p → _≡_ {A = Σ (Σ T F) (λ e → proj₁ e ≡ y)}
                   ((y , subst F p h) , refl)
                   ((t' , h) , p))
      (cong pack (substRefl {B = F} h))
      eq
    where
    pack : F t' → Σ (Σ T F) (λ e → proj₁ e ≡ t')
    pack hh = (t' , hh) , refl

makeWitness-≃ : ∀ {ls lt lw} {S : Set ls} {T : Set lt} (R : S → T → Set lw)
                {s : S} {t : T}
              → (Σ (Σ T (λ t' → R s t')) (λ e → proj₁ e ≡ t)) ≃ R s t
makeWitness-≃ R {s} = witness-≃ (R s)

-- witness bridges, stated as before (definitional corollaries of the above)
mkWitness : ∀ {ls lt lw} {S : Set ls} {T : Set lt} (R : S → T → Set lw)
            {s : S} {t : T}
          → R s t → Σ (Σ T (λ t' → R s t')) (λ e → proj₁ e ≡ t)
mkWitness R {t = t} h = (t , h) , refl

unWitness : ∀ {ls lt lw} {S : Set ls} {T : Set lt} (R : S → T → Set lw)
            {s : S} {t : T}
          → Σ (Σ T (λ t' → R s t')) (λ e → proj₁ e ≡ t) → R s t
unWitness R {s = s} ((t' , h) , eq) = subst (R s) eq h

-- | instanceEquivalence : PROVED (previously postulated). The polymorphic
--   instantiation predicate is equivalent to the raw classifying Linkage.
instanceEquivalence : ∀ {u v} {e : Element u} {c : ClassOfElement v}
  → (e ∷⋆ c) ≃ Linkage {u} {lsuc v} {lsuc (u ⊔ v)} e c
instanceEquivalence {e = e} = witness-≃ (HomInstanceOf e)

-- | instantiation witness from an element-level coercion (FAITHFUL)
polyInstanceOf-fromCoercion : ∀ {u v} {e : Element u} {c : ClassOfElement v}
  → (e → c) → e ∷⋆ c
polyInstanceOf-fromCoercion {c = c} f = (c , functionLinkage f) , refl

-- | trivial instantiation witness (model use only, see the design report)
trivialPolyInstanceOf : ∀ {u v} {e : Element u} {c : ClassOfElement v} → e ∷⋆ c
trivialPolyInstanceOf {u} {v} {e} {c} = (c , liftLinkage {w = lsuc (u ⊔ v)}) , refl

-- | instanceOf : strict/standard instantiation.
--   The class c lives exactly one universe level above the element e.
instanceOf : ∀ {u} → Linkage (Element u) (ClassOfElement u)
instanceOf {u} = polyInstanceOf {u} {u}

-- | _∷_ : strict instanciation predicate
_∷_ : ∀ {u} (e : Element u) (c : ClassOfElement u) → Set (lsuc (lsuc u))
_∷_ e c = e —⟨ instanceOf ⟩→ c

-- | metaInstanceOf : reverse (cross‑universe) instantiation,
--   commonly used for reflexive powertypes.
metaInstanceOf : ∀ {u v} → Linkage (Element u) (ClassOfElement v)
metaInstanceOf {u} {v} = polyInstanceOf {u} {v}

-- | _∷ₘ_ : reverse (cross‑universe) instanciation predicate
_∷ₘ_ : ∀ {u v} (e : Element u) (c : ClassOfElement v) → Set (lsuc (lsuc (u ⊔ v)))
_∷ₘ_ e c = e —⟨ metaInstanceOf ⟩→ c

-- coercion-based witnesses for the strict and meta instantiation predicates
instanceOf-fromCoercion : ∀ {u} {e : Element u} {c : ClassOfElement u} → (e → c) → e ∷ c
instanceOf-fromCoercion = polyInstanceOf-fromCoercion

metaInstanceOf-fromCoercion : ∀ {u v} {e : Element u} {c : ClassOfElement v} → (e → c) → e ∷ₘ c
metaInstanceOf-fromCoercion = polyInstanceOf-fromCoercion

-- ============================================================
-- VII. Ordered Linkages
-- ============================================================
{-
An ordering structure is foundational at the level of Linkages between Elements:
IsOrderLinkage packages proof-relevant reflexivity and transitivity of the
witnesses of an endo-Linkage. Its propositional truncation _≼_ is the classical
(black-box) preorder, whose laws are THEOREMS.
-}
record IsOrderLinkage {u w : Level} {S : Element u}
                      (L : Linkage {u} {u} {w} S S) : Set (u ⊔ w) where
  field
    ord-refl  : ∀ {x} → x —⟨ L ⟩→ x
    ord-trans : ∀ {x y z} → x —⟨ L ⟩→ y → y —⟨ L ⟩→ z → x —⟨ L ⟩→ z

  -- The classical (black-box) preorder: truncation of the witnesses.
  _≼_ : S → S → Set (u ⊔ w)
  x ≼ y = ∥ x —⟨ L ⟩→ y ∥
  infix 4 _≼_

  ≼-refl : ∀ {x} → x ≼ x
  ≼-refl = ∣ ord-refl ∣

  ≼-trans : ∀ {x y z} → x ≼ y → y ≼ z → x ≼ z
  ≼-trans a b = ∥∥-rec squash (λ p → ∥∥-map (ord-trans p) b) a

{-
Antisymmetry on the truncation = identity criterion. Kept as a separate,
optional bundle: assuming it is an ontological design decision per relation.
-}
record IsPartialOrderLinkage {u w : Level} {S : Element u}
                             (L : Linkage {u} {u} {w} S S) : Set (u ⊔ w) where
  field
    isOrder : IsOrderLinkage L
  open IsOrderLinkage isOrder public
  field
    ≼-antisym : ∀ {x y} → x ≼ y → y ≼ x → x ≡ y

-- The bundle: a Linkage together with its ordering structure.
record OrderLinkage {u w : Level} (S : Element u) : Set (lsuc (u ⊔ w)) where
  field
    linkage : Linkage {u} {u} {w} S S
    isOrder : IsOrderLinkage linkage
  open IsOrderLinkage isOrder public

-- ------------------------------------------------------------
-- Component view (evidence / proof) of an ordered Linkage.
-- ------------------------------------------------------------
module OrderLinkageComponents {u w : Level} {S : Element u}
                              {L : Linkage {u} {u} {w} S S}
                              (ord : IsOrderLinkage L) where

  refl-evidence : ∀ {s : S} → Linkage.localType L s
  refl-evidence {s} = proj₁ (IsOrderLinkage.ord-refl ord {s})

  refl-proof : ∀ {s : S} → Linkage.ref L (refl-evidence {s}) ≡ s
  refl-proof {s} = proj₂ (IsOrderLinkage.ord-refl ord {s})

  trans-evidence : ∀ {s m t : S}
    → (e₁ : Linkage.localType L s) → Linkage.ref L e₁ ≡ m
    → (e₂ : Linkage.localType L m) → Linkage.ref L e₂ ≡ t
    → Linkage.localType L s
  trans-evidence e₁ p₁ e₂ p₂ = proj₁ (IsOrderLinkage.ord-trans ord (e₁ , p₁) (e₂ , p₂))

  trans-proof : ∀ {s m t : S}
    → (e₁ : Linkage.localType L s) (p₁ : Linkage.ref L e₁ ≡ m)
    → (e₂ : Linkage.localType L m) (p₂ : Linkage.ref L e₂ ≡ t)
    → Linkage.ref L (trans-evidence e₁ p₁ e₂ p₂) ≡ t
  trans-proof e₁ p₁ e₂ p₂ = proj₂ (IsOrderLinkage.ord-trans ord (e₁ , p₁) (e₂ , p₂))

-- Converse constructor: an ordering structure from the component view.
ordFromComponents : ∀ {u w : Level} {S : Element u} {L : Linkage {u} {u} {w} S S}
  → (re : ∀ {s : S} → Linkage.localType L s)
  → (rp : ∀ {s : S} → Linkage.ref L (re {s}) ≡ s)
  → (te : ∀ {s m t : S}
        → (e₁ : Linkage.localType L s) → Linkage.ref L e₁ ≡ m
        → (e₂ : Linkage.localType L m) → Linkage.ref L e₂ ≡ t
        → Linkage.localType L s)
  → (tp : ∀ {s m t : S}
        → (e₁ : Linkage.localType L s) (p₁ : Linkage.ref L e₁ ≡ m)
        → (e₂ : Linkage.localType L m) (p₂ : Linkage.ref L e₂ ≡ t)
        → Linkage.ref L (te e₁ p₁ e₂ p₂) ≡ t)
  → IsOrderLinkage L
ordFromComponents re rp te tp = record
  { ord-refl  = re , rp
  ; ord-trans = λ (e₁ , p₁) (e₂ , p₂) → te e₁ p₁ e₂ p₂ , tp e₁ p₁ e₂ p₂
  }

-- Cardinality bridge: an ordered Linkage is in particular left-total.
orderLinkage-isTotalLeft : ∀ {u w : Level} {S : Element u} {L : Linkage {u} {u} {w} S S}
  → IsOrderLinkage L → isTotalLeftLinkage L
orderLinkage-isTotalLeft ord x = proj₁ (IsOrderLinkage.ord-refl ord {x})


-- ============================================================
-- VIII. LINKAGE COMBINATORS: converse, union, closure
-- ============================================================
{-
Generic combinators on Linkages, complementing compose_Linkage (section IV).
They let derived relations - in particular the derived parthood of the
Mereology Kit - be BUILT from existing linkages instead of being declared.
-}

-- Converse of a Linkage: evidence over the target is a source together with
-- a witness. (The converse of a fibred linkage is again a linkage.)
converse_Linkage : ∀ {u v w} {S : Element u} {T : Element v}
  → Linkage {u} {v} {w} S T → Linkage {v} {u} {u ⊔ v ⊔ w} T S
converse_Linkage {u} {v} {w} {S} {T} L = record
  { label       = "Converse Linkage"
  ; forwardrole = "Source"
  ; localType   = λ t → Σ S (λ s → s —⟨ L ⟩→ t)
  ; ref         = λ e → proj₁ e
  }

-- Union of two Linkages with the same endpoints: evidence is the sum of fibres.
union_Linkage : ∀ {u v w₁ w₂} {S : Element u} {T : Element v}
  → Linkage {u} {v} {w₁} S T → Linkage {u} {v} {w₂} S T
  → Linkage {u} {v} {w₁ ⊔ w₂} S T
union_Linkage L₁ L₂ = record
  { label       = "Union Linkage"
  ; forwardrole = "Related"
  ; localType   = λ s → Linkage.localType L₁ s OR Linkage.localType L₂ s
  ; ref         = λ { (inj₁ e) → Linkage.ref L₁ e ; (inj₂ e) → Linkage.ref L₂ e }
  }

-- Reflexive-transitive closure of an endo-Linkage: evidence = chains of witnesses.
data ClosurePath {u w : Level} {S : Element u}
                 (L : Linkage {u} {u} {w} S S) : S → S → Set (u ⊔ w) where
  crefl : ∀ {x} → ClosurePath L x x
  cstep : ∀ {x m y} → (x —⟨ L ⟩→ m) → ClosurePath L m y → ClosurePath L x y

cpath-trans : ∀ {u w} {S : Element u} {L : Linkage {u} {u} {w} S S} {x y z}
  → ClosurePath L x y → ClosurePath L y z → ClosurePath L x z
cpath-trans crefl       q = q
cpath-trans (cstep s p) q = cstep s (cpath-trans p q)

closure_Linkage : ∀ {u w} {S : Element u}
  → Linkage {u} {u} {w} S S → Linkage {u} {u} {u ⊔ w} S S
closure_Linkage L = make_Linkage (ClosurePath L)
                      "Reflexive-transitive closure" "Reachable Element"

-- One step embeds in the closure.
step→closure : ∀ {u w} {S : Element u} {L : Linkage {u} {u} {w} S S} {x y}
  → (x —⟨ L ⟩→ y) → (x —⟨ closure_Linkage L ⟩→ y)
step→closure {L = L} h = mkWitness (ClosurePath L) (cstep h crefl)

-- The closure is ordered - proved once, generically.
closure-isOrder : ∀ {u w} {S : Element u} (L : Linkage {u} {u} {w} S S)
  → IsOrderLinkage (closure_Linkage L)
closure-isOrder L = record
  { ord-refl  = mkWitness (ClosurePath L) crefl
  ; ord-trans = λ h₁ h₂ → mkWitness (ClosurePath L) (cpath-trans (unWitness′ h₁) (unWitness′ h₂))
  }
  where
  unWitness′ : ∀ {x y} → (x —⟨ closure_Linkage L ⟩→ y) → ClosurePath L x y
  unWitness′ ((t , p) , eq) = subst (ClosurePath L _) eq p

-- The closure absorbs composition: (closure L ∘ closure L) embeds in closure L.
closure-absorb-∘ : ∀ {u w} {S : Element u} (L : Linkage {u} {u} {w} S S) {x y}
  → (x —⟨ closure_Linkage L ∘ closure_Linkage L ⟩→ y)
  → (x —⟨ closure_Linkage L ⟩→ y)
closure-absorb-∘ L (((m , p₁) , (t , p₂)) , eq) =
  mkWitness (ClosurePath L) (subst (ClosurePath L _) eq (cpath-trans p₁ p₂))
