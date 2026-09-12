{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Deployment Architecture: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.10844c325fce4e80 where -- ========== Software Deployment Architecture

open import Agda.Primitive
open import SysFEAT.EA.d5e6d8015c464b40 public -- Deployable Software System

SOftwareDeploymentArchitecture : ClassOfClassOfBoundedIndividual
SOftwareDeploymentArchitecture = ClassOfBoundedIndividual

--  SOftwareDeploymentArchitecture is subTypeOf DeployableSOftwareSystem
st-10844c3a5fce4eec : SOftwareDeploymentArchitecture ⊏ₑ DeployableSOftwareSystem
st-10844c3a5fce4eec = polySubTypeOf-identity

-- == Relationships =======================
