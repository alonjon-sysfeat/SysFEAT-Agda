{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Individual: 
A Conceptual Individual is the representation of any actual tangible or intanglible resource, or its respective state, that is critical for comprehending an enterprise, including its data, resources, and activities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.346a3677655b5325 where -- ========== Conceptual Individual

open import Agda.Primitive
open import SysFEAT.EA.6bf190796859b4ff public -- Dictionary Block
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset
open import SysFEAT.EA.190c2cd368965534 public -- Concept Property

ConceptualIndividual : ClassOfBoundedIndividual
ConceptualIndividual = BoundedIndividual

--  ConceptualIndividual withAspect DictionaryBlock
st-346a36d2655b53aa : ConceptualIndividual ⊏ₐₑ (DictionaryBlock lzero)
st-346a36d2655b53aa = polySubTypeOf-identity

--  ConceptualIndividual is subTypeOf IndividualAsset
st-1d51ae9e635326b5 : ConceptualIndividual ⊏ₑ IndividualAsset
st-1d51ae9e635326b5 = polySubTypeOf-identity

-- == Relationships =======================

{- Qualifying Concept Property: -}
qualifyingConceptProperty :  Linkage ConceptualIndividual ConceptProperty
qualifyingConceptProperty = make_instanceOf "Qualifying Concept Property" "qualifyingConceptProperty"

