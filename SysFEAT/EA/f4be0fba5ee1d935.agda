{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Network Device: 
A Network Device is any piece of physical or virtual hardware that is used to connect Computing Systems (Computer Devices, Computer Servers) and other devices to a Computer Network.Network Devices enable the transmission and exchange of data between devices in the network through Network Interfaces.Examples: Switch, Router.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be0fba5ee1d935 where -- ========== Network Device

open import Agda.Primitive
open import SysFEAT.EA.070b0d5564011dbb public -- Networking System

NetworkDevice : ClassOfClassOfBoundedIndividual
NetworkDevice = ClassOfBoundedIndividual

--  NetworkDevice is subTypeOf NetworkingSystem
st-070b10c964012306 : NetworkDevice ⊏ₑ NetworkingSystem
st-070b10c964012306 = polySubTypeOf-identity

-- == Relationships =======================
