{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Risk Management System: 
A Operational Risk Management System is an Assurance System that ensures risk prevention and management, application of internal operating rules, respect a law or regulation
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a0ac89b5dde4df4 where -- ========== Operational Risk Management System

open import Agda.Primitive
open import SysFEAT.EA.07ca18d25dd85477 public -- Assurance System
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.SOF.190c7429689664b5 public -- Policy

OperationalRiskManagementSystem : ClassOfBoundedIndividual
OperationalRiskManagementSystem = BoundedIndividual

--  OperationalRiskManagementSystem is subTypeOf AssuranceSystem
st-29df393260084390 : OperationalRiskManagementSystem ⊏ₑ AssuranceSystem
st-29df393260084390 = polySubTypeOf-identity

-- == Relationships =======================

{- Controled Framework: -}
controledFramework :  Linkage OperationalRiskManagementSystem PolicyFramework
controledFramework = make_Relation "Controled Framework" "controledFramework"

postulate -- controledFramework is subTypeOf enforcedPolicyFramework
  st-4b94750068a48e57-4b945cc368a47e39  : controledFramework   ⊏⋆ᵣ  enforcedPolicyFramework 

{- Operational Policy in Scope: -}
-- Aggregate Member : Operational Policy in Scope
OperationalPolicyinScope : ClassOfClassOfIndividual
OperationalPolicyinScope = ClassOfIndividual

-- Membership relation
membershipOfOperationalPolicyinScope :  Linkage OperationalRiskManagementSystem OperationalPolicyinScope
membershipOfOperationalPolicyinScope = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPolicyOperationalPolicyinScope :  Linkage OperationalPolicyinScope Policy
aggregationOfPolicyOperationalPolicyinScope = aggregationOfBuildingBlock

{- operationalPolicyinScope : derived relation obtained by composing
   membershipOfOperationalPolicyinScope and aggregationOfPolicyOperationalPolicyinScope
   It directly links an Operational Risk Management System to the final aggregated Policy
   hiding the reifying OperationalPolicyinScope
-}
operationalPolicyinScope : Linkage OperationalRiskManagementSystem Policy
operationalPolicyinScope = membershipOfOperationalPolicyinScope  ∘  aggregationOfPolicyOperationalPolicyinScope
