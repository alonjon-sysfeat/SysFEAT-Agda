{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Vendor: 
Legal Entity who provides and maintains resources used in the enterprise operating system.

Documentation : https://framework.sysfeat.com/pages/8d8d242467a32a6f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8d8d242467a32a6f where -- ========== Vendor

open import Agda.Primitive
open import SysFEAT.EA.e78cee446618815a public -- Legal Entity

Vendor : StateClass
Vendor = StateConcept


--  Vendor is subTypeOf LegalEntity
st-8d8d242467a32a6f-e78cee446618815a : Vendor ⊏ₑ LegalEntity
st-8d8d242467a32a6f-e78cee446618815a = polySubTypeOf-identity


-- == Relations =======================
