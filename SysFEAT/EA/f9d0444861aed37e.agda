{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Firewall: 
A Firewall is a network security device that monitors and controls incoming and outgoing network traffic based on predetermined security rules. Its primary function is to prevent unauthorized access to or from a private network by blocking or allowing network traffic.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f9d0444861aed37e where -- ========== Firewall

open import Agda.Primitive
open import SysFEAT.EA.f4be0fba5ee1d935 public -- Network Device

Firewall : ClassOfClassOfBoundedIndividual
Firewall = ClassOfBoundedIndividual

--  Firewall is subTypeOf NetworkDevice
st-f9d0445261aed3d6 : Firewall ⊏ₑ NetworkDevice
st-f9d0445261aed3d6 = polySubTypeOf-identity

-- == Relationships =======================
