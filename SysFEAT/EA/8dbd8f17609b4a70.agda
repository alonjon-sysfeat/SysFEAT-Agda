{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

BCM System: 
A BCM System is an Assurance System that establishes, implements, operates, monitors, reviews , maintains and improves business continuity.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8dbd8f17609b4a70 where -- ========== BCM System

open import Agda.Primitive
open import SysFEAT.EA.07ca18d25dd85477 public -- Assurance System
open import SysFEAT.EA.2cff31375eda90bd public -- Process Family
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset
open import SysFEAT.EA.57dfc52d550932ef public -- Business Process

BCMSystem : ClassOfBoundedIndividual
BCMSystem = BoundedIndividual

--  BCMSystem is subTypeOf AssuranceSystem
st-8dbd8f8d609b4afe : BCMSystem ⊏ₑ AssuranceSystem
st-8dbd8f8d609b4afe = polySubTypeOf-identity

-- == Relationships =======================

{- Critical Process: -}
-- Aggregate Member : Critical Process
CriticalProcess : ClassOfClassOfIndividual
CriticalProcess = ClassOfIndividual

-- Membership relation
membershipOfCriticalProcess :  Linkage BCMSystem CriticalProcess
membershipOfCriticalProcess = membershipOfAggregateMember

-- Aggregation relation
aggregationOfProcessFamilyCriticalProcess :  Linkage CriticalProcess ProcessFamily
aggregationOfProcessFamilyCriticalProcess = aggregationOfBuildingBlock

{- criticalProcess : derived relation obtained by composing
   membershipOfCriticalProcess and aggregationOfProcessFamilyCriticalProcess
   It directly links an BCM System to the final aggregated ProcessFamily
   hiding the reifying CriticalProcess
-}
criticalProcess : Linkage BCMSystem ProcessFamily
criticalProcess = membershipOfCriticalProcess  ∘  aggregationOfProcessFamilyCriticalProcess

{- Critical Operating Asset: -}
-- Aggregate Member : Critical Operating Asset
CriticalOperatingAsset : ClassOfClassOfIndividual
CriticalOperatingAsset = ClassOfIndividual

-- Membership relation
membershipOfCriticalOperatingAsset :  Linkage BCMSystem CriticalOperatingAsset
membershipOfCriticalOperatingAsset = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOperatingAssetCriticalOperatingAsset :  Linkage CriticalOperatingAsset BusinessOperatingAsset
aggregationOfBusinessOperatingAssetCriticalOperatingAsset = aggregationOfBuildingBlock

{- criticalOperatingAsset : derived relation obtained by composing
   membershipOfCriticalOperatingAsset and aggregationOfBusinessOperatingAssetCriticalOperatingAsset
   It directly links an BCM System to the final aggregated BusinessOperatingAsset
   hiding the reifying CriticalOperatingAsset
-}
criticalOperatingAsset : Linkage BCMSystem BusinessOperatingAsset
criticalOperatingAsset = membershipOfCriticalOperatingAsset  ∘  aggregationOfBusinessOperatingAssetCriticalOperatingAsset

{- Critical Activity: -}
-- Aggregate Member : Critical Activity
CriticalActivity : ClassOfClassOfIndividual
CriticalActivity = ClassOfIndividual

-- Membership relation
membershipOfCriticalActivity :  Linkage BCMSystem CriticalActivity
membershipOfCriticalActivity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessProcessCriticalActivity :  Linkage CriticalActivity BusinessProcess
aggregationOfBusinessProcessCriticalActivity = aggregationOfBuildingBlock

{- criticalActivity : derived relation obtained by composing
   membershipOfCriticalActivity and aggregationOfBusinessProcessCriticalActivity
   It directly links an BCM System to the final aggregated BusinessProcess
   hiding the reifying CriticalActivity
-}
criticalActivity : Linkage BCMSystem BusinessProcess
criticalActivity = membershipOfCriticalActivity  ∘  aggregationOfBusinessProcessCriticalActivity
