{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Element: 
A Class of Element is an Element whose inhabitants are themselves Elements: a type one universe level above its members. Formally, ClassOfElement u = Element (lsuc u), so a class at level u is a type whose instances are Element u things. This universe gap is what separates a class from its members and prevents the self-reference paradoxes of naive set theory - while still allowing, through cross-level reasoning (metaInstanceOf), the class of all classes to be an instance of itself. A Class of Element is the Predication Substrates answer to the question  what is a category of things   - not a predicate that returns true or false, but a type that collects its instances as inhabitants.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.20702b2568e9694d where -- ============== Class of Element

open import SysFEAT.UpperOntology.23d5249e68510ff9 public -- Element

-- ============================================================
-- I. SubTyping as a Linkage (polymorphic)
-- ============================================================
HomSubType : ∀ {u v} (c1 : ClassOfElement u) (c2 : ClassOfElement v) → Set (lsuc (lsuc (u ⊔ v)))
HomSubType {u} {v} c1 c2 =
  Linkage {lsuc u} {lsuc v} {lsuc (u ⊔ v)} c1 c2
   ⊗
  (∀ (e : Element u) → e ∷⋆ c1 → e ∷⋆ c2)

-- Helper for the constructution of class of relations
make_subTypeOf : ∀ {u v} (label : String) (fwdRole : String) → Linkage (ClassOfElement u) (ClassOfElement v)
make_subTypeOf = make_Linkage HomSubType

-- Polymorphic subtyping as a concrete Linkage.
polySubTypeOf : ∀ {u v} → Linkage (ClassOfElement u) (ClassOfElement v)
polySubTypeOf = make_subTypeOf "Polymorphic Subtyping" "Super Class"

-- Predicate version: c1 is a subtype of c2 (polymorphic).
_⊏⋆_ : ∀ {u v} (c1 : ClassOfElement u) (c2 : ClassOfElement v) → Set (lsuc (lsuc (u ⊔ v)))
_⊏⋆_ c1 c2 = c1 —⟨ polySubTypeOf ⟩→ c2

-- Strict subtyping (same universe) as a restriction of the polymorphic linkage.
subTypeOf : ∀ {u} → Linkage (ClassOfElement u) (ClassOfElement u)
subTypeOf = make_subTypeOf "Polymorphic Subtyping" "Super Class"

-- Predicate for strict subtyping.
_⊏_ : ∀ {u} (c1 c2 : ClassOfElement u) → Set (lsuc (lsuc u))
_⊏_ c1 c2 = c1 —⟨ subTypeOf ⟩→ c2

-- Cross‑universe topological subtyping (no extra inclusion requirement)
metaSubTypeOf : ∀ {u v} → Linkage (ClassOfElement u) (ClassOfElement v)
metaSubTypeOf = make_subTypeOf "MetaSubtyping" "Superclass"

-- Predicate for meta subtyping.
_⊏ₘ_ : ∀ {u v} (c1 : ClassOfElement u) (c2 : ClassOfElement v) → Set (lsuc (lsuc (u ⊔ v)))
_⊏ₘ_ c1 c2 = c1 —⟨ metaSubTypeOf ⟩→ c2


-- ============================================================
-- I.b ORDERING LAWS OF SUBTYPING
-- ============================================================
{-
Every subtyping linkage of the framework is built by make_Linkage over HomSubType;
their witness types reduce to the same type, so the laws below apply to every one
of them DEFINITIONALLY. Reflexivity and transitivity are THEOREMS.
-}

-- Administrative identity linkage (M1-linkage component of the reflexivity witness).
idLinkage : ∀ {u} (c : ClassOfElement u) → Linkage {lsuc u} {lsuc u} {lsuc u} c c
idLinkage c = record
  { label       = "Identity Linkage"
  ; forwardrole = "Itself"
  ; localType   = λ _ → c
  ; ref         = λ t → t
  }

polySubTypeOf-identity : ∀ {u} {c : ClassOfElement u} → c ⊏⋆ c
polySubTypeOf-identity {u} {c} = (c , (idLinkage c , (λ e p → p))) , refl

polySubTypeOf-transitive : ∀ {u v} {c d : ClassOfElement u} {f : ClassOfElement v}
         → c ⊏⋆ d → d ⊏⋆ f → c ⊏⋆ f
polySubTypeOf-transitive {u} {v} {c} {d} {f} ((t₁ , (l₁ , tr₁)) , eq₁) ((t₂ , (l₂ , tr₂)) , eq₂) =
  (f , (lc , tr)) , refl
  where
  -- M1-linkage component: composition of the two M1 linkages (transported along the equalities)
  lc : Linkage {lsuc u} {lsuc v} {lsuc (u ⊔ v)} c f
  lc = subst (λ T → Linkage {lsuc u} {lsuc v} {lsuc (u ⊔ v)} c T) eq₂
         (compose_Linkage l₁
           (subst (λ D → Linkage {lsuc u} {lsuc v} {lsuc (u ⊔ v)} D t₂) (sym eq₁) l₂))
  -- transport component: composition of the two instance transports
  tr : ∀ (e : Element u) → e ∷⋆ c → e ∷⋆ f
  tr e p = subst (λ X → e ∷⋆ X) eq₂ (tr₂ e (subst (λ X → e ∷⋆ X) eq₁ (tr₁ e p)))

-- Definitional aliases: the same proofs serve every subtyping linkage.
subTypeOf-identity : ∀ {u} {c : ClassOfElement u} → c ⊏ c
subTypeOf-identity = polySubTypeOf-identity

subTypeOf-transitive : ∀ {u} {c d f : ClassOfElement u} → c ⊏ d → d ⊏ f → c ⊏ f
subTypeOf-transitive = polySubTypeOf-transitive

metaSubTypeOf-identity : ∀ {u} {c : ClassOfElement u} → c ⊏ₘ c
metaSubTypeOf-identity = polySubTypeOf-identity

metaSubTypeOf-transitive : ∀ {u v} {c d : ClassOfElement u} {f : ClassOfElement v}
          → c ⊏ₘ d → d ⊏ₘ f → c ⊏ₘ f
metaSubTypeOf-transitive = polySubTypeOf-transitive

-- Polymorphic monotonicity of instantiation along subtyping
∷⋆-mono : ∀ {u v} {e : Element u} {c : ClassOfElement u} {d : ClassOfElement v}
        → e ∷⋆ c → c ⊏⋆ d → e ∷⋆ d
∷⋆-mono {e = e} ec ((t , (l , tr)) , eq) = subst (λ X → e ∷⋆ X) eq (tr e ec)

-- Transitivity (direct proof using the inclusion component).
-- (Cubical migration note: the historical proof matched on refl; a path is
--  transported instead.)
inst-subtype-trans : ∀ {u} {e : Element u} {c d : ClassOfElement u}
  → e ∷ c
  → c ⊏ d
  → e ∷ d
inst-subtype-trans {e = e} inst ((t , (link , incl)) , eq) =
  subst (λ X → e ∷⋆ X) eq (incl e inst)

-- ============================================================
-- I.c COERCION-BASED SUBTYPE WITNESSES (SUPPORT LIBRARY)
-- ============================================================
{-
The bridge between the EA model and the substrate: a relationship whose child
type coerces into its parent type (definitional alias: id; structural
restriction: projection; level crossing: lift) yields a subtype witness whose
instance-transport component is REAL - it post-composes the classifying
reference of any instantiation witness with the coercion.
-}

-- post-compose the classifying reference of an instantiation witness with a coercion
∷⋆-mapTarget : ∀ {u v} {e : Element u} {c d : ClassOfElement v}
  → (c → d) → e ∷⋆ c → e ∷⋆ d
∷⋆-mapTarget {u} {v} {e} {c} {d} f w = (d , retarget (unW w)) , refl
  where
  unW : e ∷⋆ c → HomInstanceOf e c
  unW ((c' , L) , eq) = subst (HomInstanceOf e) eq L
  retarget : HomInstanceOf e c → HomInstanceOf e d
  retarget L = record
    { label       = Linkage.label L
    ; forwardrole = Linkage.forwardrole L
    ; localType   = Linkage.localType L
    ; ref         = λ {s} ev → f (Linkage.ref L ev)
    }

-- subtype witness from an element-level coercion (same universe level)
subTypeOf-fromCoercion : ∀ {u} {c d : ClassOfElement u} → (c → d) → c ⊏ d
subTypeOf-fromCoercion {u} {c} {d} f =
  (d , (functionLinkage f , (λ e w → ∷⋆-mapTarget f w))) , refl

polySubTypeOf-fromCoercion : ∀ {u} {c d : ClassOfElement u} → (c → d) → c ⊏⋆ d
polySubTypeOf-fromCoercion = subTypeOf-fromCoercion

metaSubTypeOf-fromCoercion : ∀ {u} {c d : ClassOfElement u} → (c → d) → c ⊏ₘ d
metaSubTypeOf-fromCoercion = subTypeOf-fromCoercion

-- trivial witnesses (satisfiability model only)
trivialPolySubTypeOf : ∀ {u v} {c : ClassOfElement u} {d : ClassOfElement v} → c ⊏⋆ d
trivialPolySubTypeOf {u} {v} {c} {d} =
  (d , (liftLinkage {w = lsuc (u ⊔ v)} , (λ e _ → trivialPolyInstanceOf))) , refl

trivialSubTypeOf : ∀ {u} {c d : ClassOfElement u} → c ⊏ d
trivialSubTypeOf = trivialPolySubTypeOf

trivialMetaSubTypeOf : ∀ {u v} {c : ClassOfElement u} {d : ClassOfElement v} → c ⊏ₘ d
trivialMetaSubTypeOf = trivialPolySubTypeOf

trivialMetaInstanceOf : ∀ {u v} {e : Element u} {c : ClassOfElement v} → e ∷ₘ c
trivialMetaInstanceOf = trivialPolyInstanceOf

-- ============================================================
-- II. POWER TYPES
-- ============================================================
PowerInstanceHom : ∀ {u} (c : ClassOfElement u) (p : ClassOfElement (lsuc u)) → Set (lsuc (lsuc (lsuc u)))
PowerInstanceHom {u} c p =
  (c ∷ p) ⊗
  (∀ {s : ClassOfElement u} → s ⊏ c → s ∷ p)

powerInstanceOf : ∀ {u} → Linkage (ClassOfElement u) (ClassOfElement (lsuc u))
powerInstanceOf {u} = record
  { label       = "Power type instantiation"
  ; forwardrole = "Power type"
  ; localType   = λ c → Σ (ClassOfElement (lsuc u)) (λ p → PowerInstanceHom c p)
  ; ref         = λ {c} pair → proj₁ pair
  }

-- Mathematical predicate for powerInstanceOf
_∷ₚ_ : ∀ {u} (c : ClassOfElement u) (p : ClassOfElement (lsuc u)) → Set (lsuc (lsuc (lsuc u)))
_∷ₚ_ pi p = pi —⟨ powerInstanceOf ⟩→ p

{-
powertype-closure : a subtype of the power-type base is an instance of the
power type.  This is the FAITHFUL second component of the power-type witness,
extracted honestly (no degeneracy): from  c ∷ₚ p  and  s ⊏ c  we obtain  s ∷ p .
It replaces the previous `reflexive-powertype`, whose conclusion was discharged
by a trivial cross-level witness (true but vacuous).
-}
powertype-closure :
  ∀ {u} {c : ClassOfElement u} {p : ClassOfElement (lsuc u)}
  → c ∷ₚ p
  → ∀ {s : ClassOfElement u} → s ⊏ c → s ∷ p
powertype-closure ((_ , hom) , eq) {s} s⊏c =
  subst (λ P → s ∷ P) eq (proj₂ hom s⊏c)

-- ============================================================
-- III. THE REFLEXIVE POWER-TYPE TOWER (Reflexive Knowledge Graph)
-- ============================================================
{-
Element-isPowerInstanceOf-ClassOfElement.
The underlying coercion is `Lift`: every element of the universe Element u,
lifted one level, is an element of ClassOfElement u. The second component
classifies every member of a subclass s by (the type) s itself.
-}
Element-isPowerInstanceOf-ClassOfElement : ∀ {u} → (Element u) ∷ₚ (ClassOfElement u)
Element-isPowerInstanceOf-ClassOfElement {u} =
  (ClassOfElement u ,
    ( instanceOf-fromCoercion (λ A → Lift (lsuc u) A)
    , (λ {s} _ → instanceOf-fromCoercion (λ _ → s)) )) , refl

{-
ClassOfElement re-enters the element hierarchy ONE LEVEL UP: definitionally
ClassOfElement u ≡ Element (lsuc u)  (both are Set (lsuc u)).  So "a class is an
element" is FAITHFUL, by the identity coercion, when the target is re-indexed by
lsuc — NOT the trivial downward crossing  ClassOfElement u ⊏ₘ Element u  (which
would lower a universe).  This re-indexed subtyping is what carries the
Reflexive KG; it is a strict, same-level ⊏ proved by reflexivity.
-}
ClassOfElement-isSubTypeOf-ElementAbove : ∀ {u} → (ClassOfElement u) ⊏ (Element (lsuc u))
ClassOfElement-isSubTypeOf-ElementAbove = subTypeOf-identity

{-
Faithful power-type step: ClassOfElement u is (by the identity above) a subtype
of Element (lsuc u), whose power type is ClassOfElement (lsuc u); the power-type
closure therefore classifies it there — with a real witness, not a trivial one.
A power type is reflexive only when the class is ALSO a subtype of its base, and
here that premise is discharged faithfully.
-}
ClassOfElement-isInstanceOf-ClassOfElementAbove :
  ∀ {u} → (ClassOfElement u) ∷ (ClassOfElement (lsuc u))
ClassOfElement-isInstanceOf-ClassOfElementAbove {u} =
  powertype-closure
    (Element-isPowerInstanceOf-ClassOfElement {lsuc u})
    ClassOfElement-isSubTypeOf-ElementAbove

{-
Self-instantiation (the non-well-founded heart of the Reflexive KG): the type
ClassOfElement u occurs both as an element (of Element (lsuc (lsuc u))) and as a
class (in ClassOfElement (lsuc u)); the identity coercion relates the two
occurrences, so  ClassOfElement u ∷ₘ ClassOfElement u  holds with a FAITHFUL
witness.  (The closure above yields instance-of-its-metaclass, i.e.
∷ ClassOfElement (lsuc u); genuine instance-of-itself is this identity fact.)
-}
ClassOfElement-isInstanceOf-itself : ∀ {u} → (ClassOfElement u) ∷ₘ (ClassOfElement u)
ClassOfElement-isInstanceOf-itself = metaInstanceOf-fromCoercion (λ A → A)

-- ============================================================
-- IV. ONTOLOGICAL PARTITION between classes that have a fixed universe level and
--     classes that can span accross universe level
-- ============================================================
ClassOfMixedOrderElement : (u : Level) → Set (lsuc (lsuc u))
ClassOfMixedOrderElement u = ClassOfElement u

ClassOfOrderedElement : (u : Level) → Set (lsuc (lsuc u))
ClassOfOrderedElement u = ClassOfElement u

-- Aspects are suptyping between a ClassOfOrderedElement and a ClassOfMixedOrderElement
aspectOf : ∀ {u v} → Linkage (ClassOfOrderedElement u) (ClassOfMixedOrderElement v)
aspectOf {u} {v} = make_Linkage (HomSubType {u} {v}) "Aspect Subtyping" "Super Aspect"

-- Mathematical predicate for aspectOf
_⊏ₐ_ : ∀ {u v} → ClassOfOrderedElement u → ClassOfMixedOrderElement v → Set (lsuc (lsuc (u ⊔ v)))
_⊏ₐ_ c1 c2 = c1 —⟨ aspectOf ⟩→ c2

-- Ordering laws for aspectOf : same HomSubType witnesses, same proofs.
aspectOf-identity : ∀ {u} {c : ClassOfOrderedElement u} → c ⊏ₐ c
aspectOf-identity = polySubTypeOf-identity

aspectOf-transitive : ∀ {u v} {c d : ClassOfOrderedElement u} {f : ClassOfMixedOrderElement v}
          → c ⊏ₐ d → d ⊏ₐ f → c ⊏ₐ f
aspectOf-transitive = polySubTypeOf-transitive

aspectOf-fromCoercion : ∀ {u} {c d : ClassOfElement u} → (c → d) → c ⊏ₐ d
aspectOf-fromCoercion = subTypeOf-fromCoercion

trivialAspectOf : ∀ {u v} {c : ClassOfOrderedElement u} {d : ClassOfMixedOrderElement v} → c ⊏ₐ d
trivialAspectOf = trivialPolySubTypeOf

-- ============================================================
-- V. SUBTYPING AS AN ORDERED LINKAGE
-- ============================================================
subTypeOrder : ∀ {u} → IsOrderLinkage (subTypeOf {u})
subTypeOrder = record { ord-refl = subTypeOf-identity ; ord-trans = subTypeOf-transitive }

-- Classical subtyping preorder (truncated), inherited theorems included.
module SubTypePreorder {u} = IsOrderLinkage (subTypeOrder {u})

-- Strict subtyping as a first-class ordered Linkage.
subTypeOrderLinkage : ∀ {u} → OrderLinkage (ClassOfElement u)
subTypeOrderLinkage {u} = record
  { linkage = subTypeOf {u}
  ; isOrder = subTypeOrder {u}
  }
