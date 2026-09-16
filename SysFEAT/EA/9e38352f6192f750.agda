{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Center: 
A Data Center is a Facility composed of networked computers, storage systems and computing infrastructure that enterprises use to organize, process, store and disseminate large amounts of data. Business Operations rely heavily upon the applications, services and data contained within a Data Center, making it a focal point and critical asset for everyday operations.

Documentation : https://framework.sysfeat.com/pages/9e38352f6192f750.htm

External references:
  UCF Glossary - Data Center: https://compliancedictionary.com/term/708
  Gartner - Data Center: https://www.gartner.com/en/information-technology/glossary/data-center
  C4 Model - Supplementary diagrams - System Landscape diagram: https://c4model.com/#SystemLandscapeDiagram
  TechTarget - Data Center: https://searchdatacenter.techtarget.com/definition/data-center
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9e38352f6192f750 where -- ========== Data Center

open import Agda.Primitive
open import SysFEAT.EA.c80a413e678594ec public -- Individual Facility
open import SysFEAT.EA.56cd60a95c513aaf public -- Deployed Application
open import SysFEAT.EA.56cd60f85c513b04 public -- Deployed Server
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location
open import SysFEAT.EA.affeb2255f6051e6 public -- Deployed Data Store
open import SysFEAT.EA.f4be0e865ee1d53b public -- Facility

DataCenter : ClassOfBoundedIndividual
DataCenter = BoundedIndividual

--  DataCenter is subTypeOf IndividualFacility
st-9e38352f6192f750-c80a413e678594ec : DataCenter ⊏ₑ IndividualFacility
st-9e38352f6192f750-c80a413e678594ec = polySubTypeOf-identity

-- == Relationships =======================

{- Hosted Application: -}
hostedApplication :  Linkage DataCenter DeployedApplication
hostedApplication = make_holonymyRelation "Hosted Application" "Hosted Application"


{- Hosted Server: -}
hostedServer :  Linkage DataCenter DeployedServer
hostedServer = make_holonymyRelation "Hosted Server" "Hosted Server"


{- Data Center Location: -}
dataCenterLocation :  Linkage DataCenter Location
dataCenterLocation = make_holonymyRelation "Data Center Location" "Data Center Location"


{- Hosted Data Store: -}
hostedDataStore :  Linkage DataCenter DeployedDataStore
hostedDataStore = make_holonymyRelation "Hosted Data Store" "Hosted Data Store"


{- Data Center Type: -}
dataCenterType :  Linkage DataCenter Facility
dataCenterType = make_instanceOf "Data Center Type" "Data Center Type"

