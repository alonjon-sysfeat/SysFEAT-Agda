{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project Type: 
A category of project.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24ac695354881cbe where -- ========== Project Type

open import Agda.Primitive
open import SysFEAT.EA.2b5887d05ef07b3b public -- Program Asset
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block

ProjectType : ClassOfClassOfBoundedIndividual
ProjectType = ClassOfBoundedIndividual

--  ProjectType is subTypeOf ProgramAsset
st-2b588a8a5ef08cde : ProjectType ⊏⋆ₑ ProgramAsset
st-2b588a8a5ef08cde = polySubTypeOf-identity

--  ProjectType withAspect ModelPropertyBlock
st-2b588aad5ef08d50 : ProjectType ⊏ₐₑ (ModelPropertyBlock (lsuc(lzero)))
st-2b588aad5ef08d50 = polySubTypeOf-identity


