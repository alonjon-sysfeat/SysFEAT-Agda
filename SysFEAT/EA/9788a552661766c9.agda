{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Configuration: 
A Hardware Configuration is a Mezzo Concrete Hardware System that is an assembly of Hardware Equipments.Examples:- Connected Drone with Online Payment App.- 3D printer.- Automated Guided Vehicles (AGVs)- Connected fridge providing an ordering Functionality and of course a freezing Hardware Capability.- Production equipment in an assembly line (metal forging machine)- Car
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9788a552661766c9 where -- ========== Hardware Configuration

open import Agda.Primitive
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System

HardwareConfiguration : ClassOfClassOfBoundedIndividual
HardwareConfiguration = ClassOfBoundedIndividual

--  HardwareConfiguration is subTypeOf ConcreteHardwareSystem
st-9788a55c66176711 : HardwareConfiguration ⊏ₑ ConcreteHardwareSystem
st-9788a55c66176711 = polySubTypeOf-identity

-- == Relationships =======================
