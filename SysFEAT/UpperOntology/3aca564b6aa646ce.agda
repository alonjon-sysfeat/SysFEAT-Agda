{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstract Entity MetaClass: 
Abstract Entity MetaClass is the powertype of Class of Abstract Entity.

Documentation : https://framework.sysfeat.com/pages/3aca564b6aa646ce.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.3aca564b6aa646ce where -- ========== Abstract Entity MetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.a599a7e46aa370fb public -- Second Order Class
open import SysFEAT.UpperOntology.bab6c7346ad70999 public -- Third Order Class

AbstractEntityMetaClass : ThirdOrderClass
AbstractEntityMetaClass = SecondOrderClass


--  AbstractEntityMetaClass is subTypeOf SecondOrderClass
st-3aca564b6aa646ce-a599a7e46aa370fb : AbstractEntityMetaClass ⊏ₑ SecondOrderClass
st-3aca564b6aa646ce-a599a7e46aa370fb = polySubTypeOf-identity


-- == Relations =======================
