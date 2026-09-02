{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Network Interface: 
A Network Interface is a set of rules and conventions that govern the communication between devices on a Computer Network.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d160042562e08353 where -- ========== Network Interface

open import Agda.Primitive
open import SysFEAT.EA.26b8382f5eeae265 public -- Technology Interface

NetworkInterface : ClassOfClassOfIndividual
NetworkInterface = ClassOfIndividual

--  NetworkInterface is subTypeOf TechnologyInterface
st-d160042c62e08396 : NetworkInterface ⊏ₑ TechnologyInterface
st-d160042c62e08396 = polySubTypeOf-identity

-- == Relationships =======================
