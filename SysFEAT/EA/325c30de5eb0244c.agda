{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Map: 


Documentation : https://framework.sysfeat.com/pages/325c30de5eb0244c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.325c30de5eb0244c where -- ========== Logical Data Map

open import Agda.Primitive
open import SysFEAT.EA.6d2b80db5fbb700b public -- Data Map
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset
open import SysFEAT.EA.461950e9560d4461 public -- Logical Data Domain

LogicalDataMap : ClassOfClassOfBoundedIndividual
LogicalDataMap = ClassOfBoundedIndividual

--  LogicalDataMap is subTypeOf DataMap
st-325c30de5eb0244c-6d2b80db5fbb700b : LogicalDataMap ⊏ₑ DataMap
st-325c30de5eb0244c-6d2b80db5fbb700b = polySubTypeOf-identity

--  LogicalDataMap is subTypeOf LogicalDataAsset
st-325c30de5eb0244c-fd1bf2a45fbc64fb : LogicalDataMap ⊏ₑ LogicalDataAsset
st-325c30de5eb0244c-fd1bf2a45fbc64fb = polySubTypeOf-identity

-- == Relationships =======================

{- External Data Domain Part: -}
-- Aggregate Member : External Data Domain Part
ExternalDataDomainPart : ClassOfClassOfIndividual
ExternalDataDomainPart = ClassOfIndividual

-- Membership relation
membershipOfExternalDataDomainPart :  Linkage LogicalDataMap ExternalDataDomainPart
membershipOfExternalDataDomainPart = make_upwardNestingRelation "externalDataDomainPart membership" "nested externalDataDomainPart"

-- Aggregation relation
aggregationOfLogicalDataDomainExternalDataDomainPart :  Linkage ExternalDataDomainPart LogicalDataDomain
aggregationOfLogicalDataDomainExternalDataDomainPart = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- externalDataDomainPart : derived relation obtained by composing
   membershipOfExternalDataDomainPart and aggregationOfLogicalDataDomainExternalDataDomainPart
   It directly links an Logical Data Map to the final aggregated LogicalDataDomain
   hiding the reifying ExternalDataDomainPart
-}
externalDataDomainPart : Linkage LogicalDataMap LogicalDataDomain
externalDataDomainPart = membershipOfExternalDataDomainPart  ∘  aggregationOfLogicalDataDomainExternalDataDomainPart

postulate -- externalDataDomainPart is subTypeOf externalInformationArea
  st-cb08cf795ed040b2-dfa4e2b35ebb4ee8  : externalDataDomainPart   ⊏⋆ᵣ  externalInformationArea 
postulate -- externalDataDomainPart is subTypeOf externalDataArea
  st-cb08cf795ed040b2-fd1bf5b05fbc6c5a  : externalDataDomainPart   ⊏⋆ᵣ  externalDataArea 


{- Logical Data Area Member: -}
-- Aggregate Member : Logical Data Area Member
LogicalDataAreaMember : ClassOfClassOfIndividual
LogicalDataAreaMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataAreaMember :  Linkage LogicalDataMap LogicalDataAreaMember
membershipOfLogicalDataAreaMember = make_upwardNestingRelation "logicalDataAreaMember membership" "nested logicalDataAreaMember"

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataAreaMember :  Linkage LogicalDataAreaMember LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataAreaMember = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- logicalDataAreaMember : derived relation obtained by composing
   membershipOfLogicalDataAreaMember and aggregationOfLogicalDataDomainLogicalDataAreaMember
   It directly links an Logical Data Map to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataAreaMember
-}
logicalDataAreaMember : Linkage LogicalDataMap LogicalDataDomain
logicalDataAreaMember = membershipOfLogicalDataAreaMember  ∘  aggregationOfLogicalDataDomainLogicalDataAreaMember

postulate -- logicalDataAreaMember is subTypeOf dataDomainMember
  st-fd1bf4d65fbc69be-6d2b81965fbb71ad  : logicalDataAreaMember   ⊏⋆ᵣ  dataDomainMember 

