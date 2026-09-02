{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Product: 
A Product is a state of  a Resource Asset that represents merchandises offered for sale, either goods (produced as the result of manufacturing) or services (some work done by a Business Agent Type  which produces Outcomes that benefits another Business Agent Type).Products are defined by their unique Value Propositions.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.56ea5ff966047632 where -- ========== Product

open import Agda.Primitive
open import SysFEAT.EA.d9f4dcc5688d5969 public -- Resource Asset
open import SysFEAT.EA.21ed240a689c08df public -- Value Proposition
open import SysFEAT.EA.d1600c7062e093eb public -- Capability Configuration

Product : ClassOfClassOfBoundedIndividual
Product = ClassOfBoundedIndividual

--  Product is subTypeOf ResourceAsset
st-56ea62c766047924 : Product ⊏ₑ ResourceAsset
st-56ea62c766047924 = polySubTypeOf-identity

-- == Relationships =======================

{- Product Characteristic: 
A Product Characteristic is expressed by a Value Proposition which defines the Functional Value (Business Capability) of a Product and its Non Functional Value (Condition Property).
-}
-- Aggregate Member : Product Characteristic
ProductCharacteristic : ClassOfClassOfIndividual
ProductCharacteristic = ClassOfIndividual

-- Membership relation
membershipOfProductCharacteristic :  Linkage Product ProductCharacteristic
membershipOfProductCharacteristic = membershipOfAggregateMember

-- Aggregation relation
aggregationOfValuePropositionProductCharacteristic :  Linkage ProductCharacteristic ValueProposition
aggregationOfValuePropositionProductCharacteristic = aggregationOfBuildingBlock

{- productCharacteristic : derived relation obtained by composing
   membershipOfProductCharacteristic and aggregationOfValuePropositionProductCharacteristic
   It directly links an Product to the final aggregated ValueProposition
   hiding the reifying ProductCharacteristic
-}
productCharacteristic : Linkage Product ValueProposition
productCharacteristic = membershipOfProductCharacteristic  ∘  aggregationOfValuePropositionProductCharacteristic

{- Goods Offering: 
Goods Offerings are Resource Functional Assets, productized as goods in the context of an enterprise offering (Products).
-}
-- Aggregate Member : Goods Offering
GoodsOffering : ClassOfClassOfIndividual
GoodsOffering = ClassOfIndividual

-- Membership relation
membershipOfGoodsOffering :  Linkage Product GoodsOffering
membershipOfGoodsOffering = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAssetGoodsOffering :  Linkage GoodsOffering ResourceAsset
aggregationOfResourceAssetGoodsOffering = aggregationOfBuildingBlock

{- goodsOffering : derived relation obtained by composing
   membershipOfGoodsOffering and aggregationOfResourceAssetGoodsOffering
   It directly links an Product to the final aggregated ResourceAsset
   hiding the reifying GoodsOffering
-}
goodsOffering : Linkage Product ResourceAsset
goodsOffering = membershipOfGoodsOffering  ∘  aggregationOfResourceAssetGoodsOffering

{- Service Offering: 
Service Offerings are exposed Business Service Interfaces, productized as services provisions the context of an enterprise offering (Products), 
-}
-- Aggregate Member : Service Offering
ServiceOffering : ClassOfClassOfIndividual
ServiceOffering = ClassOfIndividual

-- Membership relation
membershipOfServiceOffering :  Linkage Product ServiceOffering
membershipOfServiceOffering = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCapabilityConfigurationServiceOffering :  Linkage ServiceOffering CapabilityConfiguration
aggregationOfCapabilityConfigurationServiceOffering = aggregationOfBuildingBlock

{- serviceOffering : derived relation obtained by composing
   membershipOfServiceOffering and aggregationOfCapabilityConfigurationServiceOffering
   It directly links an Product to the final aggregated CapabilityConfiguration
   hiding the reifying ServiceOffering
-}
serviceOffering : Linkage Product CapabilityConfiguration
serviceOffering = membershipOfServiceOffering  ∘  aggregationOfCapabilityConfigurationServiceOffering
