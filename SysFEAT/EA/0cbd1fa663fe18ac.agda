{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology System: 
A Technology System is a Resource Agent Type which produces and reacts to Technology Outcome Events through Technology Interfaces. Technology Systems are enablers of Business Systems. They do not directly deliver Business Outcome Events to internal or external customers. They deliver Technology Outcome Events required by Business Systems to operate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0cbd1fa663fe18ac where -- ========== Technology System

open import Agda.Primitive
open import SysFEAT.EA.d16006d362e085f2 public -- Technology Operating Asset
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.EA.26b8382f5eeae265 public -- Technology Interface

TechnologySystem : ClassOfClassOfBoundedIndividual
TechnologySystem = ClassOfBoundedIndividual

--  TechnologySystem is subTypeOf TechnologyOperatingAsset
st-0cbd21f463fe18f3 : TechnologySystem ⊏ₑ TechnologyOperatingAsset
st-0cbd21f463fe18f3 = polySubTypeOf-identity

--  TechnologySystem is subTypeOf ResourceAgentType
st-6a70d20d6787808c : TechnologySystem ⊏ₑ ResourceAgentType
st-6a70d20d6787808c = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Connection: -}
-- Aggregate Member : Technology Connection
TechnologyConnection : ClassOfClassOfIndividual
TechnologyConnection = ClassOfIndividual

-- Membership relation
membershipOfTechnologyConnection :  Linkage TechnologySystem TechnologyConnection
membershipOfTechnologyConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyInterfaceTechnologyConnection :  Linkage TechnologyConnection TechnologyInterface
aggregationOfTechnologyInterfaceTechnologyConnection = aggregationOfBuildingBlock

{- technologyConnection : derived relation obtained by composing
   membershipOfTechnologyConnection and aggregationOfTechnologyInterfaceTechnologyConnection
   It directly links an Technology System to the final aggregated TechnologyInterface
   hiding the reifying TechnologyConnection
-}
technologyConnection : Linkage TechnologySystem TechnologyInterface
technologyConnection = membershipOfTechnologyConnection  ∘  aggregationOfTechnologyInterfaceTechnologyConnection

{- Technology System Member: -}
-- Aggregate Member : Technology System Member
TechnologySystemMember : ClassOfClassOfIndividual
TechnologySystemMember = ClassOfIndividual

-- Membership relation
membershipOfTechnologySystemMember :  Linkage TechnologySystem TechnologySystemMember
membershipOfTechnologySystemMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyOperatingAssetTechnologySystemMember :  Linkage TechnologySystemMember TechnologyOperatingAsset
aggregationOfTechnologyOperatingAssetTechnologySystemMember = aggregationOfBuildingBlock

{- technologySystemMember : derived relation obtained by composing
   membershipOfTechnologySystemMember and aggregationOfTechnologyOperatingAssetTechnologySystemMember
   It directly links an Technology System to the final aggregated TechnologyOperatingAsset
   hiding the reifying TechnologySystemMember
-}
technologySystemMember : Linkage TechnologySystem TechnologyOperatingAsset
technologySystemMember = membershipOfTechnologySystemMember  ∘  aggregationOfTechnologyOperatingAssetTechnologySystemMember
