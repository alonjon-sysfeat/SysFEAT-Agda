{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Elementary Property: 
An Elementary Property is a Property than cannot be further decomposed.

Documentation : https://framework.sysfeat.com/pages/3e525f966ab05bd8.htm

External references:
  ISO 15926 - Property: https://15926.blog/topics/data-model/index.htm#Property
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3e525f966ab05bd8 where -- ========== Elementary Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
open import SysFEAT.UpperOntology.86b99dad6ac3265f public -- Elementary Property Type

ElementaryProperty : ElementaryPropertyType
ElementaryProperty = Property

--  ElementaryProperty is subTypeOf Property
st-3e525f966ab05bd8-746ac18368905aa2 : ElementaryProperty ⊏ₑ Property
st-3e525f966ab05bd8-746ac18368905aa2 = polySubTypeOf-identity

--  ElementaryProperty withAspect ElementaryBlock
st-3e525f966ab05bd8-23d5c5fc685142de : ElementaryProperty ⊏ₐₑ (ElementaryBlock (lsuc(lzero)))
st-3e525f966ab05bd8-23d5c5fc685142de = polySubTypeOf-identity

postulate -- ElementaryProperty is PowerInstanceOf Elementary Property Type
  86b99e936ac3274e : ElementaryProperty ∷ₚₑ ElementaryPropertyType

-- == Relations =======================
