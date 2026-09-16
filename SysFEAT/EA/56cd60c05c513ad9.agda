{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Software Technology: 
Instance of a software technoloy deployed on a server or a site 

Documentation : https://framework.sysfeat.com/pages/56cd60c05c513ad9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.56cd60c05c513ad9 where -- ========== Deployed Software Technology

open import Agda.Primitive
open import SysFEAT.EA.2c93304a6764424d public -- Deployed Software Technology System
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

DeployedSOftwareTechnology : ClassOfBoundedIndividual
DeployedSOftwareTechnology = BoundedIndividual

--  DeployedSOftwareTechnology is subTypeOf DeployedSOftwareTechnologySystem
st-56cd60c05c513ad9-2c93304a6764424d : DeployedSOftwareTechnology ⊏ₑ DeployedSOftwareTechnologySystem
st-56cd60c05c513ad9-2c93304a6764424d = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Type: -}
technologyType :  Linkage DeployedSOftwareTechnology SOftwareTechnology
technologyType = make_instanceOf "Technology Type" "Technology Type"

postulate -- technologyType is subTypeOf sOftwareTechnologyType
  st-2c932fbb67643f5c-2c9330e06764470a  : technologyType   ⊏⋆ᵣ  sOftwareTechnologyType 
