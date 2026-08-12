{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Container: 
Container of Model Building Blocks used to measure, assess, monitor transformation Initiatives .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0f64116a68597a27 where -- ========== Governance Container

open import Agda.Primitive
open import SysFEAT.SOF.0eb95dce6855be2e public -- Model Container
open import SysFEAT.SOF.0f641043685975c9 public -- Governance Building Block

GovernanceContainer : ∀ (u : Level) → ClassOfMixedOrderEntity u
GovernanceContainer u = MixedOrderEntity u

postulate --  GovernanceContainer is subTypeOf ModelContainer
  st-0f64119b68597a81 : ∀ {u v} → (GovernanceContainer u) ⊏⋆ₑ (ModelContainer v)

-- == Relationships =======================

{- Packaged Governance Block: -}
packagedGovernanceBlock : ∀ {u v} →  Linkage (GovernanceContainer u) (GovernanceBuildingBlock v)
packagedGovernanceBlock = make_nestingRelation "Packaged Governance Block" "packagedGovernanceBlock"

postulate -- packagedGovernanceBlock is subTypeOf packagedModelBlock
  st-0f6410c668597695-3346b0ad687846e9  : ∀ {u v} → packagedGovernanceBlock {u} {v}  ⊏⋆ᵣ  packagedModelBlock {u} {v}
