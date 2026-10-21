{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Ordered Element

Documentation: https://framework.sysfeat.com/pages/62a273946ace10c3.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.62a273946ace10c3 where -- ============================ Class of Ordered Element

open import Agda.Primitive
open import SysFEAT.UpperOntology.62a271056ace0f5c public -- Class of Mixed-Order Element

ClassOfOrderedElement : (u : Level) → Set (lsuc (lsuc u))
ClassOfOrderedElement u = ClassOfElement u


-- ============================================================
-- I. Aspect Linkage between ClassOfOrderedElement and ClassOfMixedOrderElement
-- ============================================================
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

