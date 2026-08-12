{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assessment Process: 
An Assessment Process is an Governance Activity carried out over a determined time period. When an assessment session is published, an assessment questionnaire containing questions is sent to targeted assessors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.37b7a5ab602606df where -- ========== Assessment Process

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity

AssessmentProcess : ClassOfBoundedIndividual
AssessmentProcess = BoundedIndividual

postulate --  AssessmentProcess is subTypeOf GovernanceActivity
  st-37b7a5c86026076c : AssessmentProcess ⊏ₑ GovernanceActivity

-- == Relationships =======================
