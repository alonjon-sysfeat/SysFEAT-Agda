{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Equipment: 
A Hardware Equipments are tangible assets (e.g., machinery, tools, IT hardware, vehicles, or production systems) used to execute enterprise operations, deliver services, or produce goods. a Micro Concrete Hardware System.Examples:- Fridge compressor- Car Engine
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9788a1fe661765ee where -- ========== Hardware Equipment

open import Agda.Primitive
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System

HardwareEquipment : ClassOfClassOfBoundedIndividual
HardwareEquipment = ClassOfBoundedIndividual

--  HardwareEquipment is subTypeOf ConcreteHardwareSystem
st-9788a20a66176636 : HardwareEquipment ⊏ₑ ConcreteHardwareSystem
st-9788a20a66176636 = polySubTypeOf-identity

-- == Relationships =======================
