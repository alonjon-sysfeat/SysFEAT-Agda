{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assessment Value: 
An Assessment Value is an Appraisal Option associated with an Assessment Type, representing a potential value that can be chosen during an assessment process.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6662956168dd650c where -- ========== Assessment Value

open import Agda.Primitive
open import SysFEAT.SOF.66628b5668dd5a25 public -- Appraisal Option
open import SysFEAT.SOF.366c4033675c1636 public -- Assessment Type

AssessmentValue : PropertyType
AssessmentValue = ClassOfProperty

postulate --  AssessmentValue is subTypeOf AppraisalOption
  st-83bba1556192433e : AssessmentValue ⊏ₑ AppraisalOption

-- == Relationships =======================

{- Assessment Type: -}
assessmentType :  Linkage AssessmentValue AssessmentType
assessmentType = make_instanceOf "Assessment Type" "assessmentType"

postulate -- assessmentType is subTypeOf appraisalType
  st-6662961868dd65f6-666294f768dd64bc  : assessmentType   ⊏⋆ᵣ  appraisalType 
