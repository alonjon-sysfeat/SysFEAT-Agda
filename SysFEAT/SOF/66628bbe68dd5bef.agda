{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Property: 
A Governance Property is a Class of Property used to measure Asset Blocks during governance activities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.66628bbe68dd5bef where -- ========== Governance Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Class of Property
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.SOF.83f8933a67407206 public -- Governance Property Type

GovernanceProperty : PropertyType
GovernanceProperty = ClassOfProperty

postulate --  GovernanceProperty is subTypeOf ClassOfProperty
  st-83f88e3867406bce : GovernanceProperty ⊏ₑ ClassOfProperty

postulate --  GovernanceProperty withAspect GovernanceInstrument
  st-83f88e5f67406c0f : GovernanceProperty ⊏ₐₑ (GovernanceInstrument (lsuc(lzero)))

-- == Relationships =======================

{- Governance Property Type: -}
governancePropertyType :  Linkage GovernanceProperty GovernancePropertyType
governancePropertyType = make_instanceOf "Governance Property Type" "governancePropertyType"

postulate -- governancePropertyType is subTypeOf propertyClassification
  st-666293d768dd6238-1976247d68925c3e  : governancePropertyType   ⊏⋆ᵣ  propertyClassification 
