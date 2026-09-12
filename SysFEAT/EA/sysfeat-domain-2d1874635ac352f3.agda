{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Operations: 
The Business Operations domain describes how business units operate to deliver products (goods and services) that fit their customers needs (value).This includes:1) the management structure that organizes responsibility and accountability : People &amp; Accountability.2) the processes that describe the end to end delivery of goods and services: Organization &amp; Processes.The Business Operations domain has dependencies with domains providing Business Systems used to support and automate operations: Software System ArcOps and Hardware System ArcOps.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-2d1874635ac352f3 where -- ========== Business Operations

open import SysFEAT.EA.sysfeat-domain-e2ef086d62147802 public -- SOF - Resource System Operating Pattern (R-SOF)
open import SysFEAT.EA.sysfeat-domain-d5e6d6b05c4648d8 public -- Application Functional Architecture
open import SysFEAT.EA.sysfeat-domain-1ce356355c48c0e2 public -- People & Accountability
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.EA.sysfeat-domain-d670b6155ffe8bb1 public -- SOF - Business Resource Operating Pattern (B-SOF)
open import SysFEAT.EA.sysfeat-domain-d17029ff5be84c49 public -- Product & Customer Experience
open import SysFEAT.EA.sysfeat-domain-255cd30862aa0da8 public -- SOF - Business System Operating Pattern
open import SysFEAT.EA.sysfeat-domain-2b58a67a5eec0662 public -- EA Pattern - Data Domain
open import SysFEAT.SOF.sysfeat-domain-69346af86005efa9 public -- Initiative and Transformation Pattern
open import SysFEAT.EA.sysfeat-domain-c30bf8035a5dba7f public -- Organization & Processes
open import SysFEAT.EA.sysfeat-domain-c80a10c167853bca public -- EA Pattern - Physical Resource Agent

