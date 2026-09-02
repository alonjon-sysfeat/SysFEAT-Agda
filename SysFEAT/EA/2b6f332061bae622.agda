{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Resource Ecosystem: 
A Business Resource Ecosystem is an Operating Eco-System  that describes the operating context in which a Business Agent Type exists or lives for a specific purpose.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b6f332061bae622 where -- ========== Business Resource Ecosystem

open import Agda.Primitive
open import SysFEAT.EA.f8e64b51621dd3f3 public -- Resource Operating Ecosystem
open import SysFEAT.EA.7c4097c855271c8e public -- Conceptual Environment
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset

BusinessResourceEcosystem : ClassOfClassOfBoundedIndividual
BusinessResourceEcosystem = ClassOfBoundedIndividual

--  BusinessResourceEcosystem is subTypeOf ResourceOperatingEcosystem
st-f8e64099621fe1a3 : BusinessResourceEcosystem ⊏ₑ ResourceOperatingEcosystem
st-f8e64099621fe1a3 = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Conceptual Environment: -}
realizedConceptualEnvironment :  Linkage BusinessResourceEcosystem ConceptualEnvironment
realizedConceptualEnvironment = make_subTypeOf "Realized Conceptual Environment" "realizedConceptualEnvironment"


{- Business Ecosystem Connection: -}
-- Aggregate Member : Business Ecosystem Connection
BusinessEcosystemConnection : ClassOfClassOfIndividual
BusinessEcosystemConnection = ClassOfIndividual

-- Membership relation
membershipOfBusinessEcosystemConnection :  Linkage BusinessResourceEcosystem BusinessEcosystemConnection
membershipOfBusinessEcosystemConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingConnectionBusinessEcosystemConnection :  Linkage BusinessEcosystemConnection OperatingConnection
aggregationOfOperatingConnectionBusinessEcosystemConnection = aggregationOfBuildingBlock

{- businessEcosystemConnection : derived relation obtained by composing
   membershipOfBusinessEcosystemConnection and aggregationOfOperatingConnectionBusinessEcosystemConnection
   It directly links an Business Resource Ecosystem to the final aggregated OperatingConnection
   hiding the reifying BusinessEcosystemConnection
-}
businessEcosystemConnection : Linkage BusinessResourceEcosystem OperatingConnection
businessEcosystemConnection = membershipOfBusinessEcosystemConnection  ∘  aggregationOfOperatingConnectionBusinessEcosystemConnection

{- Resource Ecosystem Part: -}
-- Aggregate Member : Resource Ecosystem Part
ResourceEcosystemPart : ClassOfClassOfIndividual
ResourceEcosystemPart = ClassOfIndividual

-- Membership relation
membershipOfResourceEcosystemPart :  Linkage BusinessResourceEcosystem ResourceEcosystemPart
membershipOfResourceEcosystemPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOperatingAssetResourceEcosystemPart :  Linkage ResourceEcosystemPart BusinessOperatingAsset
aggregationOfBusinessOperatingAssetResourceEcosystemPart = aggregationOfBuildingBlock

{- resourceEcosystemPart : derived relation obtained by composing
   membershipOfResourceEcosystemPart and aggregationOfBusinessOperatingAssetResourceEcosystemPart
   It directly links an Business Resource Ecosystem to the final aggregated BusinessOperatingAsset
   hiding the reifying ResourceEcosystemPart
-}
resourceEcosystemPart : Linkage BusinessResourceEcosystem BusinessOperatingAsset
resourceEcosystemPart = membershipOfResourceEcosystemPart  ∘  aggregationOfBusinessOperatingAssetResourceEcosystemPart
