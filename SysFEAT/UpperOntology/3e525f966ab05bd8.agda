{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Elementary Property: 
An Elementary Property is a Property than cannot be further decomposed.

Documentation : https://framework.sysfeat.com/pages/3e525f966ab05bd8.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3e525f966ab05bd8 where -- ========== Elementary Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block

ElementaryProperty : PropertyType
ElementaryProperty = Property


--  ElementaryProperty is subTypeOf Property
st-3e525f966ab05bd8-746ac18368905aa2 : ElementaryProperty ⊏ₑ Property
st-3e525f966ab05bd8-746ac18368905aa2 = polySubTypeOf-identity

--  ElementaryProperty withAspect ElementaryBlock
st-3e525f966ab05bd8-23d5c5fc685142de : ElementaryProperty ⊏ₐₑ (ElementaryBlock (lsuc(lzero)))
st-3e525f966ab05bd8-23d5c5fc685142de = polySubTypeOf-identity


-- == Relations =======================
