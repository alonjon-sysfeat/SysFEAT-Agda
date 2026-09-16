{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Compliance Assessment: 


Documentation : https://framework.sysfeat.com/pages/f160292167d84a60.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f160292167d84a60 where -- ========== Compliance Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.07ca19e95dd854e9 public -- Assurance Case

ComplianceAssessment : ClassOfBoundedIndividual
ComplianceAssessment = BoundedIndividual

--  ComplianceAssessment is subTypeOf Assessment
st-f160292167d84a60-3b539cbb551e4c2a : ComplianceAssessment ⊏ₑ Assessment
st-f160292167d84a60-3b539cbb551e4c2a = polySubTypeOf-identity

-- == Relationships =======================

{- Assurance Case: -}
assuranceCase :  Linkage ComplianceAssessment AssuranceCase
assuranceCase = make_instanceOf "Assurance Case" "Assurance Case"

