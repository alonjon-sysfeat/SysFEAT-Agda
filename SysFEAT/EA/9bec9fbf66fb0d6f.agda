{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Functional Asset: 
Resource Functional Assets are Functional Assets that define how Business Outcome Events are specified, produced and consumed.

Documentation : https://framework.sysfeat.com/pages/9bec9fbf66fb0d6f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9bec9fbf66fb0d6f where -- ========== Resource Functional Asset

open import Agda.Primitive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.EA.d9f4dcc5688d5969 public -- Resource Asset

ResourceFunctionalAsset : ClassOfClassOfBoundedIndividual
ResourceFunctionalAsset = ClassOfBoundedIndividual

--  ResourceFunctionalAsset is subTypeOf FunctionalAsset
st-9bec9fbf66fb0d6f-a44fb6bc6748b088 : ResourceFunctionalAsset ⊏ₑ FunctionalAsset
st-9bec9fbf66fb0d6f-a44fb6bc6748b088 = polySubTypeOf-identity

--  ResourceFunctionalAsset is subTypeOf ResourceAsset
st-9bec9fbf66fb0d6f-d9f4dcc5688d5969 : ResourceFunctionalAsset ⊏ₑ ResourceAsset
st-9bec9fbf66fb0d6f-d9f4dcc5688d5969 = polySubTypeOf-identity

-- == Relationships =======================
