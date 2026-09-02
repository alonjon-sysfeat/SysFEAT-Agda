{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Management Stage: 
A Management Stage is a past, current or future state of a Management System.Each Management Stage represents a Management Initiative comprising a purposeful set of activities whose primary purpose is focused on achieving a set of clearly defined objectives assigned to Functional Assets managed in the Management System. The set of all Management Stages of an Management System defines its Roadmap.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.05200e1c66474509 where -- ========== Management Stage

open import Agda.Primitive
open import SysFEAT.SOF.e78c5eb0661989f9 public -- Initiative Stage
open import SysFEAT.EA.05201b936647570a public -- Management Initiative

ManagementStage : StateClass
ManagementStage = StateConcept


--  ManagementStage is subTypeOf InitiativeStage
st-05200eb1664745ec : ManagementStage ⊏ₑ InitiativeStage
st-05200eb1664745ec = polySubTypeOf-identity

--  ManagementStage is subTypeOf ManagementInitiative
st-05200def664744e7 : ManagementStage ⊏ₑ ManagementInitiative
st-05200def664744e7 = polySubTypeOf-identity

-- == Relationships =======================
