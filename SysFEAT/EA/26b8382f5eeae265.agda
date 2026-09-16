{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Interface: 
A Technology Interface is a Resource Service Interface that describes a typical course of interactions intended to produce Technology Outcome Events, through the involvement of Technology Systems.

Documentation : https://framework.sysfeat.com/pages/26b8382f5eeae265.htm

External references:
  OpenGroup - ArchiMate -Technology-Service: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Technology-Layer.html#sec-Technology-Service
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.26b8382f5eeae265 where -- ========== Technology Interface

open import Agda.Primitive
open import SysFEAT.EA.97f89a8865ae5279 public -- Technology Behavior
open import SysFEAT.EA.6a70c21067876cd8 public -- Resource Service Interface
open import SysFEAT.EA.f4be0a955ee1c4f5 public -- Technology Outcome Event

TechnologyInterface : ClassOfClassOfIndividual
TechnologyInterface = ClassOfIndividual

--  TechnologyInterface is subTypeOf TechnologyBehavior
st-26b8382f5eeae265-97f89a8865ae5279 : TechnologyInterface ⊏ₑ TechnologyBehavior
st-26b8382f5eeae265-97f89a8865ae5279 = polySubTypeOf-identity

--  TechnologyInterface is subTypeOf ResourceServiceInterface
st-26b8382f5eeae265-6a70c21067876cd8 : TechnologyInterface ⊏ₑ ResourceServiceInterface
st-26b8382f5eeae265-6a70c21067876cd8 = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Flow Connection: -}
-- Aggregate Member : Technology Flow Connection
TechnologyFlowConnection : ClassOfClassOfIndividual
TechnologyFlowConnection = ClassOfIndividual

-- Membership relation
membershipOfTechnologyFlowConnection :  Linkage TechnologyInterface TechnologyFlowConnection
membershipOfTechnologyFlowConnection = make_upwardNestingRelation "technologyFlowConnection membership" "nested technologyFlowConnection"

-- Aggregation relation
aggregationOfTechnologyOutcomeEventTechnologyFlowConnection :  Linkage TechnologyFlowConnection TechnologyOutcomeEvent
aggregationOfTechnologyOutcomeEventTechnologyFlowConnection = make_Relation "TechnologyOutcomeEvent aggregation" "aggregated TechnologyOutcomeEvent"

{- technologyFlowConnection : derived relation obtained by composing
   membershipOfTechnologyFlowConnection and aggregationOfTechnologyOutcomeEventTechnologyFlowConnection
   It directly links an Technology Interface to the final aggregated TechnologyOutcomeEvent
   hiding the reifying TechnologyFlowConnection
-}
technologyFlowConnection : Linkage TechnologyInterface TechnologyOutcomeEvent
technologyFlowConnection = membershipOfTechnologyFlowConnection  ∘  aggregationOfTechnologyOutcomeEventTechnologyFlowConnection

postulate -- technologyFlowConnection is subTypeOf resourceFlowConnection
  st-ce82d0ff68106fdf-c561e339680f761e  : technologyFlowConnection   ⊏⋆ᵣ  resourceFlowConnection 

