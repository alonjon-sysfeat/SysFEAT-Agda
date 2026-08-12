{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measurement Instrument: 
A Measurement Instrument is a quantified aspect of the assets of the enterprise (Agent Types,  Behavior Types, Information Assets) used by organizations to guide its transformation and assurance Initiatives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.173706265fe3f332 where -- ========== Measurement Instrument

open import Agda.Primitive
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual

MeasurementInstrument : ClassOfBoundedIndividual
MeasurementInstrument = BoundedIndividual

postulate --  MeasurementInstrument withAspect GovernanceInstrument
  st-a66fa9e965a98597 : MeasurementInstrument ⊏ₐₑ (GovernanceInstrument lzero)

postulate --  MeasurementInstrument is subTypeOf BoundedIndividual
  st-366c3d4a675c1326 : MeasurementInstrument ⊏ₑ BoundedIndividual

-- == Relationships =======================
