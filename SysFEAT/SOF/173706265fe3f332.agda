{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measurement Instrument: 
A Measurement Instrument is a quantified aspect of the assets of the enterprise (Agent Types,  Behavior Types, Information Assets) used by organizations to guide its transformation and assurance Initiatives.

Documentation : https://framework.sysfeat.com/pages/173706265fe3f332.htm

External references:
  WordNet - Measure: https://en-word.net/ili/i35594
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.173706265fe3f332 where -- ========== Measurement Instrument

open import Agda.Primitive
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual

MeasurementInstrument : ClassOfBoundedIndividual
MeasurementInstrument = BoundedIndividual


--  MeasurementInstrument withAspect GovernanceInstrument
st-173706265fe3f332-6662916b68dd5f84 : MeasurementInstrument ⊏ₐₑ (GovernanceInstrument lzero)
st-173706265fe3f332-6662916b68dd5f84 = polySubTypeOf-identity

--  MeasurementInstrument is subTypeOf BoundedIndividual
st-173706265fe3f332-28f07b2354be0d69 : MeasurementInstrument ⊏ₑ BoundedIndividual
st-173706265fe3f332-28f07b2354be0d69 = polySubTypeOf-identity


-- == Relations =======================
