{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Eco-System: 
An Operating Eco-System is an Operating Context in which an Agent Type exists or lives for a specific purpose, interacting with partners.For instance, the operating context of an enterprise includes its customers and suppliers.

Documentation : https://framework.sysfeat.com/pages/ca35f48a5fc48686.htm

External references:
  OMG - UAF - Architecture: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Architecture
  Russell Ackoff - System of Concepts - Environment of a system: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#EnvironmentOfaSystem
  OpenGroup - OAA - Ecosystem: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#ecosystem
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ca35f48a5fc48686 where -- ========== Operating Eco-System

open import Agda.Primitive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection

OperatingEcoSystem : ClassOfClassOfBoundedIndividual
OperatingEcoSystem = ClassOfBoundedIndividual

--  OperatingEcoSystem is subTypeOf FunctionalAsset
st-ca35f48a5fc48686-a44fb6bc6748b088 : OperatingEcoSystem ⊏ₑ FunctionalAsset
st-ca35f48a5fc48686-a44fb6bc6748b088 = polySubTypeOf-identity

--  OperatingEcoSystem withAspect AssetBlock
st-ca35f48a5fc48686-0eb95f356855bf94 : OperatingEcoSystem ⊏ₐₑ (AssetBlock (lsuc(lzero)))
st-ca35f48a5fc48686-0eb95f356855bf94 = polySubTypeOf-identity

-- == Relationships =======================

{- Operating Connector: -}
-- Aggregate Member : Operating Connector
OperatingConnector : ClassOfClassOfIndividual
OperatingConnector = ClassOfIndividual

-- Membership relation
membershipOfOperatingConnector :  Linkage OperatingEcoSystem OperatingConnector
membershipOfOperatingConnector = make_upwardNestingRelation "operatingConnector membership" "nested operatingConnector"

-- Aggregation relation
aggregationOfOperatingConnectionOperatingConnector :  Linkage OperatingConnector OperatingConnection
aggregationOfOperatingConnectionOperatingConnector = make_Relation "OperatingConnection aggregation" "aggregated OperatingConnection"

{- operatingConnector : derived relation obtained by composing
   membershipOfOperatingConnector and aggregationOfOperatingConnectionOperatingConnector
   It directly links an Operating Eco-System to the final aggregated OperatingConnection
   hiding the reifying OperatingConnector
-}
operatingConnector : Linkage OperatingEcoSystem OperatingConnection
operatingConnector = membershipOfOperatingConnector  ∘  aggregationOfOperatingConnectionOperatingConnector

postulate -- operatingConnector is subTypeOf orderingConnector
  st-3d3f4b4062013550-478a4a4468565425  : operatingConnector   ⊏⋆ᵣ  orderingConnector {lzero} {lzero}


{- Ecosystem Member: -}
-- Aggregate Member : Ecosystem Member
EcosystemMember : ClassOfClassOfIndividual
EcosystemMember = ClassOfIndividual

-- Membership relation
membershipOfEcosystemMember :  Linkage OperatingEcoSystem EcosystemMember
membershipOfEcosystemMember = make_upwardNestingRelation "ecosystemMember membership" "nested ecosystemMember"

-- Aggregation relation
aggregationOfOperatingEcoSystemEcosystemMember :  Linkage EcosystemMember OperatingEcoSystem
aggregationOfOperatingEcoSystemEcosystemMember = make_Relation "OperatingEcoSystem aggregation" "aggregated OperatingEcoSystem"

{- ecosystemMember : derived relation obtained by composing
   membershipOfEcosystemMember and aggregationOfOperatingEcoSystemEcosystemMember
   It directly links an Operating Eco-System to the final aggregated OperatingEcoSystem
   hiding the reifying EcosystemMember
-}
ecosystemMember : Linkage OperatingEcoSystem OperatingEcoSystem
ecosystemMember = membershipOfEcosystemMember  ∘  aggregationOfOperatingEcoSystemEcosystemMember

postulate -- ecosystemMember is subTypeOf boundedMember
  st-3d3f4aed6201346c-0eb999956855e070  : ecosystemMember   ⊏⋆ᵣ  boundedMember {lzero} {lzero}

