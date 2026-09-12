{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

SOF - Business Resource Operating Pattern (B-SOF): 
The SOF - Business Resource Operating Pattern (B-SOF) domain defines concepts and relationships used to model how physical resources (Business Operating Assets) operates/functions in Business Resource Ecosystems to deliver Business Outcome Events.Business Operating Asset is an abstraction for Org-Unit Type, Business Software System, Concrete Hardware System and Networking System and their behaviors (Business Resource Process, Business Resource Interaction Process).The SOF - Business Resource Operating Pattern (B-SOF) is used as a template for all concrete operating domains such as People &amp; Accountability or Application Functional Architecture.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-d670b6155ffe8bb1 where -- ========== SOF - Business Resource Operating Pattern (B-SOF)

open import SysFEAT.EA.sysfeat-domain-e2ef086d62147802 public -- SOF - Resource System Operating Pattern (R-SOF)
open import SysFEAT.EA.sysfeat-domain-19dc1a30555649d9 public -- Conceptual Operating Model
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.EA.sysfeat-domain-2b58a67a5eec0662 public -- EA Pattern - Data Domain
open import SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 public -- Architecture Assets

open import SysFEAT.EA.62ff75f363765899 public -- Individual Business Asset
open import SysFEAT.EA.2b6f332061bae622 public -- Business Resource Ecosystem
open import SysFEAT.EA.2b6f337e61bae6d6 public -- Business Environment Scenario
open import SysFEAT.EA.2b6f33a561bae7ab public -- Business Agent Environment
open import SysFEAT.EA.230b35b461d8884d public -- Business Resource Interaction Process
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability
open import SysFEAT.EA.23bf9a7868ad2d94 public -- Business Resource Rule
open import SysFEAT.EA.7c40c3c85527466b public -- Business Resource Process
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.6a70b9f6678763db public -- Business Asset
open import SysFEAT.EA.82a9892166ec3b89 public -- Process Family
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.b4ebbf3e5ffdccdf public -- Business Behavior
