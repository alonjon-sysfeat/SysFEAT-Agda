{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulation section: 
A Regulation section is a classification of Regulation Articles.Regulation sections can be themselves organized as a classification hierarchy.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952eb284672864df where -- ========== Regulation section

open import Agda.Primitive
open import SysFEAT.SOF.952ea6c467285821 public -- Policy Category
open import SysFEAT.EA.4b947d2068a49dbb public -- Regulatory Asset

Regulationsection : ThirdOrderClass
Regulationsection = SecondOrderClass

--  Regulationsection is subTypeOf PolicyCategory
st-9152e8905ed76ae9 : Regulationsection ⊏ₑ PolicyCategory
st-9152e8905ed76ae9 = polySubTypeOf-identity

--  Regulationsection withAspect RegulatoryAsset
st-4b947e9c68a4a008 : Regulationsection ⊏ₐₑ (RegulatoryAsset (lsuc(lsuc(lzero))))
st-4b947e9c68a4a008 = polySubTypeOf-identity

-- == Relationships =======================
