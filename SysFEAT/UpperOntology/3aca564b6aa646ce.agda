{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Class of Abstract Entity: 
Class of Class of Abstract Entity is the powertype of Class of Abstract Entity.

Documentation : https://framework.sysfeat.com/pages/3aca564b6aa646ce.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3aca564b6aa646ce where -- ========== Class of Class of Abstract Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.a599a7e46aa370fb public -- Second Order Class

ClassOfClassOfAbstractEntity : ThirdOrderClass
ClassOfClassOfAbstractEntity = SecondOrderClass

--  ClassOfClassOfAbstractEntity is subTypeOf SecondOrderClass
st-3aca564b6aa646ce-a599a7e46aa370fb : ClassOfClassOfAbstractEntity ⊏ₑ SecondOrderClass
st-3aca564b6aa646ce-a599a7e46aa370fb = polySubTypeOf-identity


-- == Relations =======================
