{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Risk Type: 
An Operating Risk Type is a kind of Operational Risk Type that refers to the potential for loss resulting from inadequate or failed internal processes, people, and systems, or from external events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f1606adf67d861a5 where -- ========== Operating Risk Type

open import Agda.Primitive
open import SysFEAT.EA.0e55230266f12252 public -- Operational Risk Type

OperatingRiskType : ThirdOrderClass
OperatingRiskType = SecondOrderClass

--  OperatingRiskType is subTypeOf OperationalRiskType
st-f1606b0367d861fc : OperatingRiskType ⊏ₑ OperationalRiskType
st-f1606b0367d861fc = polySubTypeOf-identity

-- == Relationships =======================
