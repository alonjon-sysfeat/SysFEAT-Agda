{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Benefit: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.236c33fb60070962 where -- ========== Benefit

open import Agda.Primitive
open import SysFEAT.SOF.173706265fe3f332 public -- Measurement Instrument
open import SysFEAT.EA.8a5c926e5c0d632c public -- Customer Activity
open import SysFEAT.EA.d1701e155be84834 public -- Benefit (Type)

Benefit : ClassOfBoundedIndividual
Benefit = BoundedIndividual

--  Benefit is subTypeOf MeasurementInstrument
st-236c3400600709cc : Benefit ⊏ₑ MeasurementInstrument
st-236c3400600709cc = polySubTypeOf-identity

-- == Relationships =======================

{- Evaluated Touch Point: -}
evaluatedTouchPoint :  Linkage Benefit CustomerActivity
evaluatedTouchPoint = make_Relation "Evaluated Touch Point" "evaluatedTouchPoint"

