{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Software System: 
A Business Software System is a Business System used by Business Operations, that represents all granularities of software - ranging from MicroServices to enterprise wide Application Systems - used by Business Operations.All Business Software Systems share the following characteristics:1) They provide Functionalitys.2) They expose APIs (Application Interfaces) through which they deliver Information Outcome Events.3) They handle datastores defined by Physical Data Domains.4) They perform and participate to System Processes.

Documentation : https://framework.sysfeat.com/pages/d6cd02865ab966e8.htm

External references:
  OpenGroup - ArchiMate - Application Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-application-Active-Structure-Elements
  OpenGroup - ArchiMate - Layer - Application Layer: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html
  OMG - UAF - Software: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Software
  UCF Glossary - Software Asset: https://compliancedictionary.com/term/1588
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d6cd02865ab966e8 where -- ========== Business Software System

open import Agda.Primitive
open import SysFEAT.EA.278675d65b252f4d public -- Business System
open import SysFEAT.EA.ffdf5e1f68608352 public -- Software System Category
open import SysFEAT.EA.2558338d5c6d1d1b public -- Logical Software System
open import SysFEAT.EA.9dce9f8d5ec76311 public -- Application Interface
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain
open import SysFEAT.EA.25c09cb461e2efd3 public -- Software System Scenario

BusinessSOftwareSystem : ClassOfClassOfBoundedIndividual
BusinessSOftwareSystem = ClassOfBoundedIndividual

--  BusinessSOftwareSystem is subTypeOf BusinessSystem
st-d6cd02865ab966e8-278675d65b252f4d : BusinessSOftwareSystem ⊏ₑ BusinessSystem
st-d6cd02865ab966e8-278675d65b252f4d = polySubTypeOf-identity

--  BusinessSOftwareSystem is subTypeOf SOftwareSystemCategory
st-d6cd02865ab966e8-ffdf5e1f68608352 : BusinessSOftwareSystem ⊏ₑ SOftwareSystemCategory
st-d6cd02865ab966e8-ffdf5e1f68608352 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Software System: -}
specializedSOftwareSystem :  Linkage BusinessSOftwareSystem BusinessSOftwareSystem
specializedSOftwareSystem = make_subTypeOf "Specialized Software System" "Specialized Software System"

postulate -- specializedSOftwareSystem is subTypeOf specializedBusinessSystem
  st-325a376566f342e8-325a375d66f34096  : specializedSOftwareSystem   ⊏⋆ᵣ  specializedBusinessSystem 

{- Realized Logical System: -}
realizedLogicalSystem :  Linkage BusinessSOftwareSystem LogicalSOftwareSystem
realizedLogicalSystem = make_subTypeOf "Realized Logical System" "Realized Logical System"


{- Software Connection: 
An Interaction represents a contract between entities in a specific context inside or outside a company. These entities can be organizational units, activities, or processes.The content of this contract is described in a protocol.
-}
-- Aggregate Member : Software Connection
SOftwareConnection : ClassOfClassOfIndividual
SOftwareConnection = ClassOfIndividual

-- Membership relation
membershipOfSOftwareConnection :  Linkage BusinessSOftwareSystem SOftwareConnection
membershipOfSOftwareConnection = make_upwardNestingRelation "sOftwareConnection membership" "nested sOftwareConnection"

-- Aggregation relation
aggregationOfApplicationInterfaceSOftwareConnection :  Linkage SOftwareConnection ApplicationInterface
aggregationOfApplicationInterfaceSOftwareConnection = make_Relation "ApplicationInterface aggregation" "aggregated ApplicationInterface"

{- sOftwareConnection : derived relation obtained by composing
   membershipOfSOftwareConnection and aggregationOfApplicationInterfaceSOftwareConnection
   It directly links an Business Software System to the final aggregated ApplicationInterface
   hiding the reifying SOftwareConnection
-}
sOftwareConnection : Linkage BusinessSOftwareSystem ApplicationInterface
sOftwareConnection = membershipOfSOftwareConnection  ∘  aggregationOfApplicationInterfaceSOftwareConnection

postulate -- sOftwareConnection is subTypeOf businessConnection
  st-9dcea1235ec76646-1f942587622764f8  : sOftwareConnection   ⊏⋆ᵣ  businessConnection 


{- Software Part: 
A Software Part represents the role that a Business Software System plays in the context of a parent Business Software System.  
-}
-- Aggregate Member : Software Part
SOftwarePart : ClassOfClassOfIndividual
SOftwarePart = ClassOfIndividual

