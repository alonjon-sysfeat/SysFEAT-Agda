{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Waiver End: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.34bd440b61f104cb where -- ========== Waiver End

open import Agda.Primitive
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- Temporal Bounding

WaiverEnd : ClassOfIndividual
WaiverEnd = Individual

postulate --  WaiverEnd is subTypeOf TemporalBounding
  st-fee31b43695d36e6 : WaiverEnd ⊏ₑ TemporalBounding

-- == Relationships =======================
