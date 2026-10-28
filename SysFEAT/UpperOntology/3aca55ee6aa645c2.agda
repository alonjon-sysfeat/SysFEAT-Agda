{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Abstract Entity: 
Class of Abstract Entity is the powertype of Abstract Entity.In other words, Abstract Entity is the base type, while Class of Abstract Entity is the type whose instances are subtypes of that base type.Example of instance of :Class of Abstract Entity.  Term 

Documentation : https://framework.sysfeat.com/pages/3aca55ee6aa645c2.htm

External references:
  WordNet - Abstract Entity: https://en-word.net/ili/i35547
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3aca55ee6aa645c2 where -- ========== ClassOfAbstractEntity

open import Agda.Primitive
open import SysFEAT.UpperOntology.c463c6106aa23c35 public -- FirstOrderClass
open import SysFEAT.UpperOntology.3aca564b6aa646ce public -- AbstractEntityMetaClass

ClassOfAbstractEntity : AbstractEntityMetaClass
ClassOfAbstractEntity = FirstOrderClass

--  ClassOfAbstractEntity is subTypeOf FirstOrderClass
st-3aca55ee6aa645c2-c463c6106aa23c35 : ClassOfAbstractEntity ⊏ₑ FirstOrderClass
st-3aca55ee6aa645c2-c463c6106aa23c35 = polySubTypeOf-identity

postulate -- ClassOfAbstractEntity is PowerInstanceOf Abstract Entity MetaClass
  pi-3aca57526aa64d07 : ClassOfAbstractEntity ∷ₚₑ AbstractEntityMetaClass
postulate -- AbstractEntityMetaClass is ReflexivePowerType 
  593465d26aae0bfd : AbstractEntityMetaClass ⊏ₘₑ ClassOfAbstractEntity

-- == Relations =======================
