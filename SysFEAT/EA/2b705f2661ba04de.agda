{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Ecosystem: 
A Business Ecosystem is a Business Resource Ecosystem used to describe the operating context in which a Business-Entity (Department Type) exists or lives for a specific purpose. For instance, the Business Ecosystem of a company includes its customers and suppliers.

Documentation : https://framework.sysfeat.com/pages/2b705f2661ba04de.htm

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
st-2b705f2661ba04de-2b6f332061bae622 : BusinessEcosystem ⊏ₑ BusinessResourceEcosystem
st-2b705f2661ba04de-2b6f332061bae622 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Business Ecosystem Connection: -}
-- Aggregate Member : Business Ecosystem Connection
BusinessEcosystemConnection : ClassOfClassOfIndividual
BusinessEcosystemConnection = ClassOfIndividual


--  BusinessEcosystemConnection is subTypeOf BusinessEcosystemConnection
st-a813ce0063567e9b-f8e7db56621f0cef : BusinessEcosystemConnection ⊏ₑ BusinessEcosystemConnection
st-a813ce0063567e9b-f8e7db56621f0cef = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessEcosystemConnection :  Linkage BusinessEcosystem BusinessEcosystemConnection
membershipOfBusinessEcosystemConnection = make_upwardNestingRelation "businessEcosystemConnection membership" "nested businessEcosystemConnection"

-- Aggregation relation
aggregationOfOperatingConnectionBusinessEcosystemConnection :  Linkage BusinessEcosystemConnection OperatingConnection
aggregationOfOperatingConnectionBusinessEcosystemConnection = make_Relation "OperatingConnection aggregation" "aggregated OperatingConnection"

{- businessEcosystemConnection : derived relation obtained by composing
   membershipOfBusinessEcosystemConnection and aggregationOfOperatingConnectionBusinessEcosystemConnection
   It directly links an Business Ecosystem to the final aggregated OperatingConnection
   hiding the reifying BusinessEcosystemConnection
-}
businessEcosystemConnection : Linkage BusinessEcosystem OperatingConnection
businessEcosystemConnection = membershipOfBusinessEcosystemConnection  ∘  aggregationOfOperatingConnectionBusinessEcosystemConnection



-- -------------------------------------------------------------------------------------------- 
{- Business Ecosystem Part: -}
-- Aggregate Member : Business Ecosystem Part
BusinessEcosystemPart : ClassOfClassOfBoundedIndividual
BusinessEcosystemPart = ClassOfBoundedIndividual



--  BusinessEcosystemPart is subTypeOf ResourceEcosystemPart
st-a813cb556356781f-95129626620b544c : BusinessEcosystemPart ⊏ₑ ResourceEcosystemPart
st-a813cb556356781f-95129626620b544c = polySubTypeOf-identity

--  BusinessEcosystemPart is subTypeOf OrgUnitType
st-a813cb556356781f-076d15425a5e158c : BusinessEcosystemPart ⊏ₑ OrgUnitType
st-a813cb556356781f-076d15425a5e158c = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessEcosystemPart :  Linkage BusinessEcosystem BusinessEcosystemPart
membershipOfBusinessEcosystemPart = make_upwardNestingRelation "businessEcosystemPart membership" "nested businessEcosystemPart"

-- Aggregation relation
aggregationOfOrgUnitTypeBusinessEcosystemPart :  Linkage BusinessEcosystemPart OrgUnitType
aggregationOfOrgUnitTypeBusinessEcosystemPart = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- businessEcosystemPart : derived relation obtained by composing
   membershipOfBusinessEcosystemPart and aggregationOfOrgUnitTypeBusinessEcosystemPart
   It directly links an Business Ecosystem to the final aggregated OrgUnitType
   hiding the reifying BusinessEcosystemPart
-}
businessEcosystemPart : Linkage BusinessEcosystem OrgUnitType
businessEcosystemPart = membershipOfBusinessEcosystemPart  ∘  aggregationOfOrgUnitTypeBusinessEcosystemPart


