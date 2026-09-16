{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology: 
A Software Technology is an elementary Software Technology System  used as an enabler by Software Modules.Examples : - Application server, - Message server, - Storage, - Business information sharing, - Operating systems, - Navigators, etc

Documentation : https://framework.sysfeat.com/pages/d5e6ddd05c46547c.htm

External references:
  OpenGroup - TOGAF - Definition - Technology Component: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_81
  OpenGroup - TOGAF - Enterprise Metamodel - Technology Component: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6ddd05c46547c where -- ========== Software Technology

open import Agda.Primitive
open import SysFEAT.EA.0463ea9a63fd8b6c public -- Software Technology System

SOftwareTechnology : ClassOfClassOfBoundedIndividual
SOftwareTechnology = ClassOfBoundedIndividual

--  SOftwareTechnology is subTypeOf SOftwareTechnologySystem
st-d5e6ddd05c46547c-0463ea9a63fd8b6c : SOftwareTechnology ⊏ₑ SOftwareTechnologySystem
st-d5e6ddd05c46547c-0463ea9a63fd8b6c = polySubTypeOf-identity

-- == Relationships =======================
