{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Decision Outcome: 
An Architecture Decision Outcome is a Decision Outcome  that can apply to any kind of Functional Asset as the result of an Architecture Decision process.Example:An architecture decision regarding invesments on an enterprise asset can have the possible Architecture Decision Outcome: eliminate, invest, migrate, tolerate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.97e09d7e68dd6d87 where -- ========== Architecture Decision Outcome

open import Agda.Primitive
open import SysFEAT.SOF.97e09cde68dd6c0f public -- Decision Outcome
open import SysFEAT.SOF.366c4dbc675c2776 public -- Architecture Decision Type

ArchitectureDecisionOutcome : PropertyType
ArchitectureDecisionOutcome = ClassOfProperty

postulate --  ArchitectureDecisionOutcome is subTypeOf DecisionOutcome
  st-366c4cff675c24ca : ArchitectureDecisionOutcome ⊏ₑ DecisionOutcome

-- == Relationships =======================

{- Architecture Decision Type: -}
architectureDecisionType :  Linkage ArchitectureDecisionOutcome ArchitectureDecisionType
architectureDecisionType = make_instanceOf "Architecture Decision Type" "architectureDecisionType"

postulate -- architectureDecisionType is subTypeOf decisionType
  st-97e0a05268dd7053-97e09d2068dd6cd0  : architectureDecisionType   ⊏⋆ᵣ  decisionType 
