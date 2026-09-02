{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Assessment: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8a9f9fe55ee0a603 where -- ========== Privacy Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.426a57325aeb3d76 public -- Privacy Processing

PrivacyAssessment : ClassOfBoundedIndividual
PrivacyAssessment = BoundedIndividual

--  PrivacyAssessment is subTypeOf Assessment
st-8a9fa84c5ee075b8 : PrivacyAssessment ⊏ₑ Assessment
st-8a9fa84c5ee075b8 = polySubTypeOf-identity

-- == Relationships =======================

{- assessed processing activity: -}
assessedprocessingactivity :  Linkage PrivacyAssessment PrivacyProcessing
assessedprocessingactivity = make_Relation "assessed processing activity" "assessedprocessingactivity"