-- Membership relation
membershipOfSOftwarePart :  Linkage BusinessSOftwareSystem SOftwarePart
membershipOfSOftwarePart = make_upwardNestingRelation "sOftwarePart membership" "nested sOftwarePart"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemSOftwarePart :  Linkage SOftwarePart BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemSOftwarePart = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- sOftwarePart : derived relation obtained by composing
   membershipOfSOftwarePart and aggregationOfBusinessSOftwareSystemSOftwarePart
   It directly links an Business Software System to the final aggregated BusinessSOftwareSystem
   hiding the reifying SOftwarePart
-}
sOftwarePart : Linkage BusinessSOftwareSystem BusinessSOftwareSystem
sOftwarePart = membershipOfSOftwarePart  ∘  aggregationOfBusinessSOftwareSystemSOftwarePart

postulate -- sOftwarePart is subTypeOf resourceAgentPart
  st-173f4d015eb8c686-24034f6d5fc79c3f  : sOftwarePart   ⊏⋆ᵣ  resourceAgentPart 


{- Physical data store: -}
-- Aggregate Member : Physical data store
Physicaldatastore : ClassOfClassOfIndividual
Physicaldatastore = ClassOfIndividual

-- Membership relation
membershipOfPhysicaldatastore :  Linkage BusinessSOftwareSystem Physicaldatastore
membershipOfPhysicaldatastore = make_upwardNestingRelation "physicaldatastore membership" "nested physicaldatastore"

-- Aggregation relation
aggregationOfPhysicalDataDomainPhysicaldatastore :  Linkage Physicaldatastore PhysicalDataDomain
aggregationOfPhysicalDataDomainPhysicaldatastore = make_Relation "PhysicalDataDomain aggregation" "aggregated PhysicalDataDomain"

{- physicaldatastore : derived relation obtained by composing
   membershipOfPhysicaldatastore and aggregationOfPhysicalDataDomainPhysicaldatastore
   It directly links an Business Software System to the final aggregated PhysicalDataDomain
   hiding the reifying Physicaldatastore
-}
physicaldatastore : Linkage BusinessSOftwareSystem PhysicalDataDomain
physicaldatastore = membershipOfPhysicaldatastore  ∘  aggregationOfPhysicalDataDomainPhysicaldatastore

postulate -- physicaldatastore is subTypeOf resourceAgentStore
  st-7b8780615eb81b83-ca9df5bb5fcf5a75  : physicaldatastore   ⊏⋆ᵣ  resourceAgentStore 


{- Performed Software System Scenario: -}
-- Aggregate Member : Performed Software System Scenario
PerformedSOftwareSystemScenario : ClassOfClassOfIndividual
PerformedSOftwareSystemScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedSOftwareSystemScenario :  Linkage BusinessSOftwareSystem PerformedSOftwareSystemScenario
membershipOfPerformedSOftwareSystemScenario = make_upwardNestingRelation "performedSOftwareSystemScenario membership" "nested performedSOftwareSystemScenario"

-- Aggregation relation
aggregationOfSOftwareSystemScenarioPerformedSOftwareSystemScenario :  Linkage PerformedSOftwareSystemScenario SOftwareSystemScenario
aggregationOfSOftwareSystemScenarioPerformedSOftwareSystemScenario = make_Relation "SOftwareSystemScenario aggregation" "aggregated SOftwareSystemScenario"

{- performedSOftwareSystemScenario : derived relation obtained by composing
   membershipOfPerformedSOftwareSystemScenario and aggregationOfSOftwareSystemScenarioPerformedSOftwareSystemScenario
   It directly links an Business Software System to the final aggregated SOftwareSystemScenario
   hiding the reifying PerformedSOftwareSystemScenario
-}
performedSOftwareSystemScenario : Linkage BusinessSOftwareSystem SOftwareSystemScenario
performedSOftwareSystemScenario = membershipOfPerformedSOftwareSystemScenario  ∘  aggregationOfSOftwareSystemScenarioPerformedSOftwareSystemScenario

postulate -- performedSOftwareSystemScenario is subTypeOf performedBusinessSystemScenario
  st-25c1b2d361e22368-24034ee25fc79b20  : performedSOftwareSystemScenario   ⊏⋆ᵣ  performedBusinessSystemScenario 

