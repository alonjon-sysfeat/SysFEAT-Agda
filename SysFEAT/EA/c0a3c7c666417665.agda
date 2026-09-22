{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Legal Entity Type: 
A Legal Entity Type is a Macro Org-Unit Type that is a type of lawful or legally standing association, corporation, partnership, proprietorship, trust, or individual that has the legal capacity to: enter into agreements or contracts; assume obligations; incur and pay debts; sue and be sued in its own right; and to be accountable for illegal activities.

Documentation : https://framework.sysfeat.com/pages/c0a3c7c666417665.htm

External references:
  OpenGroup - TOGAF - Enterprise Metamodel - Actor: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
  OpenGroup - ArchiMate - Business-Collaboration: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Collaboration
  OpenGroup - TOGAF - Definition - Actor: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_02
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c0a3c7c666417665 where -- ========== Legal Entity Type

open import Agda.Primitive
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.7c408aa155270eea public -- Department Type

LegalEntityType : ClassOfClassOfBoundedIndividual
LegalEntityType = ClassOfBoundedIndividual


--  LegalEntityType is subTypeOf OrgUnitType
st-c0a3c7c666417665-076d15425a5e158c : LegalEntityType ⊏ₑ OrgUnitType
st-c0a3c7c666417665-076d15425a5e158c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Department Type: -}
-- Aggregate Member : Department Type
DepartmentType : ClassOfClassOfBoundedIndividual
DepartmentType = ClassOfBoundedIndividual



--  DepartmentType is subTypeOf DepartmentType
st-c0a3ca65664177b7-7c408aa155270eea : DepartmentType ⊏ₑ DepartmentType
st-c0a3ca65664177b7-7c408aa155270eea = polySubTypeOf-identity

-- Membership relation
membershipOfDepartmentType :  Linkage LegalEntityType DepartmentType
membershipOfDepartmentType = make_upwardNestingRelation "departmentType membership" "nested departmentType"

-- Aggregation relation
aggregationOfDepartmentTypeDepartmentType :  Linkage DepartmentType DepartmentType
aggregationOfDepartmentTypeDepartmentType = make_Relation "DepartmentType aggregation" "aggregated DepartmentType"

{- departmentType : derived relation obtained by composing
   membershipOfDepartmentType and aggregationOfDepartmentTypeDepartmentType
   It directly links an Legal Entity Type to the final aggregated DepartmentType
   hiding the reifying DepartmentType
-}
departmentType : Linkage LegalEntityType DepartmentType
departmentType = membershipOfDepartmentType  ∘  aggregationOfDepartmentTypeDepartmentType


