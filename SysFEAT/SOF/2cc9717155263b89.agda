{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Committee: 
A Governance Committee is a group of Stakeholders that contributes to architecting and assurance activities and governs Enduring Initiatives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.2cc9717155263b89 where -- ========== Governance Committee

open import Agda.Primitive
open import SysFEAT.SOF.bcebd0175491272a public -- Stakeholder
open import SysFEAT.SOF.2cc9718655263c44 public -- Individual Stakeholder

GovernanceCommittee : ClassOfBoundedIndividual
GovernanceCommittee = BoundedIndividual

--  GovernanceCommittee is subTypeOf Stakeholder
st-2cc9717855263c02 : GovernanceCommittee ⊏ₑ Stakeholder
st-2cc9717855263c02 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub-Committee: -}
-- Aggregate Member : Sub-Committee
SubCommittee : ClassOfOrderedEntity (lsuc(lzero))
SubCommittee = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfSubCommittee :  Linkage GovernanceCommittee SubCommittee
membershipOfSubCommittee = membershipOfAggregateMember

-- Aggregation relation
aggregationOfGovernanceCommitteeSubCommittee :  Linkage SubCommittee GovernanceCommittee
aggregationOfGovernanceCommitteeSubCommittee = aggregationOfBuildingBlock

{- subCommittee : derived relation obtained by composing
   membershipOfSubCommittee and aggregationOfGovernanceCommitteeSubCommittee
   It directly links an Governance Committee to the final aggregated GovernanceCommittee
   hiding the reifying SubCommittee
-}
subCommittee : Linkage GovernanceCommittee GovernanceCommittee
subCommittee = membershipOfSubCommittee  ∘  aggregationOfGovernanceCommitteeSubCommittee

{- Committee member: 
Role of a person in a Governance Committee.
-}
-- Aggregate Member : Committee member
Committeemember : ClassOfOrderedEntity (lsuc(lzero))
Committeemember = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfCommitteemember :  Linkage GovernanceCommittee Committeemember
membershipOfCommitteemember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualStakeholderCommitteemember :  Linkage Committeemember IndividualStakeholder
aggregationOfIndividualStakeholderCommitteemember = aggregationOfBuildingBlock

{- committeemember : derived relation obtained by composing
   membershipOfCommitteemember and aggregationOfIndividualStakeholderCommitteemember
   It directly links an Governance Committee to the final aggregated IndividualStakeholder
   hiding the reifying Committeemember
-}
committeemember : Linkage GovernanceCommittee IndividualStakeholder
committeemember = membershipOfCommitteemember  ∘  aggregationOfIndividualStakeholderCommitteemember
