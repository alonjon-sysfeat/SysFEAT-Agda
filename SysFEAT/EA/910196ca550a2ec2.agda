{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Organization: 
An Organization is a group of people who share a common purpose and establish a functional division of labor in pursuit of their common purpose.It is the relationships between its members in the pursuit of their common purpose that give unity and identity to an organization.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.910196ca550a2ec2 where -- ========== Organization

open import Agda.Primitive
open import SysFEAT.SOF.c7dad03f5ae92ae9 public -- Responsible Human Entity
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.c7dad43c5ae92d25 public -- Person

Organization : ClassOfBoundedIndividual
Organization = BoundedIndividual

postulate --  Organization is subTypeOf ResponsibleHumanEntity
  st-c334e7635ecb9fea : Organization ⊏ₑ ResponsibleHumanEntity

postulate --  Organization is subTypeOf IndividualBusinessAgent
  st-c80a3e6567858e70 : Organization ⊏ₑ IndividualBusinessAgent

-- == Relationships =======================

{- Sub Contractor: -}
-- Aggregate Member : Sub Contractor
SubContractor : ClassOfOrderedEntity (lsuc(lzero))
SubContractor = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfSubContractor :  Linkage Organization SubContractor
membershipOfSubContractor = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrganizationSubContractor :  Linkage SubContractor Organization
aggregationOfOrganizationSubContractor = aggregationOfBuildingBlock

{- subContractor : derived relation obtained by composing
   membershipOfSubContractor and aggregationOfOrganizationSubContractor
   It directly links an Organization to the final aggregated Organization
   hiding the reifying SubContractor
-}
subContractor : Linkage Organization Organization
subContractor = membershipOfSubContractor  ∘  aggregationOfOrganizationSubContractor

{- Organizational Position: -}
-- Aggregate Member : Organizational Position
OrganizationalPosition : ClassOfOrderedEntity (lsuc(lzero))
OrganizationalPosition = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfOrganizationalPosition :  Linkage Organization OrganizationalPosition
membershipOfOrganizationalPosition = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPersonOrganizationalPosition :  Linkage OrganizationalPosition Person
aggregationOfPersonOrganizationalPosition = aggregationOfBuildingBlock

{- organizationalPosition : derived relation obtained by composing
   membershipOfOrganizationalPosition and aggregationOfPersonOrganizationalPosition
   It directly links an Organization to the final aggregated Person
   hiding the reifying OrganizationalPosition
-}
organizationalPosition : Linkage Organization Person
organizationalPosition = membershipOfOrganizationalPosition  ∘  aggregationOfPersonOrganizationalPosition

{- Organizational Reponsibility: -}
-- Aggregate Member : Organizational Reponsibility
OrganizationalReponsibility : ClassOfOrderedEntity (lsuc(lzero))
OrganizationalReponsibility = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfOrganizationalReponsibility :  Linkage Organization OrganizationalReponsibility
membershipOfOrganizationalReponsibility = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPersonOrganizationalReponsibility :  Linkage OrganizationalReponsibility Person
aggregationOfPersonOrganizationalReponsibility = aggregationOfBuildingBlock

{- organizationalReponsibility : derived relation obtained by composing
   membershipOfOrganizationalReponsibility and aggregationOfPersonOrganizationalReponsibility
   It directly links an Organization to the final aggregated Person
   hiding the reifying OrganizationalReponsibility
-}
organizationalReponsibility : Linkage Organization Person
organizationalReponsibility = membershipOfOrganizationalReponsibility  ∘  aggregationOfPersonOrganizationalReponsibility

{- Sub-Unit: -}
-- Aggregate Member : Sub-Unit
SubUnit : ClassOfOrderedEntity (lsuc(lzero))
SubUnit = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfSubUnit :  Linkage Organization SubUnit
membershipOfSubUnit = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrganizationSubUnit :  Linkage SubUnit Organization
aggregationOfOrganizationSubUnit = aggregationOfBuildingBlock

{- subUnit : derived relation obtained by composing
   membershipOfSubUnit and aggregationOfOrganizationSubUnit
   It directly links an Organization to the final aggregated Organization
   hiding the reifying SubUnit
-}
subUnit : Linkage Organization Organization
subUnit = membershipOfSubUnit  ∘  aggregationOfOrganizationSubUnit
