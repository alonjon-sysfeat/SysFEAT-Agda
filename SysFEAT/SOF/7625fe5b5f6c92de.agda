{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Remediation Plan: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.7625fe5b5f6c92de where -- ========== Remediation Plan

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity

RemediationPlan : ClassOfBoundedIndividual
RemediationPlan = BoundedIndividual

postulate --  RemediationPlan is subTypeOf GovernanceActivity
  st-d7f911165f73d9f6 : RemediationPlan ⊏ₑ GovernanceActivity

-- == Relationships =======================
