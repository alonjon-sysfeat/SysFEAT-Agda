{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Decision Outcome: 
A Decision Outcome is a possible value of a Decision Type, that will be selected during a decision-making process.For instance, when making decisions about invesment on an enterprise asset, the possible options are: eliminate, invest, migrate, tolerate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.97e09cde68dd6c0f where -- ========== Decision Outcome

open import Agda.Primitive
open import SysFEAT.SOF.97e09afa68dd69f1 public -- Resolution Outcome
open import SysFEAT.SOF.366c47e1675c1c07 public -- Decision Type

DecisionOutcome : PropertyType
DecisionOutcome = ClassOfProperty

--  DecisionOutcome is subTypeOf ResolutionOutcome
st-83bb9fa061923c3f : DecisionOutcome ⊏ₑ ResolutionOutcome
st-83bb9fa061923c3f = polySubTypeOf-identity

-- == Relationships =======================

{- Decision Type: -}
decisionType :  Linkage DecisionOutcome DecisionType
decisionType = make_instanceOf "Decision Type" "decisionType"

postulate -- decisionType is subTypeOf resolutionType
  st-97e09d2068dd6cd0-97e09c3d68dd6b51  : decisionType   ⊏⋆ᵣ  resolutionType 
