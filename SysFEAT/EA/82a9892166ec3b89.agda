{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Process Family: 
A Process Family is a categorization of Business Operating Assets used to assert that a Business Operating Asset belongs to a specific process domain.

Documentation : https://framework.sysfeat.com/pages/82a9892166ec3b89.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.82a9892166ec3b89 where -- ========== Process Family

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

ProcessFamily : ThirdOrderClass
ProcessFamily = SecondOrderClass

--  ProcessFamily withAspect AssetCategory
st-82a9892166ec3b89-f69620466a0f9c2f : ProcessFamily ⊏ₐₑ (AssetCategory (lsuc(lsuc(lzero))))
st-82a9892166ec3b89-f69620466a0f9c2f = polySubTypeOf-identity


-- == Relations =======================
