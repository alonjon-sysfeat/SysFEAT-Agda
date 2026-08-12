{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Decision: 
A Policy Decision is a Decision that defines the applicability status of a Policy to a set of Functional Assets.Example: A Policy Decision on the applicability of the RGPD regulation to specific enterprise data assets can have the result: Applicable or Non applicable.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.732799d364364423 where -- ========== Policy Decision

open import Agda.Primitive
open import SysFEAT.SOF.d7f9fcc95f720ee0 public -- Decision
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.SOF.97e0a19a68dd71de public -- Policy applicability Status

PolicyDecision : ClassOfBoundedIndividual
PolicyDecision = BoundedIndividual

postulate --  PolicyDecision is subTypeOf Decision
  st-732799e06436446c : PolicyDecision ⊏ₑ Decision

-- == Relationships =======================

{- Applicability Domain: 
The set of Functional Assets which are subject of the Policy Decision.
-}
applicabilityDomain :  Linkage PolicyDecision FunctionalAsset
applicabilityDomain = make_Relation "Applicability Domain" "applicabilityDomain"

postulate -- applicabilityDomain is subTypeOf concernedAsset
  st-6bf187b168599781-0f642afd6859a59f  : applicabilityDomain   ⊏⋆ᵣ  concernedAsset  {lzero}

{- Concerned Policy: 
The Policy which applicability is the subject of the Policy Decision.
-}
concernedPolicy :  Linkage PolicyDecision Policy
concernedPolicy = make_Relation "Concerned Policy" "concernedPolicy"

postulate -- concernedPolicy is subTypeOf decisionSubject
  st-9397cbcf687793de-6bf18905685999a3  : concernedPolicy   ⊏⋆ᵣ  decisionSubject  {lzero}

{- Selected Policy Option: -}
selectedPolicyOption :  Linkage PolicyDecision PolicyapplicabilityStatus
selectedPolicyOption = make_instanceOf "Selected Policy Option" "selectedPolicyOption"

postulate -- selectedPolicyOption is subTypeOf selectedDecisionOption
  st-97e0a1b668dd7256-97e09d5368dd6d39  : selectedPolicyOption   ⊏⋆ᵣ  selectedDecisionOption 
