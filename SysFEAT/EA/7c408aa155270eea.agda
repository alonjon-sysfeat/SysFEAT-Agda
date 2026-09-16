{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Department Type: 
A Department Type is a Mezzo Org-Unit Type which serves as an administrative unit template in both government and business Organizations.Examples:- Sales department;- Finance department;- Logistics department..

Documentation : https://framework.sysfeat.com/pages/7c408aa155270eea.htm

External references:
  OpenGroup - TOGAF - Enterprise Metamodel - Actor: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
  Russell Ackoff - System of concepts - FunctionalDivisionOfLabor: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#FunctionalDivisionOfLabor
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
  OpenGroup - ArchiMate - Business-Collaboration: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Collaboration
  Russell Ackoff - System of Concepts - Organizations: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#Organizations
  OMG - UAF - Organization: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Organization
  UCF Glossary - Department: https://compliancedictionary.com/term/1463
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c408aa155270eea where -- ========== Department Type

open import Agda.Primitive
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.57dfc52d550932ef public -- Business Process
open import SysFEAT.EA.076d151c5a5e1561 public -- Organizational Position

DepartmentType : ClassOfClassOfBoundedIndividual
DepartmentType = ClassOfBoundedIndividual

--  DepartmentType is subTypeOf OrgUnitType
st-7c408aa155270eea-076d15425a5e158c : DepartmentType ⊏ₑ OrgUnitType
st-7c408aa155270eea-076d15425a5e158c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Org-Unit: -}
specializedOrgUnit :  Linkage DepartmentType DepartmentType
specializedOrgUnit = make_subTypeOf "Specialized Org-Unit" "Specialized Org-Unit"

postulate -- specializedOrgUnit is subTypeOf specializedResourceAgent
  st-325a39d866f352f7-52c3540066f226f4  : specializedOrgUnit   ⊏⋆ᵣ  specializedResourceAgent 

{- Operated Business Process: 
The set of Business Processes that is opered by a Department Type.
-}
-- Aggregate Member : Operated Business Process
OperatedBusinessProcess : ClassOfClassOfIndividual
OperatedBusinessProcess = ClassOfIndividual

-- Membership relation
membershipOfOperatedBusinessProcess :  Linkage DepartmentType OperatedBusinessProcess
membershipOfOperatedBusinessProcess = make_upwardNestingRelation "operatedBusinessProcess membership" "nested operatedBusinessProcess"

-- Aggregation relation
aggregationOfBusinessProcessOperatedBusinessProcess :  Linkage OperatedBusinessProcess BusinessProcess
aggregationOfBusinessProcessOperatedBusinessProcess = make_Relation "BusinessProcess aggregation" "aggregated BusinessProcess"

{- operatedBusinessProcess : derived relation obtained by composing
   membershipOfOperatedBusinessProcess and aggregationOfBusinessProcessOperatedBusinessProcess
   It directly links an Department Type to the final aggregated BusinessProcess
   hiding the reifying OperatedBusinessProcess
-}
operatedBusinessProcess : Linkage DepartmentType BusinessProcess
operatedBusinessProcess = membershipOfOperatedBusinessProcess  ∘  aggregationOfBusinessProcessOperatedBusinessProcess

postulate -- operatedBusinessProcess is subTypeOf performedBusinessResourceProcess
  st-ef0800f55fffa405-240353b45fc7a13f  : operatedBusinessProcess   ⊏⋆ᵣ  performedBusinessResourceProcess 


{- Sub-Department: 
Hiearchical composition of Department Types.
-}
-- Aggregate Member : Sub-Department
SubDepartment : ClassOfClassOfIndividual
SubDepartment = ClassOfIndividual

-- Membership relation
membershipOfSubDepartment :  Linkage DepartmentType SubDepartment
membershipOfSubDepartment = make_upwardNestingRelation "subDepartment membership" "nested subDepartment"

-- Aggregation relation
aggregationOfDepartmentTypeSubDepartment :  Linkage SubDepartment DepartmentType
aggregationOfDepartmentTypeSubDepartment = make_Relation "DepartmentType aggregation" "aggregated DepartmentType"

{- subDepartment : derived relation obtained by composing
   membershipOfSubDepartment and aggregationOfDepartmentTypeSubDepartment
   It directly links an Department Type to the final aggregated DepartmentType
   hiding the reifying SubDepartment
-}
subDepartment : Linkage DepartmentType DepartmentType
subDepartment = membershipOfSubDepartment  ∘  aggregationOfDepartmentTypeSubDepartment

postulate -- subDepartment is subTypeOf resourceAgentPart
  st-520e542b5eb86c3a-24034f6d5fc79c3f  : subDepartment   ⊏⋆ᵣ  resourceAgentPart 


{- Organization Position: 
An Organizational Position that is part of an Department Type.
-}
-- Aggregate Member : Organization Position
OrganizationPosition : ClassOfClassOfIndividual
OrganizationPosition = ClassOfIndividual

-- Membership relation
membershipOfOrganizationPosition :  Linkage DepartmentType OrganizationPosition
membershipOfOrganizationPosition = make_upwardNestingRelation "organizationPosition membership" "nested organizationPosition"

-- Aggregation relation
aggregationOfOrganizationalPositionOrganizationPosition :  Linkage OrganizationPosition OrganizationalPosition
aggregationOfOrganizationalPositionOrganizationPosition = make_Relation "OrganizationalPosition aggregation" "aggregated OrganizationalPosition"

{- organizationPosition : derived relation obtained by composing
   membershipOfOrganizationPosition and aggregationOfOrganizationalPositionOrganizationPosition
   It directly links an Department Type to the final aggregated OrganizationalPosition
   hiding the reifying OrganizationPosition
-}
organizationPosition : Linkage DepartmentType OrganizationalPosition
organizationPosition = membershipOfOrganizationPosition  ∘  aggregationOfOrganizationalPositionOrganizationPosition

postulate -- organizationPosition is subTypeOf resourceAgentPart
  st-520e546c5eb86cf4-24034f6d5fc79c3f  : organizationPosition   ⊏⋆ᵣ  resourceAgentPart 

