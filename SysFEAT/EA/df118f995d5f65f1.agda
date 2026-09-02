{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computer Device: 
A Computer Device is a Computing Device which provides services directly to the end-user. Computer Devices can host data stores and run Application code.Examples: workstation, laptop computer, smartphone.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.df118f995d5f65f1 where -- ========== Computer Device

open import Agda.Primitive
open import SysFEAT.EA.02f51209641c7ea4 public -- Computing Device

ComputerDevice : ClassOfClassOfBoundedIndividual
ComputerDevice = ClassOfBoundedIndividual

--  ComputerDevice is subTypeOf ComputingDevice
st-f4be0f055ee1d7b9 : ComputerDevice ⊏ₑ ComputingDevice
st-f4be0f055ee1d7b9 = polySubTypeOf-identity

-- == Relationships =======================
