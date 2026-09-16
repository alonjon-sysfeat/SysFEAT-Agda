{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Abstract Entity: 
Class of Abstract Entity is the powertype of Abstract Entity.

Documentation : https://framework.sysfeat.com/pages/3aca55ee6aa645c2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3aca55ee6aa645c2 where -- ========== Class of Abstract Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.c463c6106aa23c35 public -- First Order Class
open import SysFEAT.UpperOntology.3aca564b6aa646ce public -- Class of Class of Abstract Entity

ClassOfAbstractEntity : ClassOfClassOfIndividual
ClassOfAbstractEntity = ClassOfIndividual

--  ClassOfAbstractEntity is subTypeOf FirstOrderClass
st-3aca55ee6aa645c2-c463c6106aa23c35 : ClassOfAbstractEntity ⊏ₑ FirstOrderClass
st-3aca55ee6aa645c2-c463c6106aa23c35 = polySubTypeOf-identity

-- == Relationships =======================
