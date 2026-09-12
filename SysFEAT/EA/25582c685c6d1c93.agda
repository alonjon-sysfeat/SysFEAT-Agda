{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Operating Environment: 
A Logical Operating Environment presents a logical application system use context. It describes the interactions between the Logical Application System and its external partners, which allows it to fulfill its mission and ensure the expected functionalities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.25582c685c6d1c93 where -- ========== Logical Operating Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.255833cb5c6d1d64 public -- Logical Application System

LogicalOperatingEnvironment : ClassOfClassOfBoundedIndividual
LogicalOperatingEnvironment = ClassOfBoundedIndividual

--  LogicalOperatingEnvironment is subTypeOf SOftwareSystemEnvironment
st-2b585f5d5ef0fe20 : LogicalOperatingEnvironment ⊏ₑ SOftwareSystemEnvironment
st-2b585f5d5ef0fe20 = polySubTypeOf-identity

-- == Relationships =======================

{- Partner Logical Part: -}
-- Aggregate Member : Partner Logical Part
PartnerLogicalPart : ClassOfClassOfIndividual
PartnerLogicalPart = ClassOfIndividual

-- Membership relation
membershipOfPartnerLogicalPart :  Linkage LogicalOperatingEnvironment PartnerLogicalPart
membershipOfPartnerLogicalPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalApplicationSystemPartnerLogicalPart :  Linkage PartnerLogicalPart LogicalApplicationSystem
aggregationOfLogicalApplicationSystemPartnerLogicalPart = aggregationOfBuildingBlock

{- partnerLogicalPart : derived relation obtained by composing
   membershipOfPartnerLogicalPart and aggregationOfLogicalApplicationSystemPartnerLogicalPart
   It directly links an Logical Operating Environment to the final aggregated LogicalApplicationSystem
   hiding the reifying PartnerLogicalPart
-}
partnerLogicalPart : Linkage LogicalOperatingEnvironment LogicalApplicationSystem
partnerLogicalPart = membershipOfPartnerLogicalPart  ∘  aggregationOfLogicalApplicationSystemPartnerLogicalPart

{- Subject Logical Member: -}
-- Aggregate Member : Subject Logical Member
SubjectLogicalMember : ClassOfClassOfIndividual
SubjectLogicalMember = ClassOfIndividual

-- Membership relation
membershipOfSubjectLogicalMember :  Linkage LogicalOperatingEnvironment SubjectLogicalMember
membershipOfSubjectLogicalMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalApplicationSystemSubjectLogicalMember :  Linkage SubjectLogicalMember LogicalApplicationSystem
aggregationOfLogicalApplicationSystemSubjectLogicalMember = aggregationOfBuildingBlock

{- subjectLogicalMember : derived relation obtained by composing
   membershipOfSubjectLogicalMember and aggregationOfLogicalApplicationSystemSubjectLogicalMember
   It directly links an Logical Operating Environment to the final aggregated LogicalApplicationSystem
   hiding the reifying SubjectLogicalMember
-}
subjectLogicalMember : Linkage LogicalOperatingEnvironment LogicalApplicationSystem
subjectLogicalMember = membershipOfSubjectLogicalMember  ∘  aggregationOfLogicalApplicationSystemSubjectLogicalMember
