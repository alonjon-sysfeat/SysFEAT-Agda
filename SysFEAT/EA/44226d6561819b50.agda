{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Assurance Instrument: 
A Data Assurance Instrument is a resource or course of actions used by an Data Catalog to achieve its objectives.For instance:Actions plans are course of actions aimed at solving Data breaches.Data Controls are mechanisms used to ensure data quality and data integrityData Processors are used to processings involved in Data Lineages.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.44226d6561819b50 where -- ========== Data Assurance Instrument

open import Agda.Primitive
open import SysFEAT.EA.7d3786ff5fd052e7 public -- Assurance Instrument

DataAssuranceInstrument : ClassOfBoundedIndividual
DataAssuranceInstrument = BoundedIndividual

--  DataAssuranceInstrument is subTypeOf AssuranceInstrument
st-44226d9a61819c30 : DataAssuranceInstrument ⊏ₑ AssuranceInstrument
st-44226d9a61819c30 = polySubTypeOf-identity

-- == Relationships =======================
