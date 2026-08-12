{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Audit: 
An Audit is a mission assigned to a team of internal auditors in the context of an audit plan.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f4be37465ee1cba6 where -- ========== Audit

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset

Audit : ClassOfBoundedIndividual
Audit = BoundedIndividual

postulate --  Audit is subTypeOf GovernanceActivity
  st-f4be375d5ee1ccbf : Audit ⊏ₑ GovernanceActivity

-- == Relationships =======================

{- Audit Activity: -}
-- Aggregate Member : Audit Activity
AuditActivity : ClassOfOrderedEntity (lsuc(lzero))
AuditActivity = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfAuditActivity :  Linkage Audit AuditActivity
membershipOfAuditActivity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAuditAuditActivity :  Linkage AuditActivity Audit
aggregationOfAuditAuditActivity = aggregationOfBuildingBlock

{- auditActivity : derived relation obtained by composing
   membershipOfAuditActivity and aggregationOfAuditAuditActivity
   It directly links an Audit to the final aggregated Audit
   hiding the reifying AuditActivity
-}
auditActivity : Linkage Audit Audit
auditActivity = membershipOfAuditActivity  ∘  aggregationOfAuditAuditActivity

{- Finding: -}
-- Aggregate Member : Finding
Finding : ClassOfOrderedEntity (lsuc(lzero))
Finding = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfFinding :  Linkage Audit Finding
membershipOfFinding = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualAssetFinding :  Linkage Finding IndividualAsset
aggregationOfIndividualAssetFinding = aggregationOfBuildingBlock

{- finding : derived relation obtained by composing
   membershipOfFinding and aggregationOfIndividualAssetFinding
   It directly links an Audit to the final aggregated IndividualAsset
   hiding the reifying Finding
-}
finding : Linkage Audit IndividualAsset
finding = membershipOfFinding  ∘  aggregationOfIndividualAssetFinding
