{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

   Shared mathematical functions for SysFEAT upper ontology

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.sysfeat-mathfunctions where

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
