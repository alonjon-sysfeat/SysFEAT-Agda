{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Governance Block: 
Governance Resource uses in the context of Data Governance.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.b90ac213600e39bb where -- ========== Data Governance Block

open import Agda.Primitive
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument

DataGovernanceBlock : ClassOfBoundedIndividual
DataGovernanceBlock = BoundedIndividual

--  DataGovernanceBlock withAspect GovernanceInstrument
st-b90ac251600e3a34 : DataGovernanceBlock ⊏ₐₑ (GovernanceInstrument lzero)
st-b90ac251600e3a34 = polySubTypeOf-identity

-- == Relationships =======================
