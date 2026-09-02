{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Portolio: 
A Hardware Portolio is an Asset Portfolio aimed at developing and maintaining in operational conditions a set of Concrete Hardware Systems delivering Hardware Capabilitys required by Business Operations.The purpose of  Hardware Portolios is efficiency of Managed Hardwares, which must provide expected Hardware Capabilitys in the best cost / performance ratio.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.137d5bac5ee2b904 where -- ========== Hardware Portolio

open import Agda.Primitive
open import SysFEAT.EA.26b8889c5eea8ab7 public -- Asset Portfolio
open import SysFEAT.EA.24f8475766477e0a public -- Hardware Management Initiative
open import SysFEAT.EA.24f84973664783b4 public -- Hardware Portfolio Stage
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System

HardwarePortolio : ClassOfBoundedIndividual
HardwarePortolio = BoundedIndividual

--  HardwarePortolio is subTypeOf AssetPortfolio
st-6ce6246b5ef388d7 : HardwarePortolio ⊏ₑ AssetPortfolio
st-6ce6246b5ef388d7 = polySubTypeOf-identity

--  HardwarePortolio is subTypeOf HardwareManagementInitiative
st-92a7f53367ce57b1 : HardwarePortolio ⊏ₑ HardwareManagementInitiative
st-92a7f53367ce57b1 = polySubTypeOf-identity

-- == Relationships =======================

{- Roadmap: 
Set of all Hardware Portfolio Stage of an Asset Portfolio that , coordinated by initiative milestones, establishes the roadmap for the Concrete Hardware System Assets under its supervision.
-}
roadmap :  Linkage HardwarePortolio HardwarePortfolioStage
roadmap = make_holonymyRelation "Roadmap" "roadmap"

postulate -- roadmap is subTypeOf portfolioRoadmap
  st-24f849ac6647844d-f277fa24601bef67  : roadmap   ⊏⋆ᵣ  portfolioRoadmap 

{- Managed Hardware: 
A Managed Hardware represents the status of a Concrete Hardware System under the management of an Application Portfolio.
-}
-- Aggregate Member : Managed Hardware
ManagedHardware : ClassOfClassOfIndividual
ManagedHardware = ClassOfIndividual

-- Membership relation
membershipOfManagedHardware :  Linkage HardwarePortolio ManagedHardware
membershipOfManagedHardware = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConcreteHardwareSystemManagedHardware :  Linkage ManagedHardware ConcreteHardwareSystem
aggregationOfConcreteHardwareSystemManagedHardware = aggregationOfBuildingBlock

{- managedHardware : derived relation obtained by composing
   membershipOfManagedHardware and aggregationOfConcreteHardwareSystemManagedHardware
   It directly links an Hardware Portolio to the final aggregated ConcreteHardwareSystem
   hiding the reifying ManagedHardware
-}
managedHardware : Linkage HardwarePortolio ConcreteHardwareSystem
managedHardware = membershipOfManagedHardware  ∘  aggregationOfConcreteHardwareSystemManagedHardware
