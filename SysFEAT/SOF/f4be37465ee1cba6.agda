{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Audit: 
An Audit is a mission assigned to a team of internal auditors in the context of an audit plan.

Documentation : https://framework.sysfeat.com/pages/f4be37465ee1cba6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f4be37465ee1cba6 where -- ========== Audit

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset

Audit : ClassOfBoundedIndividual
Audit = BoundedIndividual

--  Audit is subTypeOf GovernanceActivity
st-f4be37465ee1cba6-1737b76a5fe28204 : Audit ⊏ₑ GovernanceActivity
st-f4be37465ee1cba6-1737b76a5fe28204 = polySubTypeOf-identity

-- == Relationships =======================

{- Audit Activity: -}
-- Aggregate Member : Audit Activity
AuditActivity : ClassOfOrderedEntity (lsuc(lzero))
AuditActivity = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfAuditActivity :  Linkage Audit AuditActivity
membershipOfAuditActivity = make_upwardNestingRelation "auditActivity membership" "nested auditActivity"

-- Aggregation relation
aggregationOfAuditAuditActivity :  Linkage AuditActivity Audit
aggregationOfAuditAuditActivity = make_Relation "Audit aggregation" "aggregated Audit"

{- auditActivity : derived relation obtained by composing
   membershipOfAuditActivity and aggregationOfAuditAuditActivity
   It directly links an Audit to the final aggregated Audit
   hiding the reifying AuditActivity
-}
auditActivity : Linkage Audit Audit
auditActivity = membershipOfAuditActivity  ∘  aggregationOfAuditAuditActivity

postulate -- auditActivity is subTypeOf governanceActivityPart
  st-833987cd68e33de9-fee30a85695d0bb0  : auditActivity   ⊏⋆ᵣ  governanceActivityPart 


{- Finding: -}
-- Aggregate Member : Finding
Finding : ClassOfOrderedEntity (lsuc(lzero))
Finding = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfFinding :  Linkage Audit Finding
membershipOfFinding = make_upwardNestingRelation "finding membership" "nested finding"

-- Aggregation relation
aggregationOfIndividualAssetFinding :  Linkage Finding IndividualAsset
aggregationOfIndividualAssetFinding = make_Relation "IndividualAsset aggregation" "aggregated IndividualAsset"

{- finding : derived relation obtained by composing
   membershipOfFinding and aggregationOfIndividualAssetFinding
   It directly links an Audit to the final aggregated IndividualAsset
   hiding the reifying Finding
-}
finding : Linkage Audit IndividualAsset
finding = membershipOfFinding  ∘  aggregationOfIndividualAssetFinding

postulate -- finding is subTypeOf unboundedMember
  st-8339882968e33e98-8cfaf71a6852b042  : finding   ⊏⋆ᵣ  unboundedMember {lzero} {lzero}

