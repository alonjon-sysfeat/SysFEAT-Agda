{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Organization: 
An Organization is a group of people who share a common purpose and establish a functional division of labor in pursuit of their common purpose.It is the relationships between its members in the pursuit of their common purpose that give unity and identity to an organization.

Documentation : https://framework.sysfeat.com/pages/910196ca550a2ec2.htm

External references:
  Russell Ackoff - System of concepts - FunctionalDivisionOfLabor: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#FunctionalDivisionOfLabor
  OpenGroup - ArchiMate - Business Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-business-Active-Structure-Elements
  SAFe© - Organizational Agility: https://www.scaledagileframework.com/organizational-agility/
  Russell Ackoff - System of Concepts - Organizations: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#Organizations
  OMG - BMM - Organizational Unit: https://www.omg.org/spec/BMM/1.3/PDF#page=63
  Russell Ackoff - Transformational leadership - Social System: ../resources/external-references/Ackoff-1987-A-System-view-of-transformational-leadership.pdf#SocialSystem
  OMG - UAF - ActualOrganization: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ActualOrganization
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.910196ca550a2ec2 where -- ========== Organization

open import Agda.Primitive
open import SysFEAT.SOF.c7dad03f5ae92ae9 public -- Responsible Human Entity
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.c7dad43c5ae92d25 public -- Person

Organization : AgentType
Organization = IndividualAgent


--  Organization is subTypeOf ResponsibleHumanEntity
st-910196ca550a2ec2-c7dad03f5ae92ae9 : Organization ⊏ₑ ResponsibleHumanEntity
st-910196ca550a2ec2-c7dad03f5ae92ae9 = polySubTypeOf-identity

--  Organization is subTypeOf IndividualBusinessAgent
st-910196ca550a2ec2-66f8685a620b1440 : Organization ⊏ₑ IndividualBusinessAgent
st-910196ca550a2ec2-66f8685a620b1440 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Sub Contractor: -}
-- Aggregate Member : Sub Contractor
SubContractor : AgentType
SubContractor = IndividualAgent



--  SubContractor is subTypeOf Organization
st-302241f95ec91eed-910196ca550a2ec2 : SubContractor ⊏ₑ Organization
st-302241f95ec91eed-910196ca550a2ec2 = polySubTypeOf-identity

-- Membership relation
membershipOfSubContractor :  Linkage Organization SubContractor
membershipOfSubContractor = make_upwardNestingRelation "subContractor membership" "nested subContractor"

-- Aggregation relation
aggregationOfOrganizationSubContractor :  Linkage SubContractor Organization
aggregationOfOrganizationSubContractor = make_Relation "Organization aggregation" "aggregated Organization"

{- subContractor : derived relation obtained by composing
   membershipOfSubContractor and aggregationOfOrganizationSubContractor
   It directly links an Organization to the final aggregated Organization
   hiding the reifying SubContractor
-}
subContractor : Linkage Organization Organization
subContractor = membershipOfSubContractor  ∘  aggregationOfOrganizationSubContractor



-- -------------------------------------------------------------------------------------------- 
{- Organizational Position: -}
-- Aggregate Member : Organizational Position
OrganizationalPosition : AgentType
OrganizationalPosition = IndividualAgent



--  OrganizationalPosition is subTypeOf Person
st-c334e7de5ecba16d-c7dad43c5ae92d25 : OrganizationalPosition ⊏ₑ Person
st-c334e7de5ecba16d-c7dad43c5ae92d25 = polySubTypeOf-identity

-- Membership relation
membershipOfOrganizationalPosition :  Linkage Organization OrganizationalPosition
membershipOfOrganizationalPosition = make_upwardNestingRelation "organizationalPosition membership" "nested organizationalPosition"

-- Aggregation relation
aggregationOfPersonOrganizationalPosition :  Linkage OrganizationalPosition Person
aggregationOfPersonOrganizationalPosition = make_Relation "Person aggregation" "aggregated Person"

{- organizationalPosition : derived relation obtained by composing
   membershipOfOrganizationalPosition and aggregationOfPersonOrganizationalPosition
   It directly links an Organization to the final aggregated Person
   hiding the reifying OrganizationalPosition
-}
organizationalPosition : Linkage Organization Person
organizationalPosition = membershipOfOrganizationalPosition  ∘  aggregationOfPersonOrganizationalPosition



-- -------------------------------------------------------------------------------------------- 
{- Organizational Reponsibility: -}
-- Aggregate Member : Organizational Reponsibility
OrganizationalReponsibility : AgentType
OrganizationalReponsibility = IndividualAgent



--  OrganizationalReponsibility is subTypeOf Person
st-c334e8355ecba267-c7dad43c5ae92d25 : OrganizationalReponsibility ⊏ₑ Person
st-c334e8355ecba267-c7dad43c5ae92d25 = polySubTypeOf-identity

-- Membership relation
membershipOfOrganizationalReponsibility :  Linkage Organization OrganizationalReponsibility
membershipOfOrganizationalReponsibility = make_upwardNestingRelation "organizationalReponsibility membership" "nested organizationalReponsibility"

-- Aggregation relation
aggregationOfPersonOrganizationalReponsibility :  Linkage OrganizationalReponsibility Person
aggregationOfPersonOrganizationalReponsibility = make_Relation "Person aggregation" "aggregated Person"

{- organizationalReponsibility : derived relation obtained by composing
   membershipOfOrganizationalReponsibility and aggregationOfPersonOrganizationalReponsibility
   It directly links an Organization to the final aggregated Person
   hiding the reifying OrganizationalReponsibility
-}
organizationalReponsibility : Linkage Organization Person
organizationalReponsibility = membershipOfOrganizationalReponsibility  ∘  aggregationOfPersonOrganizationalReponsibility



-- -------------------------------------------------------------------------------------------- 
{- Sub-Unit: -}
-- Aggregate Member : Sub-Unit
SubUnit : AgentType
SubUnit = IndividualAgent



--  SubUnit is subTypeOf Organization
st-c334e93b5ecba369-910196ca550a2ec2 : SubUnit ⊏ₑ Organization
st-c334e93b5ecba369-910196ca550a2ec2 = polySubTypeOf-identity

-- Membership relation
membershipOfSubUnit :  Linkage Organization SubUnit
membershipOfSubUnit = make_upwardNestingRelation "subUnit membership" "nested subUnit"

-- Aggregation relation
aggregationOfOrganizationSubUnit :  Linkage SubUnit Organization
aggregationOfOrganizationSubUnit = make_Relation "Organization aggregation" "aggregated Organization"

{- subUnit : derived relation obtained by composing
   membershipOfSubUnit and aggregationOfOrganizationSubUnit
   It directly links an Organization to the final aggregated Organization
   hiding the reifying SubUnit
-}
subUnit : Linkage Organization Organization
subUnit = membershipOfSubUnit  ∘  aggregationOfOrganizationSubUnit


