{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Process: 
Individual Resource Process is the root instance of processes performed by Individual Resource Agents.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c24e567880326 where -- ========== Individual Resource Process

open import Agda.Primitive
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior
open import SysFEAT.SOF.a273b4f465b7a81f public -- Individual Process
open import SysFEAT.EA.e2ef095b62147bf9 public -- Resource Action Process

IndividualResourceProcess : ClassOfBoundedIndividual
IndividualResourceProcess = BoundedIndividual

--  IndividualResourceProcess is subTypeOf IndividualResourceBehavior
st-fe1c27cb6788081c : IndividualResourceProcess ⊏ₑ IndividualResourceBehavior
st-fe1c27cb6788081c = polySubTypeOf-identity

--  IndividualResourceProcess is subTypeOf IndividualProcess
st-fe1c258d6788052e : IndividualResourceProcess ⊏ₑ IndividualProcess
st-fe1c258d6788052e = polySubTypeOf-identity

-- == Relationships =======================

{- Resource Process Type: -}
resourceProcessType :  Linkage IndividualResourceProcess ResourceActionProcess
resourceProcessType = make_instanceOf "Resource Process Type" "resourceProcessType"

