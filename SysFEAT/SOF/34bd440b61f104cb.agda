{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Waiver End: 


Documentation : https://framework.sysfeat.com/pages/34bd440b61f104cb.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.34bd440b61f104cb where -- ========== Waiver End

open import Agda.Primitive
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- Temporal Bounding

WaiverEnd : TemporalBoundingType
WaiverEnd = TemporalBounding


--  WaiverEnd is subTypeOf TemporalBounding
st-34bd440b61f104cb-267b6a126675a0b9 : WaiverEnd ⊏ₑ TemporalBounding
st-34bd440b61f104cb-267b6a126675a0b9 = polySubTypeOf-identity


-- == Relations =======================
