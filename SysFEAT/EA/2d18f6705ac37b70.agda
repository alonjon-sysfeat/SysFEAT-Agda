{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Projet Risk Type: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2d18f6705ac37b70 where -- ========== Projet Risk Type

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.EA.2b5887d05ef07b3b public -- Program Asset

ProjetRiskType : ClassOfClassOfBoundedIndividual
ProjetRiskType = ClassOfBoundedIndividual

--  ProjetRiskType withAspect ModelPropertyBlock
st-2b588a025ef08ba6 : ProjetRiskType ⊏ₐₑ (ModelPropertyBlock (lsuc(lzero)))
st-2b588a025ef08ba6 = polySubTypeOf-identity

--  ProjetRiskType is subTypeOf ProgramAsset
st-2b588a4d5ef08c83 : ProjetRiskType ⊏⋆ₑ ProgramAsset
st-2b588a4d5ef08c83 = polySubTypeOf-identity


