{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Composite Data Property: 
A Composite Data Property is a Data Property that can be structuraly decomposed.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.5e3290aa69297591 where -- ========== Composite Data Property

open import Agda.Primitive
open import SysFEAT.EA.8f1c991068ca8a23 public -- Data Property

CompositeDataProperty : PropertyType
CompositeDataProperty = ClassOfProperty

--  CompositeDataProperty is subTypeOf DataProperty
st-5e32931f69297b29 : CompositeDataProperty ⊏ₑ DataProperty
st-5e32931f69297b29 = polySubTypeOf-identity

-- == Relationships =======================
