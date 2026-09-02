{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Ecosystem: 
An Resource Operating Ecosystem is an operating context in which a Resource Agent Type exists or lives for a specific purpose.For instance, the operating context of an enterprise includes its Business Partners (customers and suppliers).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e64b51621dd3f3 where -- ========== Resource Operating Ecosystem

open import Agda.Primitive
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

ResourceOperatingEcosystem : ClassOfClassOfBoundedIndividual
ResourceOperatingEcosystem = ClassOfBoundedIndividual

-- == Relationships =======================

{- Enterprise Ecosystem Connection: -}
-- Aggregate Member : Enterprise Ecosystem Connection
EnterpriseEcosystemConnection : ClassOfClassOfIndividual
EnterpriseEcosystemConnection = ClassOfIndividual

-- Membership relation
membershipOfEnterpriseEcosystemConnection :  Linkage ResourceOperatingEcosystem EnterpriseEcosystemConnection
membershipOfEnterpriseEcosystemConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingConnectionEnterpriseEcosystemConnection :  Linkage EnterpriseEcosystemConnection OperatingConnection
aggregationOfOperatingConnectionEnterpriseEcosystemConnection = aggregationOfBuildingBlock

{- enterpriseEcosystemConnection : derived relation obtained by composing
   membershipOfEnterpriseEcosystemConnection and aggregationOfOperatingConnectionEnterpriseEcosystemConnection
   It directly links an Resource Operating Ecosystem to the final aggregated OperatingConnection
   hiding the reifying EnterpriseEcosystemConnection
-}
enterpriseEcosystemConnection : Linkage ResourceOperatingEcosystem OperatingConnection
enterpriseEcosystemConnection = membershipOfEnterpriseEcosystemConnection  ∘  aggregationOfOperatingConnectionEnterpriseEcosystemConnection

{- Enterprise Ecosystem Part: -}
-- Aggregate Member : Enterprise Ecosystem Part
EnterpriseEcosystemPart : ClassOfClassOfIndividual
EnterpriseEcosystemPart = ClassOfIndividual

-- Membership relation
membershipOfEnterpriseEcosystemPart :  Linkage ResourceOperatingEcosystem EnterpriseEcosystemPart
membershipOfEnterpriseEcosystemPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeEnterpriseEcosystemPart :  Linkage EnterpriseEcosystemPart ResourceAgentType
aggregationOfResourceAgentTypeEnterpriseEcosystemPart = aggregationOfBuildingBlock

{- enterpriseEcosystemPart : derived relation obtained by composing
   membershipOfEnterpriseEcosystemPart and aggregationOfResourceAgentTypeEnterpriseEcosystemPart
   It directly links an Resource Operating Ecosystem to the final aggregated ResourceAgentType
   hiding the reifying EnterpriseEcosystemPart
-}
enterpriseEcosystemPart : Linkage ResourceOperatingEcosystem ResourceAgentType
enterpriseEcosystemPart = membershipOfEnterpriseEcosystemPart  ∘  aggregationOfResourceAgentTypeEnterpriseEcosystemPart
