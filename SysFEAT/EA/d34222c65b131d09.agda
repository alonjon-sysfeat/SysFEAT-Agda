{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Project: 
An Architecture Project project consists in a set of modeling tasks entrusted to a Team Committee in order develop or update architecture artifacts (Asset Blocks) so as to achieve a specific objective.Architecture Projects are often sub-initiatives of larger enterprise transformation endeavors.

Documentation : https://framework.sysfeat.com/pages/d34222c65b131d09.htm

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
st-d34222c65b131d09-1737b76a5fe28204 : ArchitectureProject ⊏ₑ GovernanceActivity
st-d34222c65b131d09-1737b76a5fe28204 = polySubTypeOf-identity

--  ArchitectureProject is subTypeOf GoverningTeam
st-d34222c65b131d09-ff0501b65b253fdd : ArchitectureProject ⊏ₑ GoverningTeam
st-d34222c65b131d09-ff0501b65b253fdd = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Sub-Project: -}
subProject :  Linkage ArchitectureProject ArchitectureProject
subProject = make_holonymyRelation "Sub-Project" "Sub-Project"

postulate -- subProject is subTypeOf subTeam
  st-09965180620e5b60-ac98b16e60a38cbc  : subProject  ⊏⋆ᵣ  subTeam

-- -------------------------------------------------------------------------------------------- 
{- Architecture Deliverable: -}
-- Aggregate Member : Architecture Deliverable
ArchitectureDeliverable : ∀ (u : Level) → ClassOfMixedOrderEntity u 
ArchitectureDeliverable u  = MixedOrderEntity u 



--  ArchitectureDeliverable is subTypeOf UnboundedMember
st-6bf178f2685976d3-8cfaf71a6852b042 : ∀ {u v} → (ArchitectureDeliverable u) ⊏⋆ₑ (UnboundedMember v)
st-6bf178f2685976d3-8cfaf71a6852b042 = trivialPolySubTypeOfEntity

--  ArchitectureDeliverable is subTypeOf BlockMember
st-6bf178f2685976d3-fb660d4b68699ec2 : ∀ {u v} → (ArchitectureDeliverable u) ⊏⋆ₑ (BlockMember v)
st-6bf178f2685976d3-fb660d4b68699ec2 = trivialPolySubTypeOfEntity

-- Membership relation
membershipOfArchitectureDeliverable : ∀ {u} →  Linkage ArchitectureProject (ArchitectureDeliverable u)
membershipOfArchitectureDeliverable = make_upwardNestingRelation "architectureDeliverable membership" "nested architectureDeliverable"

-- Aggregation relation
aggregationOfAssetBlockArchitectureDeliverable : ∀ {u v} →  Linkage (ArchitectureDeliverable u) (AssetBlock v)
aggregationOfAssetBlockArchitectureDeliverable = make_Relation "AssetBlock aggregation" "aggregated AssetBlock"

{- architectureDeliverable : derived relation obtained by composing
   membershipOfArchitectureDeliverable and aggregationOfAssetBlockArchitectureDeliverable
   It directly links an Architecture Project to the final aggregated AssetBlock
   hiding the reifying ArchitectureDeliverable
-}
architectureDeliverable : ∀ {u w} → Linkage ArchitectureProject (AssetBlock w)
architectureDeliverable {u} {w}  = membershipOfArchitectureDeliverable {u}   ∘  aggregationOfAssetBlockArchitectureDeliverable {w} 


