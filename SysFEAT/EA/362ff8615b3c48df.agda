{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Period: 
A Period that is an arbitrary period of time.Examples:- 20 Minutes - the set of all 20 minute periods- 3.345 Nanoseconds- the set of all 3.345 Nanosecond periods.- Quater - the set all all quaters : 1 quater of 1492, 3rd quater of 2056, ....- 7000 Years- the set of all 7000 Year period.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362ff8615b3c48df where -- ========== Period

open import Agda.Primitive
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset
open import SysFEAT.SOF.362ff9085b3c4933 public -- Period Type

Period : ClassOfBoundedIndividual
Period = BoundedIndividual

postulate --  Period is subTypeOf IndividualAsset
  st-1d51ade76353249c : Period ⊏ₑ IndividualAsset

-- == Relationships =======================
