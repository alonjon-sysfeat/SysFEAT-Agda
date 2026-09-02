{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Switch: 
A Switch is a Network Device used to connect multiple devices within a Computer Network, enabling them to communicate with each other.A Switch operates at the data link layer (Layer 2) of the OSI model, and it uses MAC (Media Access Control) addresses to forward data between Networking Systems.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e1a4f43e64017742 where -- ========== Switch

open import Agda.Primitive
open import SysFEAT.EA.f4be0fba5ee1d935 public -- Network Device

Switch : ClassOfClassOfBoundedIndividual
Switch = ClassOfBoundedIndividual

--  Switch is subTypeOf NetworkDevice
st-e1a4f45f640177b1 : Switch ⊏ₑ NetworkDevice
st-e1a4f45f640177b1 = polySubTypeOf-identity

-- == Relationships =======================
