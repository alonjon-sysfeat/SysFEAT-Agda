{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Linkage: 
Linkage is the structural primitive of predication: a fibered, proof-relevant, compositional local predicate between a source Element and a target Element. A Linkage from S to T assigns to each source s : S a local type of evidence (localType s) and a projection (ref) that determines the target from the evidence. The reconstructed predicate s ⟨ L ⟩→ is then a dependent pair: a witness e : localType s together with a proof that ref e ≡ t. Linkage is simultaneously a generalized graph edge (with source, target, and composable edge data), a proof-relevant predicate (where two different edges between the same endpoints are distinguished), and an Element at a higher universe level (meaning it can itself be classified, specialized, and linked). This triple nature - edge, predicate, entity - is what resolves the polysemy that traditional frameworks impose between things-that-are and things-that-connect.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
{-# OPTIONS --cubical-compatible #-}

module 0eb93b276855b2c1 where -- ================= Linkage

open import Agda.Primitive
open import Relation.Binary.PropositionalEquality
open import Data.Product renaming (_×_ to _⊗_)
open import Data.String using (String)

-- ============================================================ 
-- I. Extract from the Element Module where Linkage is defined
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
The reconstructed predicate ' s ⟨ L ⟩→ t ' is then a dependent pair: a witness e : localType s together with a proof that ref e ? t. Linkage is simultaneously a generalized graph edge (with source, target, and composable edge data), a proof-relevant predicate (where two different edges between the same endpoints are distinguished), and an Element at a higher universe level (meaning it can itself be classified, specialized, and linked).
This triple nature - edge, predicate, entity - is what resolves the polysemy that traditional frameworks impose between things-that-are and things-that-connect.
-}
record Linkage {u v w : Level} (S : Element u) (T : Element v) : Set (lsuc (u ⊔ v ⊔ w)) where
  field
    label       : String        -- human‑readable name of the relation
    forwardrole : String        -- descriptive role of the target
    localType   : S → Element w -- fibre (evidence) over each source
    ref         : {s : S} → localType s → T  -- projection from evidence to target
  -- Method access of the HomtType betwee two classes
  Hom : ∀ (s : S) (t : T) → Set (w ⊔ v)
  Hom s t = Σ (localType s) λ e → ref e ≡ t

-- | Witness of a linkage: a concrete directed edge from s to t.
--   It consists of an evidence element e : localType s together with
--   a proof that ref e ≡ t.
_—⟨_⟩→_ : ∀ {u v w} {S : Element u} {T : Element v} 
        → S → Linkage {u} {v} {w} S T → T → Set (v ⊔ w)
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