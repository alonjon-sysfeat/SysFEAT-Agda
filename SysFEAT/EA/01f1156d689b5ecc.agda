{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Directive: 
A Control Directive is a kind of Policy that provides recommendations on how to comply with Regulation Articles.Once implemented, Control Directives enforces any Regulatory Framework your enterprise has to comply with.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.01f1156d689b5ecc where -- ========== Control Directive

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.4b9477ae68a4926d public -- Control Asset
open import SysFEAT.EA.190c57d568976e60 public -- Regulation Article

ControlDirective : PropertyType
ControlDirective = ClassOfProperty

--  ControlDirective is subTypeOf Policy
st-4906e610635b7a34 : ControlDirective ⊏ₑ Policy
st-4906e610635b7a34 = polySubTypeOf-identity

--  ControlDirective withAspect ControlAsset
st-4b94790868a494c6 : ControlDirective ⊏ₐₑ (ControlAsset (lsuc(lzero)))
st-4b94790868a494c6 = polySubTypeOf-identity

-- == Relationships =======================

{- Fulfilled Regulation: -}
fulfilledRegulation :  Linkage ControlDirective RegulationArticle
fulfilledRegulation = make_subTypeOf "Fulfilled Regulation" "fulfilledRegulation"

