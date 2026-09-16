{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Data Store: 
A Deployed Data Store is a repository for storing, managing and distributing data sets on an enterprise level. It is a broad term that incorporates all types of data that is produced, stored and used by an organization.Deployed Data Stores exist wihin a Data Center. They can be hosted on Deployed Server.

Documentation : https://framework.sysfeat.com/pages/affeb2255f6051e6.htm

External references:
  UCF Glossary - Data Store: https://compliancedictionary.com/term/254192
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.affeb2255f6051e6 where -- ========== Deployed Data Store

open import Agda.Primitive
open import SysFEAT.EA.8f1cb5a068caab57 public -- NoSQL Dictionary
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.c758eed8600a399f public -- NoSQL Library

DeployedDataStore : ClassOfBoundedIndividual
DeployedDataStore = BoundedIndividual

--  DeployedDataStore withAspect NoSQLDictionary
st-affeb2255f6051e6-8f1cb5a068caab57 : DeployedDataStore ⊏ₐₑ (NoSQLDictionary lzero)
st-affeb2255f6051e6-8f1cb5a068caab57 = polySubTypeOf-identity

--  DeployedDataStore is subTypeOf DeployedBusinessSystem
st-affeb2255f6051e6-3642454f6007e80e : DeployedDataStore ⊏ₑ DeployedBusinessSystem
st-affeb2255f6051e6-3642454f6007e80e = polySubTypeOf-identity

-- == Relationships =======================

{- Imported Package: -}
importedPackage :  Linkage DeployedDataStore NoSQLLibrary
importedPackage = make_holonymyRelation "Imported Package" "Imported Package"

