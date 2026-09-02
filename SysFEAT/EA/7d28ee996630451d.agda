{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enterprise Stage: 
An Enterprise Stage is a past, current or future state of the Enterprise. Each stage represents an initiative comprising a purposeful set of activities whose primary purpose is focused on achieving a set of clearly defined objectives that may transcend organisational boundaries and consequently require integrated team working under the direction of an Architecture Governance Committee.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d28ee996630451d where -- ========== Enterprise Stage

open import Agda.Primitive
open import SysFEAT.SOF.e78c5eb0661989f9 public -- Initiative Stage
open import SysFEAT.EA.036a3de3548f229e public -- Enterprise Initiative
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior
open import SysFEAT.EA.21ed240a689c08df public -- Value Proposition

EnterpriseStage : StateClass
EnterpriseStage = StateConcept


--  EnterpriseStage is subTypeOf InitiativeStage
st-dd269a6968a1daac : EnterpriseStage ⊏ₑ InitiativeStage
st-dd269a6968a1daac = polySubTypeOf-identity

--  EnterpriseStage is subTypeOf EnterpriseInitiative
st-7d28ee6666304516 : EnterpriseStage ⊏ₑ EnterpriseInitiative
st-7d28ee6666304516 = polySubTypeOf-identity

-- == Relationships =======================

{- Tactic: 
A Tactic is a Course of Action that represents part of the detailing of Strategies. A Tactic implements Strategies. For example, the Tactic  Call first-time customers personally  implements the Strategy  Increase repeat business. Tactics generally channel efforts towards Objectives. For example, the Tactic  Ship products for free  channels efforts towards the Objective  Within six months, 10% increase in product sales. 
-}
-- Aggregate Member : Tactic
Tactic : ClassOfOrderedEntity (lsuc(lzero))
Tactic = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfTactic :  Linkage EnterpriseStage Tactic
membershipOfTactic = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualResourceBehaviorTactic :  Linkage Tactic IndividualResourceBehavior
aggregationOfIndividualResourceBehaviorTactic = aggregationOfBuildingBlock

{- tactic : derived relation obtained by composing
   membershipOfTactic and aggregationOfIndividualResourceBehaviorTactic
   It directly links an Enterprise Stage to the final aggregated IndividualResourceBehavior
   hiding the reifying Tactic
-}
tactic : Linkage EnterpriseStage IndividualResourceBehavior
tactic = membershipOfTactic  ∘  aggregationOfIndividualResourceBehaviorTactic

{- Enterprise Objective: 
Business Capability that is exhibited by an Enterprise Stage with quantified measure (KPI) and potential geopolitical scope (Site) for a defined market segment (Business Partner).An Enterprise Objective is a quantifiable end that a company/organization wants to achieve for a given Enterprise Initiative.An Enterprise Objective may support an Enterprise Goal; it may be refined into sub-objectives.An Enterprise Objective may concern a defined Exhibited Capability and be addressed by a defined Tactic.
-}
-- Aggregate Member : Enterprise Objective
EnterpriseObjective : ClassOfClassOfIndividual
EnterpriseObjective = ClassOfIndividual

-- Membership relation
membershipOfEnterpriseObjective :  Linkage EnterpriseStage EnterpriseObjective
membershipOfEnterpriseObjective = membershipOfAggregateMember

-- Aggregation relation
aggregationOfValuePropositionEnterpriseObjective :  Linkage EnterpriseObjective ValueProposition
aggregationOfValuePropositionEnterpriseObjective = aggregationOfBuildingBlock

{- enterpriseObjective : derived relation obtained by composing
   membershipOfEnterpriseObjective and aggregationOfValuePropositionEnterpriseObjective
   It directly links an Enterprise Stage to the final aggregated ValueProposition
   hiding the reifying EnterpriseObjective
-}
enterpriseObjective : Linkage EnterpriseStage ValueProposition
enterpriseObjective = membershipOfEnterpriseObjective  ∘  aggregationOfValuePropositionEnterpriseObjective
