{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Directive: 
A Control Directive is a kind of Policy that provides recommendations on how to comply with Regulation Articles.Once implemented, Control Directives enforces any Regulatory Framework your enterprise has to comply with.

Documentation : https://framework.sysfeat.com/pages/01f1156d689b5ecc.htm

External references:
  UCF - What are Common Controls: https://www.unifiedcompliance.com/education/common-control/
  GRCschema.org - Control: https://grcschema.org/Thing/Control
  UCF Glossary - Common Control: https://compliancedictionary.com/term/7990
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.01f1156d689b5ecc where -- ========== Control Directive

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.4b9477ae68a4926d public -- Control Asset
open import SysFEAT.EA.190c57d568976e60 public -- Regulation Article

ControlDirective : PropertyType
ControlDirective = Property

--  ControlDirective is subTypeOf Policy
st-01f1156d689b5ecc-190c7429689664b5 : ControlDirective ⊏ₑ Policy
st-01f1156d689b5ecc-190c7429689664b5 = polySubTypeOf-identity

--  ControlDirective withAspect ControlAsset
st-01f1156d689b5ecc-4b9477ae68a4926d : ControlDirective ⊏ₐₑ (ControlAsset (lsuc(lzero)))
st-01f1156d689b5ecc-4b9477ae68a4926d = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Regulation: -}
fulfilledRegulation :  Linkage ControlDirective RegulationArticle
fulfilledRegulation = make_subTypeOf "Fulfilled Regulation" "Fulfilled Regulation"

