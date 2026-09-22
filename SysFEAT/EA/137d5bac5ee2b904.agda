{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Portolio: 
A Hardware Portolio is an Asset Portfolio aimed at developing and maintaining in operational conditions a set of Concrete Hardware Systems delivering Hardware Capabilitys required by Business Operations.The purpose of  Hardware Portolios is efficiency of Managed Hardwares, which must provide expected Hardware Capabilitys in the best cost / performance ratio.

Documentation : https://framework.sysfeat.com/pages/137d5bac5ee2b904.htm

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
st-137d5bac5ee2b904-26b8889c5eea8ab7 : HardwarePortolio ⊏ₑ AssetPortfolio
st-137d5bac5ee2b904-26b8889c5eea8ab7 = polySubTypeOf-identity

--  HardwarePortolio is subTypeOf HardwareManagementInitiative
st-137d5bac5ee2b904-24f8475766477e0a : HardwarePortolio ⊏ₑ HardwareManagementInitiative
st-137d5bac5ee2b904-24f8475766477e0a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Roadmap: 
Set of all Hardware Portfolio Stage of an Asset Portfolio that , coordinated by initiative milestones, establishes the roadmap for the Concrete Hardware System Assets under its supervision.
-}
roadmap :  Linkage HardwarePortolio HardwarePortfolioStage
roadmap = make_holonymyRelation "Roadmap" "Roadmap"

postulate -- roadmap is subTypeOf portfolioRoadmap
  st-24f849ac6647844d-f277fa24601bef67  : roadmap  ⊏⋆ᵣ  portfolioRoadmap

-- -------------------------------------------------------------------------------------------- 
{- Managed Hardware: 
A Managed Hardware represents the status of a Concrete Hardware System under the management of an Application Portfolio.
-}
-- Aggregate Member : Managed Hardware
ManagedHardware : ClassOfClassOfIndividual
ManagedHardware = ClassOfIndividual


--  ManagedHardware is subTypeOf ManagedResourceAsset
st-26b850db5eeaaa33-f57af6ca62d21904 : ManagedHardware ⊏⋆ₑ ManagedResourceAsset
st-26b850db5eeaaa33-f57af6ca62d21904 = polySubTypeOf-identity

-- Membership relation
membershipOfManagedHardware :  Linkage HardwarePortolio ManagedHardware
membershipOfManagedHardware = make_upwardNestingRelation "managedHardware membership" "nested managedHardware"

-- Aggregation relation
aggregationOfConcreteHardwareSystemManagedHardware :  Linkage ManagedHardware ConcreteHardwareSystem
aggregationOfConcreteHardwareSystemManagedHardware = make_Relation "ConcreteHardwareSystem aggregation" "aggregated ConcreteHardwareSystem"

{- managedHardware : derived relation obtained by composing
   membershipOfManagedHardware and aggregationOfConcreteHardwareSystemManagedHardware
   It directly links an Hardware Portolio to the final aggregated ConcreteHardwareSystem
   hiding the reifying ManagedHardware
-}
managedHardware : Linkage HardwarePortolio ConcreteHardwareSystem
managedHardware = membershipOfManagedHardware  ∘  aggregationOfConcreteHardwareSystemManagedHardware


