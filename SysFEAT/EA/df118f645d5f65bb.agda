{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computer Server: 
A Computer Server is a Computing Device which provides processing, storage, and network connectivity services to other Computing Devices on a Computer Network.As a Computing System, it can host data and run Application code..
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.df118f645d5f65bb where -- ========== Computer Server

open import Agda.Primitive
open import SysFEAT.EA.02f51209641c7ea4 public -- Computing Device

ComputerServer : ClassOfClassOfBoundedIndividual
ComputerServer = ClassOfBoundedIndividual

--  ComputerServer is subTypeOf ComputingDevice
st-f4be0f745ee1d8ab : ComputerServer ⊏ₑ ComputingDevice
st-f4be0f745ee1d8ab = polySubTypeOf-identity

-- == Relationships =======================
