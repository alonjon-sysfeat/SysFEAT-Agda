{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Processing Category: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c195014a5fc19153 where -- ========== Data Processing Category

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block

DataProcessingCategory : ClassOfClassOfBoundedIndividual
DataProcessingCategory = ClassOfBoundedIndividual

--  DataProcessingCategory withAspect ModelPropertyBlock
st-c195014f5fc191bd : DataProcessingCategory ⊏ₐₑ (ModelPropertyBlock (lsuc(lzero)))
st-c195014f5fc191bd = polySubTypeOf-identity


