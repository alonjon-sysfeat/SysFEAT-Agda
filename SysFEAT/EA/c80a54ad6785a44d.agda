{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Technology System: 
An Individual Technology System is an Individual Agent which produces Technology Outcome Events through Technology Interfaces. Individual Technology Systems are enablers of Business Systems. They do not directly deliver Business Outcomes to internal or external customers. They deliver Technology Outcome Events required by Business Systems to operate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a54ad6785a44d where -- ========== Individual Technology System

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System

IndividualTechnologySystem : ClassOfBoundedIndividual
IndividualTechnologySystem = BoundedIndividual

--  IndividualTechnologySystem is subTypeOf IndividualResourceAgent
st-fe1c2d4d67880fea : IndividualTechnologySystem ⊏ₑ IndividualResourceAgent
st-fe1c2d4d67880fea = polySubTypeOf-identity

-- == Relationships =======================

{- System Type: -}
systemType :  Linkage IndividualTechnologySystem TechnologySystem
systemType = make_instanceOf "System Type" "systemType"

