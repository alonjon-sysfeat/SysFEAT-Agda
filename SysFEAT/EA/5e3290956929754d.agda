{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Simple Data Property: 
A Simple Data Property is a Data Property that is a leaf Data Property.

Documentation : https://framework.sysfeat.com/pages/5e3290956929754d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.5e3290956929754d where -- ========== Simple Data Property

open import Agda.Primitive
open import SysFEAT.EA.8f1c991068ca8a23 public -- Data Property

SimpleDataProperty : PropertyType
SimpleDataProperty = ClassOfProperty

--  SimpleDataProperty is subTypeOf DataProperty
st-5e3290956929754d-8f1c991068ca8a23 : SimpleDataProperty ⊏ₑ DataProperty
st-5e3290956929754d-8f1c991068ca8a23 = polySubTypeOf-identity

-- == Relationships =======================
