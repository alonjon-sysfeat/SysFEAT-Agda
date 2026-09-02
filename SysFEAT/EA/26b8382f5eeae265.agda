{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Interface: 
A Technology Interface is a Resource Service Interface that describes a typical course of interactions intended to produce Technology Outcome Events, through the involvement of Technology Systems.
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
st-97889ea0661761e9 : TechnologyInterface ⊏ₑ TechnologyBehavior
st-97889ea0661761e9 = polySubTypeOf-identity

--  TechnologyInterface is subTypeOf ResourceServiceInterface
st-6a70d23c678780e6 : TechnologyInterface ⊏ₑ ResourceServiceInterface
st-6a70d23c678780e6 = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Flow Connection: -}
-- Aggregate Member : Technology Flow Connection
TechnologyFlowConnection : ClassOfClassOfIndividual
TechnologyFlowConnection = ClassOfIndividual

-- Membership relation
membershipOfTechnologyFlowConnection :  Linkage TechnologyInterface TechnologyFlowConnection
membershipOfTechnologyFlowConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyOutcomeEventTechnologyFlowConnection :  Linkage TechnologyFlowConnection TechnologyOutcomeEvent
aggregationOfTechnologyOutcomeEventTechnologyFlowConnection = aggregationOfBuildingBlock

{- technologyFlowConnection : derived relation obtained by composing
   membershipOfTechnologyFlowConnection and aggregationOfTechnologyOutcomeEventTechnologyFlowConnection
   It directly links an Technology Interface to the final aggregated TechnologyOutcomeEvent
   hiding the reifying TechnologyFlowConnection
-}
technologyFlowConnection : Linkage TechnologyInterface TechnologyOutcomeEvent
technologyFlowConnection = membershipOfTechnologyFlowConnection  ∘  aggregationOfTechnologyOutcomeEventTechnologyFlowConnection
