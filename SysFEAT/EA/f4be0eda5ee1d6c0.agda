{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computing System: 
A Computing System is a system that can host and run software code ( Application code or Software Technology code) and to host data.Examples: Computer Devices, Computer Servers, Cloud Services.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be0eda5ee1d6c0 where -- ========== Computing System

open import Agda.Primitive
open import SysFEAT.EA.d16006d362e085f2 public -- Technology Operating Asset
open import SysFEAT.EA.24035cc65fc7ad7f public -- Concrete Software System

ComputingSystem : ClassOfClassOfBoundedIndividual
ComputingSystem = ClassOfBoundedIndividual

--  ComputingSystem is subTypeOf TechnologyOperatingAsset
st-d160098862e08e01 : ComputingSystem ⊏ₑ TechnologyOperatingAsset
st-d160098862e08e01 = polySubTypeOf-identity

-- == Relationships =======================

{- Hosted Software: -}
-- Aggregate Member : Hosted Software
HostedSOftware : ClassOfClassOfIndividual
HostedSOftware = ClassOfIndividual

-- Membership relation
membershipOfHostedSOftware :  Linkage ComputingSystem HostedSOftware
membershipOfHostedSOftware = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConcreteSOftwareSystemHostedSOftware :  Linkage HostedSOftware ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemHostedSOftware = aggregationOfBuildingBlock

{- hostedSOftware : derived relation obtained by composing
   membershipOfHostedSOftware and aggregationOfConcreteSOftwareSystemHostedSOftware
   It directly links an Computing System to the final aggregated ConcreteSOftwareSystem
   hiding the reifying HostedSOftware
-}
hostedSOftware : Linkage ComputingSystem ConcreteSOftwareSystem
hostedSOftware = membershipOfHostedSOftware  ∘  aggregationOfConcreteSOftwareSystemHostedSOftware
