{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Domain: 
A Logical Data Domain is used to define a logical data structure made up of Logical Data Entity(ies) and data views.

Documentation : https://framework.sysfeat.com/pages/461950e9560d4461.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.461950e9560d4461 where -- ========== Logical Data Domain

open import Agda.Primitive
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element

LogicalDataDomain : ClassOfClassOfBoundedIndividual
LogicalDataDomain = ClassOfBoundedIndividual

--  LogicalDataDomain is subTypeOf DataDomain
st-461950e9560d4461-325c32165eb02a4a : LogicalDataDomain ⊏ₑ DataDomain
st-461950e9560d4461-325c32165eb02a4a = polySubTypeOf-identity

--  LogicalDataDomain is subTypeOf LogicalDataAsset
st-461950e9560d4461-fd1bf2a45fbc64fb : LogicalDataDomain ⊏ₑ LogicalDataAsset
st-461950e9560d4461-fd1bf2a45fbc64fb = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Logical Domain Object: -}
-- Aggregate Member : Logical Domain Object
LogicalDomainObject : ClassOfClassOfBoundedIndividual
LogicalDomainObject = ClassOfBoundedIndividual



--  LogicalDomainObject is subTypeOf DomainDataObject
st-cb08cfb55ed041cb-6d2b7d9e5fbb65f3 : LogicalDomainObject ⊏ₑ DomainDataObject
st-cb08cfb55ed041cb-6d2b7d9e5fbb65f3 = polySubTypeOf-identity

--  LogicalDomainObject is subTypeOf LogicalDataElement
st-cb08cfb55ed041cb-2b5858b85eec51d9 : LogicalDomainObject ⊏ₑ LogicalDataElement
st-cb08cfb55ed041cb-2b5858b85eec51d9 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalDomainObject :  Linkage LogicalDataDomain LogicalDomainObject
membershipOfLogicalDomainObject = make_upwardNestingRelation "logicalDomainObject membership" "nested logicalDomainObject"

-- Aggregation relation
aggregationOfLogicalDataElementLogicalDomainObject :  Linkage LogicalDomainObject LogicalDataElement
aggregationOfLogicalDataElementLogicalDomainObject = make_Relation "LogicalDataElement aggregation" "aggregated LogicalDataElement"

{- logicalDomainObject : derived relation obtained by composing
   membershipOfLogicalDomainObject and aggregationOfLogicalDataElementLogicalDomainObject
   It directly links an Logical Data Domain to the final aggregated LogicalDataElement
   hiding the reifying LogicalDomainObject
-}
logicalDomainObject : Linkage LogicalDataDomain LogicalDataElement
logicalDomainObject = membershipOfLogicalDomainObject  ∘  aggregationOfLogicalDataElementLogicalDomainObject



-- -------------------------------------------------------------------------------------------- 
{- Logical Data Domain Member: -}
-- Aggregate Member : Logical Data Domain Member
LogicalDataDomainMember : ClassOfClassOfIndividual
LogicalDataDomainMember = ClassOfIndividual


--  LogicalDataDomainMember is subTypeOf SubDataArea
st-f4bee9605ee1c292-cbd9dff65fb7dd57 : LogicalDataDomainMember ⊏ₑ SubDataArea
st-f4bee9605ee1c292-cbd9dff65fb7dd57 = polySubTypeOf-identity

--  LogicalDataDomainMember is subTypeOf LogicalDataDomain
st-f4bee9605ee1c292-461950e9560d4461 : LogicalDataDomainMember ⊏ₑ LogicalDataDomain
st-f4bee9605ee1c292-461950e9560d4461 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalDataDomainMember :  Linkage LogicalDataDomain LogicalDataDomainMember
membershipOfLogicalDataDomainMember = make_upwardNestingRelation "logicalDataDomainMember membership" "nested logicalDataDomainMember"

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataDomainMember :  Linkage LogicalDataDomainMember LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataDomainMember = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- logicalDataDomainMember : derived relation obtained by composing
   membershipOfLogicalDataDomainMember and aggregationOfLogicalDataDomainLogicalDataDomainMember
   It directly links an Logical Data Domain to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataDomainMember
-}
logicalDataDomainMember : Linkage LogicalDataDomain LogicalDataDomain
logicalDataDomainMember = membershipOfLogicalDataDomainMember  ∘  aggregationOfLogicalDataDomainLogicalDataDomainMember


