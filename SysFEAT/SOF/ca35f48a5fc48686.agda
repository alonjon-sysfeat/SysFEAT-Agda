{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Eco-System: 
An Operating Eco-System is an Operating Context in which an Agent Type exists or lives for a specific purpose, interacting with partners.For instance, the operating context of an enterprise includes its customers and suppliers.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ca35f48a5fc48686 where -- ========== Operating Eco-System

open import Agda.Primitive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection

OperatingEcoSystem : ClassOfClassOfBoundedIndividual
OperatingEcoSystem = ClassOfBoundedIndividual

postulate --  OperatingEcoSystem is subTypeOf FunctionalAsset
  st-299e3b026848733f : OperatingEcoSystem ⊏ₑ FunctionalAsset

postulate --  OperatingEcoSystem withAspect AssetBlock
  st-9397bd8e68778368 : OperatingEcoSystem ⊏ₐₑ (AssetBlock (lsuc(lzero)))

-- == Relationships =======================

{- Operating Connector: -}
-- Aggregate Member : Operating Connector
OperatingConnector : ClassOfClassOfIndividual
OperatingConnector = ClassOfIndividual

-- Membership relation
membershipOfOperatingConnector :  Linkage OperatingEcoSystem OperatingConnector
membershipOfOperatingConnector = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingConnectionOperatingConnector :  Linkage OperatingConnector OperatingConnection
aggregationOfOperatingConnectionOperatingConnector = aggregationOfBuildingBlock

{- operatingConnector : derived relation obtained by composing
   membershipOfOperatingConnector and aggregationOfOperatingConnectionOperatingConnector
   It directly links an Operating Eco-System to the final aggregated OperatingConnection
   hiding the reifying OperatingConnector
-}
operatingConnector : Linkage OperatingEcoSystem OperatingConnection
operatingConnector = membershipOfOperatingConnector  ∘  aggregationOfOperatingConnectionOperatingConnector

{- Ecosystem Member: -}
-- Aggregate Member : Ecosystem Member
EcosystemMember : ClassOfClassOfIndividual
EcosystemMember = ClassOfIndividual

-- Membership relation
membershipOfEcosystemMember :  Linkage OperatingEcoSystem EcosystemMember
membershipOfEcosystemMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingEcoSystemEcosystemMember :  Linkage EcosystemMember OperatingEcoSystem
aggregationOfOperatingEcoSystemEcosystemMember = aggregationOfBuildingBlock

{- ecosystemMember : derived relation obtained by composing
   membershipOfEcosystemMember and aggregationOfOperatingEcoSystemEcosystemMember
   It directly links an Operating Eco-System to the final aggregated OperatingEcoSystem
   hiding the reifying EcosystemMember
-}
ecosystemMember : Linkage OperatingEcoSystem OperatingEcoSystem
ecosystemMember = membershipOfEcosystemMember  ∘  aggregationOfOperatingEcoSystemEcosystemMember
