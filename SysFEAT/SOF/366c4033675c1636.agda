{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assessment Type: 
An Assessment Type refers to a kind of Assessment method and technique used to evaluate the worth, effectiveness, compliance, or quality of enterprise Asset Blocks.Assessment Types define a set of Assessment Values which are the possible values that will result from an Assessment.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.366c4033675c1636 where -- ========== Assessment Type

open import Agda.Primitive
open import SysFEAT.SOF.366c3ea8675c13e2 public -- Appraisal Type

AssessmentType : ThirdOrderClass
AssessmentType = SecondOrderClass

--  AssessmentType is subTypeOf AppraisalType
st-366c4200675c172f : AssessmentType ⊏ₑ AppraisalType
st-366c4200675c172f = polySubTypeOf-identity

-- == Relationships =======================
