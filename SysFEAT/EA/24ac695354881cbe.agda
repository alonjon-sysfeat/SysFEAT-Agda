{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project Type: 
A category of project.

Documentation : https://framework.sysfeat.com/pages/24ac695354881cbe.htm

External references:
  OMG - UAF - Project: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Project
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24ac695354881cbe where -- ========== Project Type

open import Agda.Primitive
open import SysFEAT.EA.2b5887d05ef07b3b public -- Program Asset
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block

ProjectType : ClassOfClassOfBoundedIndividual
ProjectType = ClassOfBoundedIndividual

--  ProjectType is subTypeOf ProgramAsset
st-24ac695354881cbe-2b5887d05ef07b3b : ProjectType ⊏⋆ₑ ProgramAsset
st-24ac695354881cbe-2b5887d05ef07b3b = polySubTypeOf-identity

--  ProjectType withAspect ModelPropertyBlock
st-24ac695354881cbe-0eb97aff6855cd23 : ProjectType ⊏ₐₑ (ModelPropertyBlock (lsuc(lzero)))
st-24ac695354881cbe-0eb97aff6855cd23 = polySubTypeOf-identity


