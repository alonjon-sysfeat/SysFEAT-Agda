{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Department: 
A Department is a Mezzo Organization. It is a an administrative unit in government or business.Examples:- Sales department of  Aircraft corporation  in France;- Finance department of  Oakland digital hospital ;- Logistics Department of  APPCo retail inc .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e78ce83e66187ff5 where -- ========== Department

open import Agda.Primitive
open import SysFEAT.EA.910196ca550a2ec2 public -- Organization
open import SysFEAT.EA.7c408aa155270eea public -- Department Type

Department : ClassOfBoundedIndividual
Department = BoundedIndividual

--  Department is subTypeOf Organization
st-e78ce8466618803e : Department ⊏ₑ Organization
st-e78ce8466618803e = polySubTypeOf-identity

-- == Relationships =======================
