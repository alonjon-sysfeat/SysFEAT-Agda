{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Legal Entity: 
A Legal Entity is a Macro Organization that is a lawful or legally standing association, corporation, partnership, proprietorship, trust, or individual that has the legal capacity to: enter into agreements or contracts; assume obligations; incur and pay debts; sue and be sued in its own right; and to be accountable for illegal activities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e78cee446618815a where -- ========== Legal Entity

open import Agda.Primitive
open import SysFEAT.EA.910196ca550a2ec2 public -- Organization
open import SysFEAT.EA.c0a3c7c666417665 public -- Legal Entity Type

LegalEntity : ClassOfBoundedIndividual
LegalEntity = BoundedIndividual

--  LegalEntity is subTypeOf Organization
st-e78cee4a661881a3 : LegalEntity ⊏ₑ Organization
st-e78cee4a661881a3 = polySubTypeOf-identity

-- == Relationships =======================
