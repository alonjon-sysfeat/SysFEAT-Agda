{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Principle Category: 
An Architecture Principle Category defines a classification of related Architecture principles.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952eab2a67285b02 where -- ========== Architecture Principle Category

open import Agda.Primitive
open import SysFEAT.EA.952eaada67285ac3 public -- Policy Framework Category

ArchitecturePrincipleCategory : ThirdOrderClass
ArchitecturePrincipleCategory = SecondOrderClass

--  ArchitecturePrincipleCategory is subTypeOf PolicyFrameworkCategory
st-af6622fc6307d904 : ArchitecturePrincipleCategory ⊏ₑ PolicyFrameworkCategory
st-af6622fc6307d904 = polySubTypeOf-identity

-- == Relationships =======================
