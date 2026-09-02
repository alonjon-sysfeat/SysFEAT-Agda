{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Ecosystem: 
A Business Ecosystem is a Business Resource Ecosystem used to describe the operating context in which a Business-Entity (Department Type) exists or lives for a specific purpose. For instance, the Business Ecosystem of a company includes its customers and suppliers.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b705f2661ba04de where -- ========== Business Ecosystem

open import Agda.Primitive
open import SysFEAT.EA.2b6f332061bae622 public -- Business Resource Ecosystem
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type

BusinessEcosystem : ClassOfClassOfBoundedIndividual
BusinessEcosystem = ClassOfBoundedIndividual

--  BusinessEcosystem is subTypeOf BusinessResourceEcosystem
st-2b705f2f61ba0536 : BusinessEcosystem ⊏ₑ BusinessResourceEcosystem
st-2b705f2f61ba0536 = polySubTypeOf-identity

-- == Relationships =======================

{- Business Ecosystem Connection: -}
-- Aggregate Member : Business Ecosystem Connection
BusinessEcosystemConnection : ClassOfClassOfIndividual
BusinessEcosystemConnection = ClassOfIndividual

-- Membership relation
membershipOfBusinessEcosystemConnection :  Linkage BusinessEcosystem BusinessEcosystemConnection
membershipOfBusinessEcosystemConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingConnectionBusinessEcosystemConnection :  Linkage BusinessEcosystemConnection OperatingConnection
aggregationOfOperatingConnectionBusinessEcosystemConnection = aggregationOfBuildingBlock

{- businessEcosystemConnection : derived relation obtained by composing
   membershipOfBusinessEcosystemConnection and aggregationOfOperatingConnectionBusinessEcosystemConnection
   It directly links an Business Ecosystem to the final aggregated OperatingConnection
   hiding the reifying BusinessEcosystemConnection
-}
businessEcosystemConnection : Linkage BusinessEcosystem OperatingConnection
businessEcosystemConnection = membershipOfBusinessEcosystemConnection  ∘  aggregationOfOperatingConnectionBusinessEcosystemConnection

{- Business Ecosystem Part: -}
-- Aggregate Member : Business Ecosystem Part
BusinessEcosystemPart : ClassOfClassOfIndividual
BusinessEcosystemPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessEcosystemPart :  Linkage BusinessEcosystem BusinessEcosystemPart
membershipOfBusinessEcosystemPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeBusinessEcosystemPart :  Linkage BusinessEcosystemPart OrgUnitType
aggregationOfOrgUnitTypeBusinessEcosystemPart = aggregationOfBuildingBlock

{- businessEcosystemPart : derived relation obtained by composing
   membershipOfBusinessEcosystemPart and aggregationOfOrgUnitTypeBusinessEcosystemPart
   It directly links an Business Ecosystem to the final aggregated OrgUnitType
   hiding the reifying BusinessEcosystemPart
-}
businessEcosystemPart : Linkage BusinessEcosystem OrgUnitType
businessEcosystemPart = membershipOfBusinessEcosystemPart  ∘  aggregationOfOrgUnitTypeBusinessEcosystemPart
