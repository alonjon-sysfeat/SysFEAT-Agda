{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resolution Type: 
A Resolution Type is an Appraisal Type that refers to a kind of Resolution used to guide what can or cannot be done regarding a specific Asset Block.Resolution Types define a set of Resolution Options which are the possible values that will result from a resolution process.For instance, when making decisions about invesment on an enterprise asset, the possible options can be: eliminate, invest, migrate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.366c4627675c1aad where -- ========== Resolution Type

open import Agda.Primitive
open import SysFEAT.SOF.366c3ea8675c13e2 public -- Appraisal Type

ResolutionType : ThirdOrderClass
ResolutionType = SecondOrderClass

postulate --  ResolutionType is subTypeOf AppraisalType
  st-e073015661d31bcf : ResolutionType ⊏ₑ AppraisalType

-- == Relationships =======================
