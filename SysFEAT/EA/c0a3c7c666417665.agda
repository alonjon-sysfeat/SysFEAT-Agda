{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Legal Entity Type: 
A Legal Entity Type is a Macro Org-Unit Type that is a type of lawful or legally standing association, corporation, partnership, proprietorship, trust, or individual that has the legal capacity to: enter into agreements or contracts; assume obligations; incur and pay debts; sue and be sued in its own right; and to be accountable for illegal activities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c0a3c7c666417665 where -- ========== Legal Entity Type

open import Agda.Primitive
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.7c408aa155270eea public -- Department Type

LegalEntityType : ClassOfClassOfBoundedIndividual
LegalEntityType = ClassOfBoundedIndividual

--  LegalEntityType is subTypeOf OrgUnitType
st-c0a3caa9664178c9 : LegalEntityType ⊏ₑ OrgUnitType
st-c0a3caa9664178c9 = polySubTypeOf-identity

-- == Relationships =======================

{- Department Type: -}
-- Aggregate Member : Department Type
DepartmentType : ClassOfClassOfIndividual
DepartmentType = ClassOfIndividual

-- Membership relation
membershipOfDepartmentType :  Linkage LegalEntityType DepartmentType
membershipOfDepartmentType = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDepartmentTypeDepartmentType :  Linkage DepartmentType DepartmentType
aggregationOfDepartmentTypeDepartmentType = aggregationOfBuildingBlock

{- departmentType : derived relation obtained by composing
   membershipOfDepartmentType and aggregationOfDepartmentTypeDepartmentType
   It directly links an Legal Entity Type to the final aggregated DepartmentType
   hiding the reifying DepartmentType
-}
departmentType : Linkage LegalEntityType DepartmentType
departmentType = membershipOfDepartmentType  ∘  aggregationOfDepartmentTypeDepartmentType
