{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Pre-Assessment: 
This will help you determine your program or activitys potential privacy impacts and give you a sense of the risk level. The more privacy risk associated with your program or activity, the more you will need to analyze and mitigate the risk.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3d90ce8f5ff8e067 where -- ========== Privacy Pre-Assessment

open import Agda.Primitive
open import SysFEAT.EA.8a9f9fe55ee0a603 public -- Privacy Assessment

PrivacyPreAssessment : ClassOfBoundedIndividual
PrivacyPreAssessment = BoundedIndividual

--  PrivacyPreAssessment is subTypeOf PrivacyAssessment
st-3d9071095ffce3d3 : PrivacyPreAssessment ⊏ₑ PrivacyAssessment
st-3d9071095ffce3d3 = polySubTypeOf-identity

-- == Relationships =======================
