{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Management System: 
A Management System is a mezzo Enduring Initiative within an Enterprise, aimed at creating, maintaining, evaluating, evolving, and operating a collection of essential Functional Architecture Assets of the Enterprise.A Management System may transcend organisational boundaries and consequently requires an integrated team working under the direction of a Management Initiative Committee.

Documentation : https://framework.sysfeat.com/pages/29df3f4060084c07.htm

External references:
  SAFe© - Large Solution SAFe: https://www.scaledagileframework.com/large-solution-safe/
  OpenGroup - TOGAF - Definition - Portfolio: https://pubs.opengroup.org/togaf-standard/introduction/apdxb.html#tag_06_30
  ISO 9000 - 3.5.3 Management System: https://www.iso.org/obp/ui/#iso:std:iso:9000:ed-4:v1:en3.5.3 Management System
  ISO 22301 - Management System: https://www.iso.org/obp/ui/#iso:std:iso:22301:ed-2:v1:en
  SAFe© -Enterprise Solution Delivery: https://www.scaledagileframework.com/enterprise-solution-delivery/
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.29df3f4060084c07 where -- ========== Management System

open import Agda.Primitive
open import SysFEAT.EA.05201b936647570a public -- Management Initiative
open import SysFEAT.SOF.d321c226601262ae public -- Enduring Initiative
open import SysFEAT.EA.910196ca550a2ec2 public -- Organization
open import SysFEAT.EA.05200e1c66474509 public -- Management Stage
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

ManagementSystem : ClassOfBoundedIndividual
ManagementSystem = BoundedIndividual

--  ManagementSystem is subTypeOf ManagementInitiative
st-29df3f4060084c07-05201b936647570a : ManagementSystem ⊏ₑ ManagementInitiative
st-29df3f4060084c07-05201b936647570a = polySubTypeOf-identity

--  ManagementSystem is subTypeOf EnduringInitiative
st-29df3f4060084c07-d321c226601262ae : ManagementSystem ⊏ₑ EnduringInitiative
st-29df3f4060084c07-d321c226601262ae = polySubTypeOf-identity

-- == Relationships =======================

{- Concerned Organization: -}
concernedOrganization :  Linkage ManagementSystem Organization
concernedOrganization = make_holonymyRelation "Concerned Organization" "Concerned Organization"

postulate -- concernedOrganization is subTypeOf steeringAuthority
  st-391204785f4eed0a-b2f2d64d5f47e364  : concernedOrganization   ⊏⋆ᵣ  steeringAuthority 

{- Dependent Portfolio: -}
dependentPortfolio :  Linkage ManagementSystem ManagementSystem
dependentPortfolio = make_holonymyRelation "Dependent Portfolio" "Dependent Portfolio"

postulate -- dependentPortfolio is subTypeOf dependentInitiative
  st-5b7a0e2661f56423-5b7a0d6361f5633f  : dependentPortfolio   ⊏⋆ᵣ  dependentInitiative 

{- Sub-Management System: -}
subManagementSystem :  Linkage ManagementSystem ManagementSystem
subManagementSystem = make_holonymyRelation "Sub-Management System" "Sub-Management System"

postulate -- subManagementSystem is subTypeOf subInitiative
  st-5b7a0f9561f565c4-5b7a0ecf61f5650a  : subManagementSystem   ⊏⋆ᵣ  subInitiative 

{- /Management Roadmap: 
Set of all Management Stages of a Management System that , in conjunction with coordinating initiative milestones, establishes the roadmap for the Functional Assets under its supervision.
-}
/ManagementRoadmap :  Linkage ManagementSystem ManagementStage
/ManagementRoadmap = make_holonymyRelation "/Management Roadmap" "/Management Roadmap"

postulate -- /ManagementRoadmap is subTypeOf roadmap
  st-612367e761dd7a42-29df685860086c52  : /ManagementRoadmap   ⊏⋆ᵣ  roadmap 

{- Management System Subject: -}
-- Aggregate Member : Management System Subject
ManagementSystemSubject : ∀ (u : Level) → ClassOfMixedOrderEntity u
ManagementSystemSubject u = AggregateMember u


-- Membership relation
membershipOfManagementSystemSubject : ∀ {u} →  Linkage ManagementSystem (ManagementSystemSubject u)
membershipOfManagementSystemSubject = make_upwardNestingRelation "managementSystemSubject membership" "nested managementSystemSubject"

-- Aggregation relation
aggregationOfAssetBlockManagementSystemSubject : ∀ {u v} →  Linkage (ManagementSystemSubject u) (AssetBlock v)
aggregationOfAssetBlockManagementSystemSubject = make_Relation "AssetBlock aggregation" "aggregated AssetBlock"

{- managementSystemSubject : derived relation obtained by composing
   membershipOfManagementSystemSubject and aggregationOfAssetBlockManagementSystemSubject
   It directly links an Management System to the final aggregated AssetBlock
   hiding the reifying ManagementSystemSubject
-}
managementSystemSubject : ∀ {u w} → Linkage ManagementSystem (AssetBlock w)
managementSystemSubject {u} {w}  = membershipOfManagementSystemSubject {u}   ∘  aggregationOfAssetBlockManagementSystemSubject {w} 

postulate -- managementSystemSubject is subTypeOf initiativeSubject
  st-6bf17ffc68598c26-0f642fd06859b0d5  : managementSystemSubject {lzero}  ⊏⋆ᵣ  initiativeSubject  {lzero}

