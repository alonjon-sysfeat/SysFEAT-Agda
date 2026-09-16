{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Outcome Event: 
A Business Outcome Event is a Business Event that signals the happening of a change in the state of a Business Operating Asset, produced by the Business Behavior of a Business Agent Type, for the benefits of an internal or external consumer (especially Customers).

Documentation : https://framework.sysfeat.com/pages/9dcea4535ec76e6c.htm

External references:
  OMG - UAF - Effect: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Effect
  OpenGroup - OAA - Definition - Outcome: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#Outcome
  OpenGroup - IT4IT - Defining Service Reference Architecture: https://publications.opengroup.org/w161
  OMG - UAF - OperationalSignal: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#operationalsignal
  OMG - BACM - Outcome: https://www.omg.org/spec/BACM/1.0/PDF#page=51
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9dcea4535ec76e6c where -- ========== Business Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.0185cc626221bb37 public -- Business Event
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset

BusinessOutcomeEvent : ClassOfClassOfIndividual
BusinessOutcomeEvent = ClassOfIndividual

--  BusinessOutcomeEvent is subTypeOf BusinessEvent
st-9dcea4535ec76e6c-0185cc626221bb37 : BusinessOutcomeEvent ⊏ₑ BusinessEvent
st-9dcea4535ec76e6c-0185cc626221bb37 = polySubTypeOf-identity

--  BusinessOutcomeEvent is subTypeOf ResourceOutcomeEvent
st-9dcea4535ec76e6c-6a70c0b36787698c : BusinessOutcomeEvent ⊏ₑ ResourceOutcomeEvent
st-9dcea4535ec76e6c-6a70c0b36787698c = polySubTypeOf-identity

-- == Relationships =======================

{- Business Outcome: 
A Business Outcome is a state of any Business Operating Asset (tangible or intanglible) that is the subject of a business transaction.As such, a Resource Functional Asset is created, enhanced or transformed through the Resource Behavior of a producer Resource Agent Type, resulting in an increase in value (Business Outcome) that benefits (value) to the Business Operating Behavior of a consumer Resource Agent Type.Examples:- A new process (Resource Behavior) that is the result of a refactoring activity done by a consulting organization (producer Agent) for the benefit of a business unit (user Agent).- A new application (Resource Agent Type) that is the result of the development and sales activitiies of a software company (producer Agent) for the benefit of an end user (user Agent).
-}
-- Aggregate Member : Business Outcome
BusinessOutcome : ClassOfClassOfIndividual
BusinessOutcome = ClassOfIndividual

-- Membership relation
membershipOfBusinessOutcome :  Linkage BusinessOutcomeEvent BusinessOutcome
membershipOfBusinessOutcome = make_upwardNestingRelation "businessOutcome membership" "nested businessOutcome"

-- Aggregation relation
aggregationOfBusinessOperatingAssetBusinessOutcome :  Linkage BusinessOutcome BusinessOperatingAsset
aggregationOfBusinessOperatingAssetBusinessOutcome = make_Relation "BusinessOperatingAsset aggregation" "aggregated BusinessOperatingAsset"

{- businessOutcome : derived relation obtained by composing
   membershipOfBusinessOutcome and aggregationOfBusinessOperatingAssetBusinessOutcome
   It directly links an Business Outcome Event to the final aggregated BusinessOperatingAsset
   hiding the reifying BusinessOutcome
-}
businessOutcome : Linkage BusinessOutcomeEvent BusinessOperatingAsset
businessOutcome = membershipOfBusinessOutcome  ∘  aggregationOfBusinessOperatingAssetBusinessOutcome

postulate -- businessOutcome is subTypeOf resourceOutcome
  st-be94e0c4655c85b4-6a70e2636787968e  : businessOutcome   ⊏⋆ᵣ  resourceOutcome 

