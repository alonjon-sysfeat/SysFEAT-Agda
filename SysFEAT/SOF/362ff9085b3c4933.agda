{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Period Type: 
A Period Type that is an arbitrary period of time.Period Type is used to define the period on which Time Events or Event Concepts can occur.Examples:- Year - the set of all years (..., -5000, ... 50, ..., 800, ..., 1000, ..., 1789, ..., 1946, ..., 2050, ...)- 3.345 Nanoseconds- the set of all 3.345 Nanosecond periods.- Quater - the set all all quaters : 1 quater of 1492, 3rd quater of 2056, ....- 7000 Years- the set of all 7000 Year period.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.362ff9085b3c4933 where -- ========== Period Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual

PeriodType : ClassOfClassOfBoundedIndividual
PeriodType = ClassOfBoundedIndividual

postulate --  PeriodType is subTypeOf ClassOfBoundedIndividual
  st-1d51aec46353270d : PeriodType ⊏ₑ ClassOfBoundedIndividual

-- == Relationships =======================
