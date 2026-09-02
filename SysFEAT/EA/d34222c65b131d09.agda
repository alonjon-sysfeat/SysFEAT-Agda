{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Project: 
An Architecture Project project consists in a set of modeling tasks entrusted to a Team Committee in order develop or update architecture artifacts (Asset Blocks) so as to achieve a specific objective.Architecture Projects are often sub-initiatives of larger enterprise transformation endeavors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d34222c65b131d09 where -- ========== Architecture Project

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity
open import SysFEAT.SOF.ff0501b65b253fdd public -- Governing Team
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

ArchitectureProject : ClassOfBoundedIndividual
ArchitectureProject = BoundedIndividual

--  ArchitectureProject is subTypeOf GovernanceActivity
st-09965a07620e601f : ArchitectureProject ⊏ₑ GovernanceActivity
st-09965a07620e601f = polySubTypeOf-identity

--  ArchitectureProject is subTypeOf GoverningTeam
st-d329b787617b60a3 : ArchitectureProject ⊏ₑ GoverningTeam
st-d329b787617b60a3 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub-Project: -}
subProject :  Linkage ArchitectureProject ArchitectureProject
subProject = make_holonymyRelation "Sub-Project" "subProject"

postulate -- subProject is subTypeOf subTeam
  st-09965180620e5b60-ac98b16e60a38cbc  : subProject   ⊏⋆ᵣ  subTeam 

{- Architecture Deliverable: -}
-- Aggregate Member : Architecture Deliverable
ArchitectureDeliverable : ∀ (u : Level) → ClassOfMixedOrderEntity u
ArchitectureDeliverable u = AggregateMember u


-- Membership relation
membershipOfArchitectureDeliverable : ∀ {u} →  Linkage ArchitectureProject (ArchitectureDeliverable u)
membershipOfArchitectureDeliverable = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetBlockArchitectureDeliverable : ∀ {u v} →  Linkage (ArchitectureDeliverable u) (AssetBlock v)
aggregationOfAssetBlockArchitectureDeliverable = aggregationOfBuildingBlock

{- architectureDeliverable : derived relation obtained by composing
   membershipOfArchitectureDeliverable and aggregationOfAssetBlockArchitectureDeliverable
   It directly links an Architecture Project to the final aggregated AssetBlock
   hiding the reifying ArchitectureDeliverable
-}
architectureDeliverable : ∀ {u w} → Linkage ArchitectureProject (AssetBlock w)
architectureDeliverable {u} {w}  = membershipOfArchitectureDeliverable {u}   ∘  aggregationOfAssetBlockArchitectureDeliverable {w} 
