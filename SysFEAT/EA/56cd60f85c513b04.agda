{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Server: 
A Deployed Server is a Computer Server deployed in a Data Center or another facility.

Documentation : https://framework.sysfeat.com/pages/56cd60f85c513b04.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.56cd60f85c513b04 where -- ========== Deployed Server

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.affeb2255f6051e6 public -- Deployed Data Store
open import SysFEAT.EA.56cd60a95c513aaf public -- Deployed Application
open import SysFEAT.EA.56cd60c05c513ad9 public -- Deployed Software Technology
open import SysFEAT.EA.df118f645d5f65bb public -- Computer Server

DeployedServer : ClassOfBoundedIndividual
DeployedServer = BoundedIndividual


--  DeployedServer is subTypeOf DeployedBusinessSystem
st-56cd60f85c513b04-3642454f6007e80e : DeployedServer ⊏ₑ DeployedBusinessSystem
st-56cd60f85c513b04-3642454f6007e80e = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Hosted Data Store: -}
hostedDataStore :  Linkage DeployedServer DeployedDataStore
hostedDataStore = make_holonymyRelation "Hosted Data Store" "Hosted Data Store"


-- -------------------------------------------------------------------------------------------- 
{- Hosted Application: -}
hostedApplication :  Linkage DeployedServer DeployedApplication
hostedApplication = make_holonymyRelation "Hosted Application" "Hosted Application"


-- -------------------------------------------------------------------------------------------- 
{- Hosted Technology: -}
hostedTechnology :  Linkage DeployedServer DeployedSOftwareTechnology
hostedTechnology = make_holonymyRelation "Hosted Technology" "Hosted Technology"


-- -------------------------------------------------------------------------------------------- 
{- Server Type: -}
serverType :  Linkage DeployedServer ComputerServer
serverType = make_instanceOf "Server Type" "Server Type"

postulate -- serverType is subTypeOf businessSystemType
  st-e2dc103a66fd7e38-e2dc074666fd6d03  : serverType  ⊏⋆ᵣ  businessSystemType
