{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Operating Environment: 
A Logical Operating Environment presents a logical application system use context. It describes the interactions between the Logical Application System and its external partners, which allows it to fulfill its mission and ensure the expected functionalities.

Documentation : https://framework.sysfeat.com/pages/25582c685c6d1c93.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.25582c685c6d1c93 where -- ========== Logical Operating Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.255833cb5c6d1d64 public -- Logical Application System

LogicalOperatingEnvironment : ClassOfClassOfBoundedIndividual
LogicalOperatingEnvironment = ClassOfBoundedIndividual


--  LogicalOperatingEnvironment is subTypeOf SOftwareSystemEnvironment
st-25582c685c6d1c93-25c0a25061e2fd5a : LogicalOperatingEnvironment ⊏ₑ SOftwareSystemEnvironment
st-25582c685c6d1c93-25c0a25061e2fd5a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Partner Logical Part: -}
-- Aggregate Member : Partner Logical Part
PartnerLogicalPart : ClassOfClassOfBoundedIndividual
PartnerLogicalPart = ClassOfBoundedIndividual



--  PartnerLogicalPart is subTypeOf PartnerSOftwareSystem
st-137d1fdb5ee2c266-25c1a6bc61e20826 : PartnerLogicalPart ⊏ₑ PartnerSOftwareSystem
st-137d1fdb5ee2c266-25c1a6bc61e20826 = polySubTypeOf-identity

--  PartnerLogicalPart is subTypeOf LogicalApplicationSystem
st-137d1fdb5ee2c266-255833cb5c6d1d64 : PartnerLogicalPart ⊏ₑ LogicalApplicationSystem
st-137d1fdb5ee2c266-255833cb5c6d1d64 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerLogicalPart :  Linkage LogicalOperatingEnvironment PartnerLogicalPart
membershipOfPartnerLogicalPart = make_upwardNestingRelation "partnerLogicalPart membership" "nested partnerLogicalPart"

-- Aggregation relation
aggregationOfLogicalApplicationSystemPartnerLogicalPart :  Linkage PartnerLogicalPart LogicalApplicationSystem
aggregationOfLogicalApplicationSystemPartnerLogicalPart = make_Relation "LogicalApplicationSystem aggregation" "aggregated LogicalApplicationSystem"

{- partnerLogicalPart : derived relation obtained by composing
   membershipOfPartnerLogicalPart and aggregationOfLogicalApplicationSystemPartnerLogicalPart
   It directly links an Logical Operating Environment to the final aggregated LogicalApplicationSystem
   hiding the reifying PartnerLogicalPart
-}
partnerLogicalPart : Linkage LogicalOperatingEnvironment LogicalApplicationSystem
partnerLogicalPart = membershipOfPartnerLogicalPart  ∘  aggregationOfLogicalApplicationSystemPartnerLogicalPart



-- -------------------------------------------------------------------------------------------- 
{- Subject Logical Member: -}
-- Aggregate Member : Subject Logical Member
SubjectLogicalMember : ClassOfClassOfBoundedIndividual
SubjectLogicalMember = ClassOfBoundedIndividual



--  SubjectLogicalMember is subTypeOf SubjectSOftwareSystem
st-137d20165ee2c309-25c1a65861e2077a : SubjectLogicalMember ⊏ₑ SubjectSOftwareSystem
st-137d20165ee2c309-25c1a65861e2077a = polySubTypeOf-identity

--  SubjectLogicalMember is subTypeOf LogicalApplicationSystem
st-137d20165ee2c309-255833cb5c6d1d64 : SubjectLogicalMember ⊏ₑ LogicalApplicationSystem
st-137d20165ee2c309-255833cb5c6d1d64 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectLogicalMember :  Linkage LogicalOperatingEnvironment SubjectLogicalMember
membershipOfSubjectLogicalMember = make_upwardNestingRelation "subjectLogicalMember membership" "nested subjectLogicalMember"

-- Aggregation relation
aggregationOfLogicalApplicationSystemSubjectLogicalMember :  Linkage SubjectLogicalMember LogicalApplicationSystem
aggregationOfLogicalApplicationSystemSubjectLogicalMember = make_Relation "LogicalApplicationSystem aggregation" "aggregated LogicalApplicationSystem"

{- subjectLogicalMember : derived relation obtained by composing
   membershipOfSubjectLogicalMember and aggregationOfLogicalApplicationSystemSubjectLogicalMember
   It directly links an Logical Operating Environment to the final aggregated LogicalApplicationSystem
   hiding the reifying SubjectLogicalMember
-}
subjectLogicalMember : Linkage LogicalOperatingEnvironment LogicalApplicationSystem
subjectLogicalMember = membershipOfSubjectLogicalMember  ∘  aggregationOfLogicalApplicationSystemSubjectLogicalMember


