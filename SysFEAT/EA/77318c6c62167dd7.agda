{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Data Asset: 
A NoSQL Data Asset is a Physical Data Asset used for the physical description of data consumed and produced by Software Systems.NoSQL Data Assets range from NoSQL Data Schemas to NoSQL Fields.They are defined in MetaData Dictionary(ies) and managed in Data Catalogs.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.77318c6c62167dd7 where -- ========== NoSQL Data Asset

open import Agda.Primitive
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

NoSQLDataAsset : ClassOfBoundedIndividual
NoSQLDataAsset = BoundedIndividual

--  NoSQLDataAsset withAspect PhysicalDataBlock
st-77318c8962167e61 : NoSQLDataAsset ⊏ₐₑ (PhysicalDataBlock lzero)
st-77318c8962167e61 = polySubTypeOf-identity

-- == Relationships =======================
