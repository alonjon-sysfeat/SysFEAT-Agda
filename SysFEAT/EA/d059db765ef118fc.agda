{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Risk Assessment: 
A Operational Risk Assessment is an assessment carried out over a determined time period. When an assessment session is published, an assessment questionnaire containing questions is sent to targeted assessors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d059db765ef118fc where -- ========== Operational Risk Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.f1606a8267d86149 public -- Operational Assurance Case

OperationalRiskAssessment : ClassOfBoundedIndividual
OperationalRiskAssessment = BoundedIndividual

--  OperationalRiskAssessment is subTypeOf Assessment
st-442546586182bb36 : OperationalRiskAssessment ⊏ₑ Assessment
st-442546586182bb36 = polySubTypeOf-identity

-- == Relationships =======================

{- Assessed Risk: -}
assessedRisk :  Linkage OperationalRiskAssessment OperationalAssuranceCase
assessedRisk = make_Relation "Assessed Risk" "assessedRisk"

