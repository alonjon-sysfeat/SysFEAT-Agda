{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Term: 
A Term is word or sentence used to designate a Conceptual Element.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4aebd72b696415c6 where -- ========== Term

open import Agda.Primitive
open import SysFEAT.EA.3f066af36858706e public -- Vocabulary Block
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity

Term : ∀ (u : Level) → ClassOfMixedOrderEntity u
Term u = MixedOrderEntity u

--  Term is subTypeOf VocabularyBlock
st-4aebe00a69642337 : ∀ {u v} → (Term u) ⊏⋆ₑ (VocabularyBlock v)
st-4aebe00a69642337 = trivialPolySubTypeOfEntity

--  Term is subTypeOf FirstOrderEntity
st-4aebd7e8696418f9 : ∀ {u} → (Term u) ⊏ₘₑ FirstOrderEntity
st-4aebd7e8696418f9 = polySubTypeOf-identity


