{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Risk Type: 
A Privacy Risk Type is a Data Risk Type that refers to the potential for harm that could occur to Information Assets due to the loss, exposure, or misuse of personal or sensitive data.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.582e783366f6b210 where -- ========== Privacy Risk Type

open import Agda.Primitive
open import SysFEAT.SOF.582e785466f6b36f public -- Data Risk Type

PrivacyRiskType : ThirdOrderClass
PrivacyRiskType = SecondOrderClass

postulate --  PrivacyRiskType is subTypeOf DataRiskType
  st-582e83e966f6dd05 : PrivacyRiskType ⊏ₑ DataRiskType

-- == Relationships =======================
