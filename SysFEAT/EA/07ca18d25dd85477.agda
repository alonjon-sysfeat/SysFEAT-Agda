{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assurance System: 
An Assurance System is a Management System aimed at ensuring enterprise compliance, resilience, and risk mitigation against both internal and external Policys and threats. It encompasses processes, Directives and technologies that work in concert to validate enterprise adherence to policy requirements, industry standards, and internal policies while simultaneously bolstering the enterprises ability to withstand and adapt to various challenges and disruptions.ensuring enterprise compliance and resilience against internal and external constraints:a. Regulation constraints: they defined what is allowed and not allowed by the law (See Regulation Article).b. Internal policies and rules constraints: they defined what is allowed and not allowed by the enterprise (see Business Policy).c. Operational constraints: they maintain operational capacities of the company (maintain ability to produce, maintain quality, ensure product development , ability to hire, to train, etc, see Business Rule).d. Architectural constraints: they guide design decisions and shape the overall structure of a system (see Architecture principle).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.07ca18d25dd85477 where -- ========== Assurance System

open import Agda.Primitive
open import SysFEAT.EA.29df3f4060084c07 public -- Management System
open import SysFEAT.SOF.299e895568488eb3 public -- Assurance Initiative
open import SysFEAT.EA.07ca19e95dd854e9 public -- Assurance Case
open import SysFEAT.EA.7d3786ff5fd052e7 public -- Assurance Instrument
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.SOF.190c7429689664b5 public -- Policy

AssuranceSystem : ClassOfBoundedIndividual
AssuranceSystem = BoundedIndividual

--  AssuranceSystem is subTypeOf ManagementSystem
st-2b583c505eebd40e : AssuranceSystem ⊏ₑ ManagementSystem
st-2b583c505eebd40e = polySubTypeOf-identity

--  AssuranceSystem is subTypeOf AssuranceInitiative
st-a632aefb685f85e8 : AssuranceSystem ⊏ₑ AssuranceInitiative
st-a632aefb685f85e8 = polySubTypeOf-identity

-- == Relationships =======================

{- Owned Assurance Case: 
The set of Assurance Cases that a Assurance System is responsible for.
-}
ownedAssuranceCase :  Linkage AssuranceSystem AssuranceCase
ownedAssuranceCase = make_nestingRelation "Owned Assurance Case" "ownedAssuranceCase"

postulate -- ownedAssuranceCase is subTypeOf packagedAssuranceInstrument
  st-0b950f8868e54f9f-561f36fc68d68770  : ownedAssuranceCase   ⊏⋆ᵣ  packagedAssuranceInstrument 

{- Packaged Assurance Instrument: -}
packagedAssuranceInstrument :  Linkage AssuranceSystem AssuranceInstrument
packagedAssuranceInstrument = make_nestingRelation "Packaged Assurance Instrument" "packagedAssuranceInstrument"

postulate -- packagedAssuranceInstrument is subTypeOf packagedInitiativeResource
  st-561f36fc68d68770-01ce058868597974  : packagedAssuranceInstrument   ⊏⋆ᵣ  packagedInitiativeResource  {lzero}

{- Enforced Policy Framework: 
The set of Policy Frameworks that an Assurance System is responsible for enforcing and verifying compliance against.
-}
enforcedPolicyFramework :  Linkage AssuranceSystem PolicyFramework
enforcedPolicyFramework = make_Relation "Enforced Policy Framework" "enforcedPolicyFramework"


{- Policy Item in Scope: -}
-- Aggregate Member : Policy Item in Scope
PolicyIteminScope : ClassOfClassOfIndividual
PolicyIteminScope = ClassOfIndividual

-- Membership relation
membershipOfPolicyIteminScope :  Linkage AssuranceSystem PolicyIteminScope
membershipOfPolicyIteminScope = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPolicyPolicyIteminScope :  Linkage PolicyIteminScope Policy
aggregationOfPolicyPolicyIteminScope = aggregationOfBuildingBlock

{- policyIteminScope : derived relation obtained by composing
   membershipOfPolicyIteminScope and aggregationOfPolicyPolicyIteminScope
   It directly links an Assurance System to the final aggregated Policy
   hiding the reifying PolicyIteminScope
-}
policyIteminScope : Linkage AssuranceSystem Policy
policyIteminScope = membershipOfPolicyIteminScope  ∘  aggregationOfPolicyPolicyIteminScope
