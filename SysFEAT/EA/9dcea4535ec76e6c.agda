{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Outcome Event: 
A Business Outcome Event is a Business Event that signals the happening of a change in the state of a Business Operating Asset, produced by the Business Behavior of a Business Agent Type, for the benefits of an internal or external consumer (especially Customers).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9dcea4535ec76e6c where -- ========== Business Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.0185cc626221bb37 public -- Business Event
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset

BusinessOutcomeEvent : ClassOfClassOfIndividual
BusinessOutcomeEvent = ClassOfIndividual

postulate --  BusinessOutcomeEvent is subTypeOf BusinessEvent
  st-be94de86655c8306 : BusinessOutcomeEvent ⊏ₑ BusinessEvent

postulate --  BusinessOutcomeEvent is subTypeOf ResourceOutcomeEvent
  st-6a70e46d678799ac : BusinessOutcomeEvent ⊏ₑ ResourceOutcomeEvent

-- == Relationships =======================

{- Business Outcome: 
A Business Outcome is a state of any Business Operating Asset (tangible or intanglible) that is the subject of a business transaction.As such, a Resource Functional Asset is created, enhanced or transformed through the Resource Behavior of a producer Resource Agent Type, resulting in an increase in value (Business Outcome) that benefits (value) to the Business Operating Behavior of a consumer Resource Agent Type.Examples:- A new process (Resource Behavior) that is the result of a refactoring activity done by a consulting organization (producer Agent) for the benefit of a business unit (user Agent).- A new application (Resource Agent Type) that is the result of the development and sales activitiies of a software company (producer Agent) for the benefit of an end user (user Agent).
-}
-- Aggregate Member : Business Outcome
BusinessOutcome : ClassOfClassOfIndividual
BusinessOutcome = ClassOfIndividual

-- Membership relation
membershipOfBusinessOutcome :  Linkage BusinessOutcomeEvent BusinessOutcome
membershipOfBusinessOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOperatingAssetBusinessOutcome :  Linkage BusinessOutcome BusinessOperatingAsset
aggregationOfBusinessOperatingAssetBusinessOutcome = aggregationOfBuildingBlock

{- businessOutcome : derived relation obtained by composing
   membershipOfBusinessOutcome and aggregationOfBusinessOperatingAssetBusinessOutcome
   It directly links an Business Outcome Event to the final aggregated BusinessOperatingAsset
   hiding the reifying BusinessOutcome
-}
businessOutcome : Linkage BusinessOutcomeEvent BusinessOperatingAsset
businessOutcome = membershipOfBusinessOutcome  ∘  aggregationOfBusinessOperatingAssetBusinessOutcome
