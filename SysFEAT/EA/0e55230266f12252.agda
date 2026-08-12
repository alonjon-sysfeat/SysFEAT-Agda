{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Risk Type: 
An Operational Risk Type is a kind of Risk Type that refers to the potential for loss due to the enterprises inadequate functioning.An Operational Risk Type is either Compliance Risk Type a or an Operating Risk Type.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0e55230266f12252 where -- ========== Operational Risk Type

open import Agda.Primitive
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type

OperationalRiskType : ThirdOrderClass
OperationalRiskType = SecondOrderClass

postulate --  OperationalRiskType is subTypeOf RiskType
  st-f4be399f5ee1d91b : OperationalRiskType ⊏ₑ RiskType

-- == Relationships =======================
