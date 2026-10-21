{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computing System: 
A Computing System is a system that can host and run software code ( Application code or Software Technology code) and to host data.Examples: Computer Devices, Computer Servers, Cloud Services.

Documentation : https://framework.sysfeat.com/pages/f4be0eda5ee1d6c0.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be0eda5ee1d6c0 where -- ========== Computing System

open import Agda.Primitive
open import SysFEAT.EA.d16006d362e085f2 public -- Technology Operating Asset
open import SysFEAT.EA.24035cc65fc7ad7f public -- Concrete Software System

ComputingSystem : ClassOfClassOfBoundedIndividual
ComputingSystem = ClassOfBoundedIndividual


--  ComputingSystem is subTypeOf TechnologyOperatingAsset
st-f4be0eda5ee1d6c0-d16006d362e085f2 : ComputingSystem ⊏ₑ TechnologyOperatingAsset
st-f4be0eda5ee1d6c0-d16006d362e085f2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Hosted Software: -}
-- Aggregate Member : Hosted Software
HostedSOftware : ClassOfClassOfBoundedIndividual
HostedSOftware = ClassOfBoundedIndividual



--  HostedSOftware is subTypeOf ConcreteSOftwareSystem
st-70ba9b2e64224962-24035cc65fc7ad7f : HostedSOftware ⊏ₑ ConcreteSOftwareSystem
st-70ba9b2e64224962-24035cc65fc7ad7f = polySubTypeOf-identity

-- Membership relation
membershipOfHostedSOftware :  Linkage ComputingSystem HostedSOftware
membershipOfHostedSOftware = make_upwardNestingRelation "hostedSOftware membership" "nested hostedSOftware"

-- Aggregation relation
aggregationOfConcreteSOftwareSystemHostedSOftware :  Linkage HostedSOftware ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemHostedSOftware = make_Relation "ConcreteSOftwareSystem aggregation" "aggregated ConcreteSOftwareSystem"

{- hostedSOftware : derived relation obtained by composing
   membershipOfHostedSOftware and aggregationOfConcreteSOftwareSystemHostedSOftware
   It directly links an Computing System to the final aggregated ConcreteSOftwareSystem
   hiding the reifying HostedSOftware
-}
hostedSOftware : Linkage ComputingSystem ConcreteSOftwareSystem
hostedSOftware = membershipOfHostedSOftware  ∘  aggregationOfConcreteSOftwareSystemHostedSOftware


