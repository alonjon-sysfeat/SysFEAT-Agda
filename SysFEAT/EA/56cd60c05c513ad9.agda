{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Software Technology: 
Instance of a software technoloy deployed on a server or a site 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.56cd60c05c513ad9 where -- ========== Deployed Software Technology

open import Agda.Primitive
open import SysFEAT.EA.2c93304a6764424d public -- Deployed Software Technology System
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

DeployedSOftwareTechnology : ClassOfBoundedIndividual
DeployedSOftwareTechnology = BoundedIndividual

--  DeployedSOftwareTechnology is subTypeOf DeployedSOftwareTechnologySystem
st-c80a7aba6785befe : DeployedSOftwareTechnology ⊏ₑ DeployedSOftwareTechnologySystem
st-c80a7aba6785befe = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Type: -}
technologyType :  Linkage DeployedSOftwareTechnology SOftwareTechnology
technologyType = make_instanceOf "Technology Type" "technologyType"

postulate -- technologyType is subTypeOf sOftwareTechnologyType
  st-2c932fbb67643f5c-2c9330e06764470a  : technologyType   ⊏⋆ᵣ  sOftwareTechnologyType 
