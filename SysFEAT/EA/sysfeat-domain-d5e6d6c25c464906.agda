{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Deployment Architecture: 
The Application Deployment Architecture domain defines concepts used to organize Applications in Deployable Packages.It comprises:1) software code packages (Deployable Application Packages) 2) Data packages (Deployable Data Packages).3) Prescribed type of hosting4) required technical connections (with communication protocols, port numbers...)  to communicate with each other.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-d5e6d6c25c464906 where -- ========== Application Deployment Architecture

open import SysFEAT.EA.sysfeat-domain-75ef50ab620fb787 public -- EA Pattern - Physical Data Domain
open import SysFEAT.EA.sysfeat-domain-d5e6d6b05c4648d8 public -- Application Functional Architecture
open import SysFEAT.EA.sysfeat-domain-c2dbe1db5b026b30 public -- Software Technology ArcOps
open import SysFEAT.EA.sysfeat-domain-25c09f1b61e2f2a0 public -- SOF - Business Software Operating Model
open import SysFEAT.EA.sysfeat-domain-70ba83a464213bcf public -- EA Pattern - Physical Software Operating Pattern
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.EA.sysfeat-domain-d160039d62e081a5 public -- EA Pattern - Technology Operating Pattern

open import SysFEAT.EA.d6a956495a395d28 public -- MicroService
open import SysFEAT.EA.10844c325fce4e80 public -- Software Deployment Architecture
open import SysFEAT.EA.108442775fce4918 public -- Software Deployment Environment
open import SysFEAT.EA.0faf549b640bbfea public -- Application System Deployment Environment
open import SysFEAT.EA.4c7883cd5fca4d5b public -- Deployable Package
open import SysFEAT.EA.d5e6d7de5c464b02 public -- Application Deployment Environment
open import SysFEAT.EA.d5e6d7c65c464ae3 public -- Application Deployment Architecture
open import SysFEAT.EA.d5e6d7eb5c464b21 public -- Deployable Application Package
open import SysFEAT.EA.d5e6dc425c46518a public -- Deployable Data Package
open import SysFEAT.EA.d5e6d8015c464b40 public -- Deployable Software System
