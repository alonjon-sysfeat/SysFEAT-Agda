{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Deployment Architecture: 


Documentation : https://framework.sysfeat.com/pages/10844c325fce4e80.htm

External references:
  C4 Model - Level 1 - System Context Diagram: https://c4model.com/#SystemContextDiagram
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.10844c325fce4e80 where -- ========== Software Deployment Architecture

open import Agda.Primitive
open import SysFEAT.EA.d5e6d8015c464b40 public -- Deployable Software System

SOftwareDeploymentArchitecture : ClassOfClassOfBoundedIndividual
SOftwareDeploymentArchitecture = ClassOfBoundedIndividual

--  SOftwareDeploymentArchitecture is subTypeOf DeployableSOftwareSystem
st-10844c325fce4e80-d5e6d8015c464b40 : SOftwareDeploymentArchitecture ⊏ₑ DeployableSOftwareSystem
st-10844c325fce4e80-d5e6d8015c464b40 = polySubTypeOf-identity


-- == Relations =======================
