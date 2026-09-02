{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Intangible Resource Agent: 
An Intangible Resource Agent is a Resource Agent Type whose instances do not have physical substance.Example:- Software System Category;- Social groups,
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80afd2f6784305d where -- ========== Intangible Resource Agent

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

IntangibleResourceAgent : ClassOfClassOfBoundedIndividual
IntangibleResourceAgent = ClassOfBoundedIndividual

--  IntangibleResourceAgent is subTypeOf ResourceAgentType
st-340f50d9686211f3 : IntangibleResourceAgent ⊏ₑ ResourceAgentType
st-340f50d9686211f3 = polySubTypeOf-identity

-- == Relationships =======================
