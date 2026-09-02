{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Dictionary: 
Dictionary of Logical Data Entity.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7eaa87e856121db2 where -- ========== Logical Data Dictionary

open import Agda.Primitive
open import SysFEAT.EA.8f1c920168ca7fcd public -- Data Dictionary
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset

LogicalDataDictionary : ClassOfBoundedIndividual
LogicalDataDictionary = BoundedIndividual

--  LogicalDataDictionary is subTypeOf DataDictionary
st-9152d8dc5ed74523 : LogicalDataDictionary ⊏ₑ DataDictionary
st-9152d8dc5ed74523 = polySubTypeOf-identity

-- == Relationships =======================

{- Owned Logical  Data Block: -}
ownedLogicalDataBlock :  Linkage LogicalDataDictionary LogicalDataAsset
ownedLogicalDataBlock = make_Relation "Owned Logical  Data Block" "ownedLogicalDataBlock"

