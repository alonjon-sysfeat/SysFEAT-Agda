{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Functional Asset: 
Conceptual Functional Assets are Functional Assets used to describe the Conceptual Operating Model of an enterprise to shape its functional division of labor.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.cb94ec53681855c2 where -- ========== Conceptual Functional Asset

open import Agda.Primitive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.EA.d9f677bb688e2127 public -- Conceptual Asset

ConceptualFunctionalAsset : ClassOfClassOfBoundedIndividual
ConceptualFunctionalAsset = ClassOfBoundedIndividual

--  ConceptualFunctionalAsset is subTypeOf FunctionalAsset
st-cb94f01e68185c66 : ConceptualFunctionalAsset ⊏ₑ FunctionalAsset
st-cb94f01e68185c66 = polySubTypeOf-identity

--  ConceptualFunctionalAsset is subTypeOf ConceptualAsset
st-d9f67812688e21da : ConceptualFunctionalAsset ⊏ₑ ConceptualAsset
st-d9f67812688e21da = polySubTypeOf-identity

-- == Relationships =======================
