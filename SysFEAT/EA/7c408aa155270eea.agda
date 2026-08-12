{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Department Type: 
A Department Type is a Mezzo Org-Unit Type which serves as an administrative unit template in both government and business Organizations.Examples:- Sales department;- Finance department;- Logistics department..
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c408aa155270eea where -- ========== Department Type

open import Agda.Primitive
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.57dfc52d550932ef public -- Business Process
open import SysFEAT.EA.076d151c5a5e1561 public -- Organizational Position

DepartmentType : ClassOfClassOfBoundedIndividual
DepartmentType = ClassOfBoundedIndividual

postulate --  DepartmentType is subTypeOf OrgUnitType
  st-076d15eb5a5e173f : DepartmentType ⊏ₑ OrgUnitType

-- == Relationships =======================

{- Specialized Org-Unit: -}
specializedOrgUnit :  Linkage DepartmentType DepartmentType
specializedOrgUnit = make_subTypeOf "Specialized Org-Unit" "specializedOrgUnit"

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
membershipOfOperatedBusinessProcess = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessProcessOperatedBusinessProcess :  Linkage OperatedBusinessProcess BusinessProcess
aggregationOfBusinessProcessOperatedBusinessProcess = aggregationOfBuildingBlock

{- operatedBusinessProcess : derived relation obtained by composing
   membershipOfOperatedBusinessProcess and aggregationOfBusinessProcessOperatedBusinessProcess
   It directly links an Department Type to the final aggregated BusinessProcess
   hiding the reifying OperatedBusinessProcess
-}
operatedBusinessProcess : Linkage DepartmentType BusinessProcess
operatedBusinessProcess = membershipOfOperatedBusinessProcess  ∘  aggregationOfBusinessProcessOperatedBusinessProcess

{- Sub-Department: 
Hiearchical composition of Department Types.
-}
-- Aggregate Member : Sub-Department
SubDepartment : ClassOfClassOfIndividual
SubDepartment = ClassOfIndividual

-- Membership relation
membershipOfSubDepartment :  Linkage DepartmentType SubDepartment
membershipOfSubDepartment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDepartmentTypeSubDepartment :  Linkage SubDepartment DepartmentType
aggregationOfDepartmentTypeSubDepartment = aggregationOfBuildingBlock

{- subDepartment : derived relation obtained by composing
   membershipOfSubDepartment and aggregationOfDepartmentTypeSubDepartment
   It directly links an Department Type to the final aggregated DepartmentType
   hiding the reifying SubDepartment
-}
subDepartment : Linkage DepartmentType DepartmentType
subDepartment = membershipOfSubDepartment  ∘  aggregationOfDepartmentTypeSubDepartment

{- Organization Position: 
An Organizational Position that is part of an Department Type.
-}
-- Aggregate Member : Organization Position
OrganizationPosition : ClassOfClassOfIndividual
OrganizationPosition = ClassOfIndividual

-- Membership relation
membershipOfOrganizationPosition :  Linkage DepartmentType OrganizationPosition
membershipOfOrganizationPosition = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrganizationalPositionOrganizationPosition :  Linkage OrganizationPosition OrganizationalPosition
aggregationOfOrganizationalPositionOrganizationPosition = aggregationOfBuildingBlock

{- organizationPosition : derived relation obtained by composing
   membershipOfOrganizationPosition and aggregationOfOrganizationalPositionOrganizationPosition
   It directly links an Department Type to the final aggregated OrganizationalPosition
   hiding the reifying OrganizationPosition
-}
organizationPosition : Linkage DepartmentType OrganizationalPosition
organizationPosition = membershipOfOrganizationPosition  ∘  aggregationOfOrganizationalPositionOrganizationPosition
