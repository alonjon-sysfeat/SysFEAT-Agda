{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Committee: 
A Governance Committee is a group of Stakeholders that contributes to architecting and assurance activities and governs Enduring Initiatives.

Documentation : https://framework.sysfeat.com/pages/2cc9717155263b89.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.2cc9717155263b89 where -- ========== Governance Committee

open import Agda.Primitive
open import SysFEAT.SOF.bcebd0175491272a public -- Stakeholder
open import SysFEAT.SOF.2cc9718655263c44 public -- Individual Stakeholder

GovernanceCommittee : ClassOfBoundedIndividual
GovernanceCommittee = BoundedIndividual


--  GovernanceCommittee is subTypeOf Stakeholder
st-2cc9717155263b89-bcebd0175491272a : GovernanceCommittee ⊏ₑ Stakeholder
st-2cc9717155263b89-bcebd0175491272a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Sub-Committee: -}
-- Aggregate Member : Sub-Committee
SubCommittee : AggregateHolonymyType
SubCommittee = AggregateHolonymy



--  SubCommittee is subTypeOf AggregateHolonymy
st-18a826a35eeb6934-c2f2c9a166ea50e2 : SubCommittee ⊏ₑ AggregateHolonymy
st-18a826a35eeb6934-c2f2c9a166ea50e2 = polySubTypeOf-identity

--  SubCommittee is subTypeOf GovernanceCommittee
st-18a826a35eeb6934-2cc9717155263b89 : SubCommittee ⊏ₑ GovernanceCommittee
st-18a826a35eeb6934-2cc9717155263b89 = polySubTypeOf-identity

-- Membership relation
membershipOfSubCommittee :  Linkage GovernanceCommittee SubCommittee
membershipOfSubCommittee = make_upwardNestingRelation "subCommittee membership" "nested subCommittee"

-- Aggregation relation
aggregationOfGovernanceCommitteeSubCommittee :  Linkage SubCommittee GovernanceCommittee
aggregationOfGovernanceCommitteeSubCommittee = make_Relation "GovernanceCommittee aggregation" "aggregated GovernanceCommittee"

{- subCommittee : derived relation obtained by composing
   membershipOfSubCommittee and aggregationOfGovernanceCommitteeSubCommittee
   It directly links an Governance Committee to the final aggregated GovernanceCommittee
   hiding the reifying SubCommittee
-}
subCommittee : Linkage GovernanceCommittee GovernanceCommittee
subCommittee = membershipOfSubCommittee  ∘  aggregationOfGovernanceCommitteeSubCommittee



-- -------------------------------------------------------------------------------------------- 
{- Committee member: 
Role of a person in a Governance Committee.
-}
-- Aggregate Member : Committee member
Committeemember : AggregateHolonymyType
Committeemember = AggregateHolonymy



--  Committeemember is subTypeOf AggregateHolonymy
st-24ae430d5ed1f6aa-c2f2c9a166ea50e2 : Committeemember ⊏ₑ AggregateHolonymy
st-24ae430d5ed1f6aa-c2f2c9a166ea50e2 = polySubTypeOf-identity

--  Committeemember is subTypeOf IndividualStakeholder
st-24ae430d5ed1f6aa-2cc9718655263c44 : Committeemember ⊏ₑ IndividualStakeholder
st-24ae430d5ed1f6aa-2cc9718655263c44 = polySubTypeOf-identity

-- Membership relation
membershipOfCommitteemember :  Linkage GovernanceCommittee Committeemember
membershipOfCommitteemember = make_upwardNestingRelation "committeemember membership" "nested committeemember"

-- Aggregation relation
aggregationOfIndividualStakeholderCommitteemember :  Linkage Committeemember IndividualStakeholder
aggregationOfIndividualStakeholderCommitteemember = make_Relation "IndividualStakeholder aggregation" "aggregated IndividualStakeholder"

{- committeemember : derived relation obtained by composing
   membershipOfCommitteemember and aggregationOfIndividualStakeholderCommitteemember
   It directly links an Governance Committee to the final aggregated IndividualStakeholder
   hiding the reifying Committeemember
-}
committeemember : Linkage GovernanceCommittee IndividualStakeholder
committeemember = membershipOfCommitteemember  ∘  aggregationOfIndividualStakeholderCommitteemember


