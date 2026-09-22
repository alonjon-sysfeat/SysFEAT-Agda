{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Resource Ecosystem: 
A Business Resource Ecosystem is an Operating Eco-System  that describes the operating context in which a Business Agent Type exists or lives for a specific purpose.

Documentation : https://framework.sysfeat.com/pages/2b6f332061bae622.htm

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
st-2b6f332061bae622-f8e64b51621dd3f3 : BusinessResourceEcosystem ⊏ₑ ResourceOperatingEcosystem
st-2b6f332061bae622-f8e64b51621dd3f3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Realized Conceptual Environment: -}
realizedConceptualEnvironment :  Linkage BusinessResourceEcosystem ConceptualEnvironment
realizedConceptualEnvironment = make_subTypeOf "Realized Conceptual Environment" "Realized Conceptual Environment"


-- -------------------------------------------------------------------------------------------- 
{- Business Ecosystem Connection: -}
-- Aggregate Member : Business Ecosystem Connection
BusinessEcosystemConnection : ClassOfClassOfIndividual
BusinessEcosystemConnection = ClassOfIndividual


--  BusinessEcosystemConnection is subTypeOf EnterpriseEcosystemConnection
st-f8e7db56621f0cef-f8e7b91f621f01e9 : BusinessEcosystemConnection ⊏ₑ EnterpriseEcosystemConnection
st-f8e7db56621f0cef-f8e7b91f621f01e9 = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessEcosystemConnection :  Linkage BusinessResourceEcosystem BusinessEcosystemConnection
membershipOfBusinessEcosystemConnection = make_upwardNestingRelation "businessEcosystemConnection membership" "nested businessEcosystemConnection"

-- Aggregation relation
aggregationOfOperatingConnectionBusinessEcosystemConnection :  Linkage BusinessEcosystemConnection OperatingConnection
aggregationOfOperatingConnectionBusinessEcosystemConnection = make_Relation "OperatingConnection aggregation" "aggregated OperatingConnection"

{- businessEcosystemConnection : derived relation obtained by composing
   membershipOfBusinessEcosystemConnection and aggregationOfOperatingConnectionBusinessEcosystemConnection
   It directly links an Business Resource Ecosystem to the final aggregated OperatingConnection
   hiding the reifying BusinessEcosystemConnection
-}
businessEcosystemConnection : Linkage BusinessResourceEcosystem OperatingConnection
businessEcosystemConnection = membershipOfBusinessEcosystemConnection  ∘  aggregationOfOperatingConnectionBusinessEcosystemConnection



-- -------------------------------------------------------------------------------------------- 
{- Resource Ecosystem Part: -}
-- Aggregate Member : Resource Ecosystem Part
ResourceEcosystemPart : ClassOfClassOfBoundedIndividual
ResourceEcosystemPart = ClassOfBoundedIndividual



--  ResourceEcosystemPart is subTypeOf EnterpriseEcosystemPart
st-95129626620b544c-f8e6b83c621fffe6 : ResourceEcosystemPart ⊏ₑ EnterpriseEcosystemPart
st-95129626620b544c-f8e6b83c621fffe6 = polySubTypeOf-identity

--  ResourceEcosystemPart is subTypeOf BusinessOperatingAsset
st-95129626620b544c-62466ea661b80d09 : ResourceEcosystemPart ⊏ₑ BusinessOperatingAsset
st-95129626620b544c-62466ea661b80d09 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceEcosystemPart :  Linkage BusinessResourceEcosystem ResourceEcosystemPart
membershipOfResourceEcosystemPart = make_upwardNestingRelation "resourceEcosystemPart membership" "nested resourceEcosystemPart"

-- Aggregation relation
aggregationOfBusinessOperatingAssetResourceEcosystemPart :  Linkage ResourceEcosystemPart BusinessOperatingAsset
aggregationOfBusinessOperatingAssetResourceEcosystemPart = make_Relation "BusinessOperatingAsset aggregation" "aggregated BusinessOperatingAsset"

{- resourceEcosystemPart : derived relation obtained by composing
   membershipOfResourceEcosystemPart and aggregationOfBusinessOperatingAssetResourceEcosystemPart
   It directly links an Business Resource Ecosystem to the final aggregated BusinessOperatingAsset
   hiding the reifying ResourceEcosystemPart
-}
resourceEcosystemPart : Linkage BusinessResourceEcosystem BusinessOperatingAsset
resourceEcosystemPart = membershipOfResourceEcosystemPart  ∘  aggregationOfBusinessOperatingAssetResourceEcosystemPart


