{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Decision: 
An Architecture Decision is a Decision that can apply to any kind of Asset Block.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.366c4d5c675c2559 where -- ========== Architecture Decision

open import Agda.Primitive
open import SysFEAT.SOF.d7f9fcc95f720ee0 public -- Decision
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.97e09d7e68dd6d87 public -- Architecture Decision Outcome

ArchitectureDecision : ClassOfBoundedIndividual
ArchitectureDecision = BoundedIndividual

--  ArchitectureDecision is subTypeOf Decision
st-366c4d64675c25a1 : ArchitectureDecision ⊏ₑ Decision
st-366c4d64675c25a1 = polySubTypeOf-identity

-- == Relationships =======================

{- Architecture Subject: -}
architectureSubject :  Linkage ArchitectureDecision FunctionalAsset
architectureSubject = make_Relation "Architecture Subject" "architectureSubject"

postulate -- architectureSubject is subTypeOf decisionSubject
  st-97e0a13168dd7141-6bf18905685999a3  : architectureSubject   ⊏⋆ᵣ  decisionSubject  {lzero}

{- Selected Architecture Option: -}
selectedArchitectureOption :  Linkage ArchitectureDecision ArchitectureDecisionOutcome
selectedArchitectureOption = make_instanceOf "Selected Architecture Option" "selectedArchitectureOption"

postulate -- selectedArchitectureOption is subTypeOf selectedDecisionOption
  st-97e09e9e68dd6e8c-97e09d5368dd6d39  : selectedArchitectureOption   ⊏⋆ᵣ  selectedDecisionOption 
