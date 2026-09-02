{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Program Asset: 
A Program Asset is a resource used in the context of project management such as Project, Projet Risk Type, Project Portfolio,etc.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b5887d05ef07b3b where -- ========== Program Asset

open import Agda.Primitive
open import SysFEAT.SOF.01ce05606859794a public -- Initiative Instrument

ProgramAsset : ClassOfBoundedIndividual
ProgramAsset = BoundedIndividual

--  ProgramAsset withAspect InitiativeInstrument
st-2b5887e05ef07c21 : ProgramAsset ⊏ₐₑ (InitiativeInstrument lzero)
st-2b5887e05ef07c21 = polySubTypeOf-identity

-- == Relationships =======================
