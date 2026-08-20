{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent State Type: 
An Agent State Type is a temporal slice type of an Agent Type related to its lifefcyle.Examples:. The lifecycle phases of a person, such as childhood, adulthood, eldery stage.. The lifecyle phases of a hospital such as construction phase, operation and maintenance phase, renovation and expansion phase, decommissioning phase.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c80ac8f367841131 where -- ========== Agent State Type

open import Agda.Primitive
open import SysFEAT.SOF.e13ce269678f11ed public -- Asset State Type
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

AgentStateType : ClassOfClassOfBoundedIndividual
AgentStateType = ClassOfBoundedIndividual

--  AgentStateType is subTypeOf AssetStateType
st-c80ac938678411b1 : AgentStateType ⊏ₑ AssetStateType
st-c80ac938678411b1 = polySubTypeOf-identity

--  AgentStateType is subTypeOf AgentType
st-c80ac90c67841179 : AgentStateType ⊏ₑ AgentType
st-c80ac90c67841179 = polySubTypeOf-identity

-- == Relationships =======================
