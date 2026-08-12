{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Risk Type: 
A  Data Risk Type is a Risk Type that refers to the accuracy, consistency, and reliability of data during its entire lifecycle.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.582e785466f6b36f where -- ========== Data Risk Type

open import Agda.Primitive
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type

DataRiskType : ThirdOrderClass
DataRiskType = SecondOrderClass

postulate --  DataRiskType is subTypeOf RiskType
  st-5163d45464b674fa : DataRiskType ⊏ₑ RiskType

-- == Relationships =======================
