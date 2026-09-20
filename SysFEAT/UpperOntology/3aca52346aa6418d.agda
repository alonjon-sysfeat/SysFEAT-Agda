{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstract Entity: 
A Abstract Entity is a First Order Entity that is used for syntactic purposes, such as packaging, annotation, vocabulary and designation.Unlike Individuals, Abstract Entitys do not represent a spatio-temporal extent.

Documentation : https://framework.sysfeat.com/pages/3aca52346aa6418d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3aca52346aa6418d where -- ========== Abstract Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.5425a2df6aa225cf public -- First Order Entity
open import SysFEAT.UpperOntology.3aca55ee6aa645c2 public -- Class of Abstract Entity

AbstractEntity : ClassOfAbstractEntity
AbstractEntity = FirstOrderEntity

--  AbstractEntity is subTypeOf FirstOrderEntity
st-3aca52346aa6418d-5425a2df6aa225cf : AbstractEntity ⊏ₑ FirstOrderEntity
st-3aca52346aa6418d-5425a2df6aa225cf = polySubTypeOf-identity

postulate -- AbstractEntity is PowerInstanceOf Class of Abstract Entity
  3aca56256aa6469a : AbstractEntity ∷ₚₑ ClassOfAbstractEntity
postulate -- ClassOfAbstractEntity is ReflexivePowerType 
  593465de6aae0c29 : ClassOfAbstractEntity ⊏ₘₑ AbstractEntity

-- == Relations =======================
