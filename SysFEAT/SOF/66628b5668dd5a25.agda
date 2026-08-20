{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Appraisal Option: 
An Appraisal Option is a Property associated with an Appraisal Type representing a potential appraisal value that can be chosen during an appraisal process.For instance, when making decisions about invesment on an enterprise asset, the possible options can be: eliminate, invest, migrate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.66628b5668dd5a25 where -- ========== Appraisal Option

open import Agda.Primitive
open import SysFEAT.SOF.66628bbe68dd5bef public -- Governance Property
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.SOF.366c3ea8675c13e2 public -- Appraisal Type

AppraisalOption : PropertyType
AppraisalOption = ClassOfProperty

--  AppraisalOption is subTypeOf GovernanceProperty
st-97e09a9b68dd67e8 : AppraisalOption ⊏ₑ GovernanceProperty
st-97e09a9b68dd67e8 = polySubTypeOf-identity

--  AppraisalOption withAspect GovernanceInstrument
st-6662974f68dd674d : AppraisalOption ⊏ₐₑ (GovernanceInstrument (lsuc(lzero)))
st-6662974f68dd674d = polySubTypeOf-identity

-- == Relationships =======================

{- Appraisal Type: -}
appraisalType :  Linkage AppraisalOption AppraisalType
appraisalType = make_instanceOf "Appraisal Type" "appraisalType"

postulate -- appraisalType is subTypeOf governancePropertyType
  st-666294f768dd64bc-666293d768dd6238  : appraisalType   ⊏⋆ᵣ  governancePropertyType 
