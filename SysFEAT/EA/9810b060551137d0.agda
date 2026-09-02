{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Domain: 
An Operating Domain is a Macro functional division of labor within an enterprise, acting as a Conceptual Agent.It embodies a collection of interrelated  Business Functions which collaboratively provide one or more Business Capability(ies).Operating Domains serve as the highest hierarchical grouping of Business Functions within the enterprises Conceptual Environment.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9810b060551137d0 where -- ========== Operating Domain

open import Agda.Primitive
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent
open import SysFEAT.EA.7c4094d2552717db public -- Business Function

OperatingDomain : ClassOfClassOfBoundedIndividual
OperatingDomain = ClassOfBoundedIndividual

--  OperatingDomain is subTypeOf ConceptualAgent
st-50d3515a5f8745c4 : OperatingDomain ⊏ₑ ConceptualAgent
st-50d3515a5f8745c4 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Domain: 
Composition of a sub Business Function Architecture in a parent Business Function Architecture .
-}
specializedBusinessDomain :  Linkage OperatingDomain OperatingDomain
specializedBusinessDomain = make_subTypeOf "Specialized Business Domain" "specializedBusinessDomain"

postulate -- specializedBusinessDomain is subTypeOf specializedAgent
  st-325a37b366f349dd-2b5b440b66ed56d4  : specializedBusinessDomain   ⊏⋆ᵣ  specializedAgent 

{- sub-business function: 
A sub-business function represents the role of a business function as part of a parent Operating Domain.
-}
-- Aggregate Member : sub-business function
subbusinessfunction : ClassOfClassOfIndividual
subbusinessfunction = ClassOfIndividual

-- Membership relation
membershipOfsubbusinessfunction :  Linkage OperatingDomain subbusinessfunction
membershipOfsubbusinessfunction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessFunctionsubbusinessfunction :  Linkage subbusinessfunction BusinessFunction
aggregationOfBusinessFunctionsubbusinessfunction = aggregationOfBuildingBlock

{- subbusinessfunction : derived relation obtained by composing
   membershipOfsubbusinessfunction and aggregationOfBusinessFunctionsubbusinessfunction
   It directly links an Operating Domain to the final aggregated BusinessFunction
   hiding the reifying subbusinessfunction
-}
subbusinessfunction : Linkage OperatingDomain BusinessFunction
subbusinessfunction = membershipOfsubbusinessfunction  ∘  aggregationOfBusinessFunctionsubbusinessfunction

{- Sub Activity Domain: 
Usage of a Business Functional Area which is internal to the considered environment.
-}
-- Aggregate Member : Sub Activity Domain
SubActivityDomain : ClassOfClassOfIndividual
SubActivityDomain = ClassOfIndividual

-- Membership relation
membershipOfSubActivityDomain :  Linkage OperatingDomain SubActivityDomain
membershipOfSubActivityDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingDomainSubActivityDomain :  Linkage SubActivityDomain OperatingDomain
aggregationOfOperatingDomainSubActivityDomain = aggregationOfBuildingBlock

{- subActivityDomain : derived relation obtained by composing
   membershipOfSubActivityDomain and aggregationOfOperatingDomainSubActivityDomain
   It directly links an Operating Domain to the final aggregated OperatingDomain
   hiding the reifying SubActivityDomain
-}
subActivityDomain : Linkage OperatingDomain OperatingDomain
subActivityDomain = membershipOfSubActivityDomain  ∘  aggregationOfOperatingDomainSubActivityDomain
