{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Wifi Hotspot: 
A Wifi Hotspot is Network Device that allows multiple devices to connect to a Wi-Fi network.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e1a4fb1b64017ad6 where -- ========== Wifi Hotspot

open import Agda.Primitive
open import SysFEAT.EA.f4be0fba5ee1d935 public -- Network Device

WifiHotspot : ClassOfClassOfBoundedIndividual
WifiHotspot = ClassOfBoundedIndividual

--  WifiHotspot is subTypeOf NetworkDevice
st-e1a4012b64027d18 : WifiHotspot ⊏ₑ NetworkDevice
st-e1a4012b64027d18 = polySubTypeOf-identity

-- == Relationships =======================
