{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstract Entity MetaClass: 
Abstract Entity MetaClass is the powertype of Class of Abstract Entity.

Documentation : https://framework.sysfeat.com/pages/3aca564b6aa646ce.htm

External references:
  WordNet - Abstract Entity: https://en-word.net/ili/i35547
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3aca564b6aa646ce where -- ========== AbstractEntityMetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.a599a7e46aa370fb public -- SecondOrderClass
open import SysFEAT.UpperOntology.bab6c7346ad70999 public -- ThirdOrderClass

AbstractEntityMetaClass : ThirdOrderClass
AbstractEntityMetaClass = SecondOrderClass


--  AbstractEntityMetaClass is subTypeOf SecondOrderClass
st-3aca564b6aa646ce-a599a7e46aa370fb : AbstractEntityMetaClass ⊏ₑ SecondOrderClass
st-3aca564b6aa646ce-a599a7e46aa370fb = polySubTypeOf-identity


-- == Relations =======================
