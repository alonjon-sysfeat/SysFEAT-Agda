{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assurance Instrument: 
An Assurance Instrument is a resource or course of actions used by an Assurance System to achieve its objectives.For instance:Actions plans are course of actions aimed at solving incidents.Data Controls are mechanisms used to ensure data quality and data integrityPrivacy Representatives are used to identify national entities in charge of privacy.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d3786ff5fd052e7 where -- ========== Assurance Instrument

open import Agda.Primitive
open import SysFEAT.SOF.01ce05606859794a public -- Initiative Instrument

AssuranceInstrument : ClassOfBoundedIndividual
AssuranceInstrument = BoundedIndividual

--  AssuranceInstrument withAspect InitiativeInstrument
st-7d3787535fd053cd : AssuranceInstrument ⊏ₐₑ (InitiativeInstrument lzero)
st-7d3787535fd053cd = polySubTypeOf-identity

-- == Relationships =======================
