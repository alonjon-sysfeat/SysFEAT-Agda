{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Compliance Risk Type: 
A Compliance Risk Type a kind of Operational Risk Type that involves the potential for legal penalties, financial forfeiture and material loss, due to non-compliance with laws, regulations, or standards.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.582e757066f6a328 where -- ========== Compliance Risk Type

open import Agda.Primitive
open import SysFEAT.EA.0e55230266f12252 public -- Operational Risk Type

ComplianceRiskType : ThirdOrderClass
ComplianceRiskType = SecondOrderClass

postulate --  ComplianceRiskType is subTypeOf OperationalRiskType
  st-8f469fb464b76f55 : ComplianceRiskType ⊏ₑ OperationalRiskType

-- == Relationships =======================
