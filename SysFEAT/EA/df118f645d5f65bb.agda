{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computer Server: 
A Computer Server is a Computing Device which provides processing, storage, and network connectivity services to other Computing Devices on a Computer Network.As a Computing System, it can host data and run Application code..

Documentation : https://framework.sysfeat.com/pages/df118f645d5f65bb.htm

External references:
  UCF Glossary - Server: https://compliancedictionary.com/term/1610
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.df118f645d5f65bb where -- ========== Computer Server

open import Agda.Primitive
open import SysFEAT.EA.02f51209641c7ea4 public -- Computing Device

ComputerServer : ClassOfClassOfBoundedIndividual
ComputerServer = ClassOfBoundedIndividual


--  ComputerServer is subTypeOf ComputingDevice
st-df118f645d5f65bb-02f51209641c7ea4 : ComputerServer ⊏ₑ ComputingDevice
st-df118f645d5f65bb-02f51209641c7ea4 = polySubTypeOf-identity


-- == Relations =======================
