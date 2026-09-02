{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Intangible Resource Agent: 
An Individual Intangible Resource Agent is a Individual Resource Agent that does not have physical substance.Example:- Individual Software System.- Social groups,
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1bb6eb68cd9da2 where -- ========== Individual Intangible Resource Agent

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.c80afd2f6784305d public -- Intangible Resource Agent

IndividualIntangibleResourceAgent : ClassOfBoundedIndividual
IndividualIntangibleResourceAgent = BoundedIndividual

--  IndividualIntangibleResourceAgent is subTypeOf IndividualResourceAgent
st-3b1bb6fe68cd9deb : IndividualIntangibleResourceAgent ⊏ₑ IndividualResourceAgent
st-3b1bb6fe68cd9deb = polySubTypeOf-identity

-- == Relationships =======================
