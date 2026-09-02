{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology: 
A Software Technology is an elementary Software Technology System  used as an enabler by Software Modules.Examples : - Application server, - Message server, - Storage, - Business information sharing, - Operating systems, - Navigators, etc
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6ddd05c46547c where -- ========== Software Technology

open import Agda.Primitive
open import SysFEAT.EA.0463ea9a63fd8b6c public -- Software Technology System

SOftwareTechnology : ClassOfClassOfBoundedIndividual
SOftwareTechnology = ClassOfBoundedIndividual

--  SOftwareTechnology is subTypeOf SOftwareTechnologySystem
st-d5e6dde85c46549c : SOftwareTechnology ⊏ₑ SOftwareTechnologySystem
st-d5e6dde85c46549c = polySubTypeOf-identity

-- == Relationships =======================
