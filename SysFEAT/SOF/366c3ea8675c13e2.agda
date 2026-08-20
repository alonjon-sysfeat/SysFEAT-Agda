{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Appraisal Type: 
An Appraisal Type refers to a kind of Appraisal method and technique used to evaluate the worth, effectiveness, compliance, or quality of enterprise Asset Blocks.Appraisal Types define a set of Appraisal Options which are the possible values that will result from an Appraisal activity.For instance, when making decisions about invesment on an enterprise asset, the possible options can be: eliminate, invest, migrate.Assessment Type and Resolution Type are the two appraisal techniques provided by SysFEAT.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.366c3ea8675c13e2 where -- ========== Appraisal Type

open import Agda.Primitive
open import SysFEAT.SOF.83f8933a67407206 public -- Governance Property Type
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument

AppraisalType : ThirdOrderClass
AppraisalType = SecondOrderClass

--  AppraisalType is subTypeOf GovernancePropertyType
st-83bba07961923fe6 : AppraisalType ⊏ₑ GovernancePropertyType
st-83bba07961923fe6 = polySubTypeOf-identity

--  AppraisalType withAspect GovernanceInstrument
st-6662975468dd6776 : AppraisalType ⊏ₐₑ (GovernanceInstrument (lsuc(lsuc(lzero))))
st-6662975468dd6776 = polySubTypeOf-identity

-- == Relationships =======================
