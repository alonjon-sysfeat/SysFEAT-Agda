{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Decision: 
A Decision is a time bound Resolution, agreed upon by Stakeholders, to state what shall or shall not be done regarding a specific Functional Asset.Architecturally significant decisions that are been made in the organization typically includes:a) Product selectionsb) Justification for major architectural features of projectsc) Standards deviationsd) Standards lifecycle changese) Change Request evaluations and approvalsf) Re-use assessments
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d7f9fcc95f720ee0 where -- ========== Decision

open import Agda.Primitive
open import SysFEAT.SOF.e073f9c161d2104a public -- Resolution
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.97e09cde68dd6c0f public -- Decision Outcome

Decision : ClassOfBoundedIndividual
Decision = BoundedIndividual

postulate --  Decision is subTypeOf Resolution
  st-9afad5635f76d966 : Decision ⊏ₑ Resolution

-- == Relationships =======================

{- Decision Subject: -}
decisionSubject : ∀ {u} →  Linkage Decision (AssetBlock u)
decisionSubject = make_Relation "Decision Subject" "decisionSubject"

postulate -- decisionSubject is subTypeOf concernedAsset
  st-6bf18905685999a3-0f642afd6859a59f  : decisionSubject  {lzero}  ⊏⋆ᵣ  concernedAsset  {lzero}

{- Selected Decision Option: -}
selectedDecisionOption :  Linkage Decision DecisionOutcome
selectedDecisionOption = make_instanceOf "Selected Decision Option" "selectedDecisionOption"

postulate -- selectedDecisionOption is subTypeOf selectedResolutionOption
  st-97e09d5368dd6d39-97e09b4468dd6aca  : selectedDecisionOption   ⊏⋆ᵣ  selectedResolutionOption 
