{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Intangible Resource Agent: 
An Intangible Resource Agent is a Resource Agent Type whose instances do not have physical substance.Example:- Software System Category;- Social groups,

Documentation : https://framework.sysfeat.com/pages/c80afd2f6784305d.htm

External references:
  WordNet - Intangible Asset: https://en-word.net/ili/i106769
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80afd2f6784305d where -- ========== Intangible Resource Agent

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

IntangibleResourceAgent : ClassOfClassOfBoundedIndividual
IntangibleResourceAgent = ClassOfBoundedIndividual

--  IntangibleResourceAgent is subTypeOf ResourceAgentType
st-c80afd2f6784305d-e2ef091962147ad7 : IntangibleResourceAgent ⊏ₑ ResourceAgentType
st-c80afd2f6784305d-e2ef091962147ad7 = polySubTypeOf-identity


-- == Relations =======================
