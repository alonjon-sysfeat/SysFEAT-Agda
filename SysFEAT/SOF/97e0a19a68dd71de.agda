{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy applicability Status: 
A Policy applicability Status is a Decision Outcome  that can apply to any kind of Functional Asset as the result of a Policy Decision process.There are two possible values of Policy applicability Status:1) Applicable, which means that the Concerned Policy applies to all Functional Assets that are part of the of the Applicability Domain of the Policy Decision.2) Non applicable, which means that the Concerned Policy do not apply to all Functional Assets that are part of the of the Applicability Domain of the Policy Decision.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.97e0a19a68dd71de where -- ========== Policy applicability Status

open import Agda.Primitive
open import SysFEAT.SOF.97e09cde68dd6c0f public -- Decision Outcome
open import SysFEAT.SOF.97e0a09268dd70b6 public -- Policy Decision Type

PolicyapplicabilityStatus : PropertyType
PolicyapplicabilityStatus = ClassOfProperty

postulate --  PolicyapplicabilityStatus is subTypeOf DecisionOutcome
  st-97e0a1a268dd7226 : PolicyapplicabilityStatus ⊏ₑ DecisionOutcome

-- == Relationships =======================

{- Policy Decision Type: -}
policyDecisionType :  Linkage PolicyapplicabilityStatus PolicyDecisionType
policyDecisionType = make_instanceOf "Policy Decision Type" "policyDecisionType"

postulate -- policyDecisionType is subTypeOf decisionType
  st-97e0a1e168dd7342-97e09d2068dd6cd0  : policyDecisionType   ⊏⋆ᵣ  decisionType 
