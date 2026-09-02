{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Asset: 
A Logical Data Asset is a Data Asset used for the description of data consumed and produced by Logical Software Systems.Logical Data Assets are defined in Logical Data Dictionary(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fd1bf2a45fbc64fb where -- ========== Logical Data Asset

open import Agda.Primitive
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block

LogicalDataAsset : ClassOfClassOfBoundedIndividual
LogicalDataAsset = ClassOfBoundedIndividual

--  LogicalDataAsset withAspect DataBlock
st-78e262d56312fe01 : LogicalDataAsset ⊏ₐₑ (DataBlock (lsuc(lzero)))
st-78e262d56312fe01 = polySubTypeOf-identity

-- == Relationships =======================
