{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resolution Outcome: 
A Resolution Outcome is a possible value of a Resolution Type, that will be selected during a Resolution process.For instance, when making decisions about invesment on an enterprise asset, the possible options are: eliminate, invest, migrate. tolerate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.97e09afa68dd69f1 where -- ========== Resolution Outcome

open import Agda.Primitive
open import SysFEAT.SOF.66628b5668dd5a25 public -- Appraisal Option
open import SysFEAT.SOF.366c4627675c1aad public -- Resolution Type

ResolutionOutcome : PropertyType
ResolutionOutcome = ClassOfProperty

postulate --  ResolutionOutcome is subTypeOf AppraisalOption
  st-e073fecb61d21a06 : ResolutionOutcome ⊏ₑ AppraisalOption

-- == Relationships =======================

{- Resolution Type: -}
resolutionType :  Linkage ResolutionOutcome ResolutionType
resolutionType = make_instanceOf "Resolution Type" "resolutionType"

postulate -- resolutionType is subTypeOf appraisalType
  st-97e09c3d68dd6b51-666294f768dd64bc  : resolutionType   ⊏⋆ᵣ  appraisalType 
