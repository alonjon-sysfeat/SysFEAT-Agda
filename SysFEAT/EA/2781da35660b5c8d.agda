{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operations Process: 
An Operations Process is a Mezzo Business Process performed by Department Types of the enterprise. It is usually under the control of a higher Department Type.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2781da35660b5c8d where -- ========== Operations Process

open import Agda.Primitive
open import SysFEAT.EA.57dfc52d550932ef public -- Business Process

OperationsProcess : ClassOfClassOfBoundedIndividual
OperationsProcess = ClassOfBoundedIndividual

--  OperationsProcess is subTypeOf BusinessProcess
st-2781da3c660b5cd7 : OperationsProcess ⊏ₑ BusinessProcess
st-2781da3c660b5cd7 = polySubTypeOf-identity

-- == Relationships =======================
