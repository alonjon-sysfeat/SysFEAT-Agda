{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Property Type: 
A Governance Property Type is a classification of Governance Propertys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.83f8933a67407206 where -- ========== Governance Property Type

open import Agda.Primitive
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type

GovernancePropertyType : ThirdOrderClass
GovernancePropertyType = SecondOrderClass

postulate --  GovernancePropertyType withAspect GovernanceInstrument
  st-366c4927675c1dc9 : GovernancePropertyType ⊏ₐₑ (GovernanceInstrument (lsuc(lsuc(lzero))))

postulate --  GovernancePropertyType is subTypeOf PropertyType
  st-83f8934e6740725b : GovernancePropertyType ⊏ₑ PropertyType

-- == Relationships =======================
