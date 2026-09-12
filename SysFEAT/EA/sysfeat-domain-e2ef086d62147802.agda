{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

SOF - Resource System Operating Pattern (R-SOF): 
The SOF - Resource System Operating Pattern (R-SOF) domain is a conceptualization level that comprises abstract entities that belong to the physical space and comprise Human resources,  Software resources, Hardware resources and natural resources. Unlike Conceptual entities (which are independent of physical implementation), Resource entities represent tangible or operational abstractions. Resource entities constrast with  Conceptual entities, which abstract from any physical implementation.This level is sometimes referred to as the  Organic Level  because it deals with functional, real-world elements. For example:.  Vision  is a Conceptual entity, abstract in nature..  Eye  is a Resource entity, representing its physical realization (e.g., human eyes, batrachian eyes, etc.). However,  Eye  remains an abstract resource since it encompasses multiple concrete implementations.The Resource conceptualization level models how a Resource Agent Type operates/functions within its Resource Operating Ecosystem to produce Resource Outcome Events.It includes Resource Agent Types, Resource Action Processes, Resource Service Interfaces, Resource Rules, Resource Capabilitys, Resource Outcome Events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-e2ef086d62147802 where -- ========== SOF - Resource System Operating Pattern (R-SOF)

open import SysFEAT.SOF.sysfeat-domain-d6cd2c8b5ab98da5 public -- Information Assets
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 public -- Architecture Assets

open import SysFEAT.EA.e2ef095b62147bf9 public -- Resource Action Process
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.EA.7d337d67628134c5 public -- Resource Interaction Process
open import SysFEAT.EA.fe1c24fa6788036e public -- Individual Resource Asset
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.fe1c24e567880326 public -- Individual Resource Process
open import SysFEAT.EA.ffdf64a868608999 public -- Resource Agent Configuration
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact
open import SysFEAT.EA.ffdf61506860875a public -- Human Agent Category
open import SysFEAT.EA.ffdf5e1f68608352 public -- Software System Category
open import SysFEAT.EA.ffdf60af68608674 public -- Hardware System Category
open import SysFEAT.EA.861987db6372446e public -- Natural Resource Category
open import SysFEAT.EA.c80a3bc867858386 public -- Individual Natural Resource
open import SysFEAT.EA.3b1b8cc868cd7e82 public -- Individual Hardware System
open import SysFEAT.EA.3b1b8ceb68cd7ed3 public -- Individual Software System
open import SysFEAT.EA.3b1b91ea68cd8733 public -- Individual Artifact
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- Resource Functional Asset
open import SysFEAT.EA.c80afd2f6784305d public -- Intangible Resource Agent
open import SysFEAT.EA.340f52dc686212f5 public -- Physical Resource Agent
open import SysFEAT.EA.3b1bb56c68cd9bfa public -- Individual Physical Resource Agent
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event
open import SysFEAT.EA.6a70c0c8678769d3 public -- Resource Event
open import SysFEAT.EA.f8e62fc5621fdcf4 public -- Resource Operating Environment
open import SysFEAT.EA.f8e68967621ff519 public -- Resource Operating Environment Scenario
open import SysFEAT.EA.f8e64b51621dd3f3 public -- Resource Operating Ecosystem
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.EA.d9f4dcc5688d5969 public -- Resource Asset
open import SysFEAT.EA.0185cd936221bd72 public -- Resource Behavior
open import SysFEAT.EA.6a70c21067876cd8 public -- Resource Service Interface
