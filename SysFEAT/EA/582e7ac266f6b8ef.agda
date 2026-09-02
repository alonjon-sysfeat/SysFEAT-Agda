{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Quality Risk Type: 
A Data Quality Risk Type is a Data Risk Type is a 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.582e7ac266f6b8ef where -- ========== Data Quality Risk Type

open import Agda.Primitive
open import SysFEAT.SOF.582e785466f6b36f public -- Data Risk Type

DataQualityRiskType : ThirdOrderClass
DataQualityRiskType = SecondOrderClass

--  DataQualityRiskType is subTypeOf DataRiskType
st-582e7d4566f6c087 : DataQualityRiskType ⊏ₑ DataRiskType
st-582e7d4566f6c087 = polySubTypeOf-identity

-- == Relationships =======================
