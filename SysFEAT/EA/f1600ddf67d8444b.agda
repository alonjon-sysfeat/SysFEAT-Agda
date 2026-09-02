{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Measure: 
A Control Measure is a Resource Operating Asset (agent or behavior) that is taken to prevent, eliminate or reduce the occurrence of a hazard that has been identified in the context of an Assurance Case.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f1600ddf67d8444b where -- ========== Control Measure

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.EA.4b9477ae68a4926d public -- Control Asset
open import SysFEAT.EA.582e764f66f6a4cc public -- Control Measure Category
open import SysFEAT.EA.01f1156d689b5ecc public -- Control Directive

ControlMeasure : ClassOfClassOfBoundedIndividual
ControlMeasure = ClassOfBoundedIndividual

--  ControlMeasure is subTypeOf ResourceOperatingAsset
st-f1604eb267d85165 : ControlMeasure ⊏ₑ ResourceOperatingAsset
st-f1604eb267d85165 = polySubTypeOf-identity

--  ControlMeasure withAspect ControlAsset
st-4b94798168a49542 : ControlMeasure ⊏ₐₑ (ControlAsset (lsuc(lzero)))
st-4b94798168a49542 = polySubTypeOf-identity

-- == Relationships =======================

{- Control Measure Category: -}
controlMeasureCategory :  Linkage ControlMeasure ControlMeasureCategory
controlMeasureCategory = make_instanceOf "Control Measure Category" "controlMeasureCategory"


{- Enforced Control Directive: -}
enforcedControlDirective :  Linkage ControlMeasure ControlDirective
enforcedControlDirective = make_subTypeOf "Enforced Control Directive" "enforcedControlDirective"

