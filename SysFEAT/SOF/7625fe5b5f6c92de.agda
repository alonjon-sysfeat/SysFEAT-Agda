{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Remediation Plan: 


Documentation : https://framework.sysfeat.com/pages/7625fe5b5f6c92de.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.7625fe5b5f6c92de where -- ========== Remediation Plan

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity

RemediationPlan : ClassOfBoundedIndividual
RemediationPlan = BoundedIndividual


--  RemediationPlan is subTypeOf GovernanceActivity
st-7625fe5b5f6c92de-1737b76a5fe28204 : RemediationPlan ⊏ₑ GovernanceActivity
st-7625fe5b5f6c92de-1737b76a5fe28204 = polySubTypeOf-identity


-- == Relations =======================
