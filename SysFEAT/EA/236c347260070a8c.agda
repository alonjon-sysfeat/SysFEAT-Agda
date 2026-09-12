{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Pain point: 
A painpoint describes the difficulties encountered by a persona when carrying out a step in the client journey.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.236c347260070a8c where -- ========== Pain point

open import Agda.Primitive
open import SysFEAT.SOF.173706265fe3f332 public -- Measurement Instrument
open import SysFEAT.EA.8a5c926e5c0d632c public -- Customer Activity
open import SysFEAT.EA.d170d9925be73b35 public -- Pain Point (Type)

Painpoint : ClassOfBoundedIndividual
Painpoint = BoundedIndividual

--  Painpoint is subTypeOf MeasurementInstrument
st-236c347860070af6 : Painpoint ⊏ₑ MeasurementInstrument
st-236c347860070af6 = polySubTypeOf-identity

-- == Relationships =======================

{- Evaluated Touch Point: -}
evaluatedTouchPoint :  Linkage Painpoint CustomerActivity
evaluatedTouchPoint = make_Relation "Evaluated Touch Point" "evaluatedTouchPoint"

