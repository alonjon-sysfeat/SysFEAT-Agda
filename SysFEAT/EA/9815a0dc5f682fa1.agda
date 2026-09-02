{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Control: 
A Data Control is about tracking the quality of information as defined by Data Quality Policy(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9815a0dc5f682fa1 where -- ========== Data Control

open import Agda.Primitive
open import SysFEAT.EA.44226d6561819b50 public -- Data Assurance Instrument
open import SysFEAT.EA.98159f6b5f682d1e public -- Data Quality Policy
open import SysFEAT.EA.72fe99d65e98598e public -- Data Quality Measure

DataControl : ClassOfClassOfBoundedIndividual
DataControl = ClassOfBoundedIndividual

--  DataControl is subTypeOf DataAssuranceInstrument
st-fe63247161817738 : DataControl ⊏⋆ₑ DataAssuranceInstrument
st-fe63247161817738 = polySubTypeOf-identity

-- == Relationships =======================

{- Controled Data Policy: -}
controledDataPolicy :  Linkage DataControl DataQualityPolicy
controledDataPolicy = make_classOfHolonymy "Controled Data Policy" "controledDataPolicy"


{- Implemented Measure: -}
implementedMeasure :  Linkage DataControl DataQualityMeasure
implementedMeasure = make_classOfHolonymy "Implemented Measure" "implementedMeasure"

