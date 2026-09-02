{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Functional Architecture: 
The Application Functional Architecture domain is used to describe the functional structure and behavior of Business Software Systems.SysFEAT provides three level of granularity to represent software systems:1) Macro Business Software Systems are represented by Application Systems.2) Mezzo Business Software Systems are represented by Applications, which compose Application Systems.3) Micro Business Software Systems are represented by Application Components and MicroServices which compose Applications.All Business Software Systems provide Functionalitys, expose APIs by means of Application Interfaces, have a data scope defined by Physical Data Domains, perform System Processes and have their interactions described by Software System Scenarios.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-d5e6d6b05c4648d8 where -- ========== Application Functional Architecture

open import SysFEAT.EA.sysfeat-domain-d5e6d6c25c464906 public -- Application Deployment Architecture
open import SysFEAT.EA.sysfeat-domain-1ce356355c48c0e2 public -- People & Accountability
open import SysFEAT.EA.sysfeat-domain-c2dbe1db5b026b30 public -- Software Technology ArcOps
open import SysFEAT.EA.sysfeat-domain-25c09f1b61e2f2a0 public -- SOF - Business Software Operating Model
open import SysFEAT.EA.sysfeat-domain-c30bf8035a5dba7f public -- Organization & Processes

open import SysFEAT.EA.e4c0e7285ed0625d public -- Application System Scenario
open import SysFEAT.EA.7a0a96b05ddfb9f5 public -- Application Environment Scenario
open import SysFEAT.EA.c450d47c61de5dbc public -- Application Environment
open import SysFEAT.EA.6246167661ba2d05 public -- Application Scenario
open import SysFEAT.EA.c30bdac25a5d9eaf public -- Software Module
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService
open import SysFEAT.EA.46194ce9560d3ab8 public -- Application Component
open import SysFEAT.EA.bcebd8e9549144db public -- Application
open import SysFEAT.EA.d6cd260b5ab9886c public -- Application System Environment
open import SysFEAT.EA.7a0afca35dde94f5 public -- Scenario of Application System Environment
