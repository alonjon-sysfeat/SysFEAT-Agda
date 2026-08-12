{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture principle: 
Architecture principles are general guidelines (Policy) that serve as constraints that guide design decisions and shape the overall structure of a system. They:- Establish boundaries for design choices.- Ensure consistency across the system- Promote desired qualities (Condition Property: e.g., scalability, maintainability)- Align architecture with business goals and requirementsArchitecture principles act as guardrails, helping architects make informed decisions while limiting options to those that best serve systems efficiency and robustness.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c02a368976c94 where -- ========== Architecture principle

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.4b945e8668a47f80 public -- Policy Framework Asset
open import SysFEAT.EA.952eab2a67285b02 public -- Architecture Principle Category

Architectureprinciple : PropertyType
Architectureprinciple = ClassOfProperty

postulate --  Architectureprinciple is subTypeOf Policy
  st-07231b315f4eb49d : Architectureprinciple ⊏ₑ Policy

postulate --  Architectureprinciple withAspect PolicyFrameworkAsset
  st-4b94610f68a48539 : Architectureprinciple ⊏ₐₑ (PolicyFrameworkAsset (lsuc(lzero)))

-- == Relationships =======================

{- Principle Category: -}
principleCategory :  Linkage Architectureprinciple ArchitecturePrincipleCategory
principleCategory = make_instanceOf "Principle Category" "principleCategory"

