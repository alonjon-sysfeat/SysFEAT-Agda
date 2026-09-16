{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Measure Category: 
A category of measure aming at controlling conformity of asset associated to the Assurance Case.

Documentation : https://framework.sysfeat.com/pages/582e764f66f6a4cc.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.582e764f66f6a4cc where -- ========== Control Measure Category

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block

ControlMeasureCategory : ThirdOrderClass
ControlMeasureCategory = SecondOrderClass

--  ControlMeasureCategory withAspect ModelPropertyBlock
st-582e764f66f6a4cc-0eb97aff6855cd23 : ControlMeasureCategory ⊏ₐₑ (ModelPropertyBlock (lsuc(lsuc(lzero))))
st-582e764f66f6a4cc-0eb97aff6855cd23 = polySubTypeOf-identity


