{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Continuity: 
The Business Continuity domain defines the concepts use by functions of an enterprise in charge of the continuous delivery of its Products (goods and services) within acceptable time frames at predefined capacity during a disruption.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-8dbd8edf609b488c where -- ========== Business Continuity

open import SysFEAT.EA.sysfeat-domain-d670b6155ffe8bb1 public -- SOF - Business Resource Operating Pattern (B-SOF)
open import SysFEAT.EA.sysfeat-domain-fe663dd261817752 public -- Operational Assurance
open import SysFEAT.SOF.sysfeat-domain-dc0bed9d5ae95bc0 public -- Teams Pattern
open import SysFEAT.EA.sysfeat-domain-c30bf8035a5dba7f public -- Organization & Processes

open import SysFEAT.EA.8dbd8f17609b4a70 public -- BCM System
open import SysFEAT.EA.8dbd9019609b4b86 public -- Business Impact Analysis
