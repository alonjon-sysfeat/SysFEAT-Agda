{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Operating Model: 
A Conceptual Operating Model serves as a strategic framework for the enterprise, directing its functional division of labor to fulfill its missions and purposes.This model provides an ideal configuration of key Operating Domains and their value-added behaviors (Value Streams) to deliver enterprise Business Outcome Events.Unlike a reflection of the current state of operations, a Conceptual Operating Model envisions the ideal operation landscape. It is a blueprint for the optimal functioning of Business Operations.While it is sometimes referred to as a  business capability  model (see Gartner reference below), a Conceptual Operating Model is not to be confused with a Business Capability Map. Despite their shared aim of framing business operations, they are different tools and serve distinct purposes:a) A Business Capability Map is used to frame the services that business operations aimed to provide to internal or external customers. This aspect is often termed the  WHAT  in the architecture landscape.b) A Conceptual Operating Model is used to frame the strategic way the enterprise should  function  to fulfill these Business Capabilitys. This aspect is often termed the  HOW  of the architecture landscape.Its important to recognize that these HOW and WHAT aspects are contextual and should be viewed in conjunction with the Conceptualization Levels classifications. For example, the Conceptual Operating Model is seen as the  HOW  at the Conceptual level, but is considered as the  WHAT  at the Resource level.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-19dc1a30555649d9 where -- ========== Conceptual Operating Model

open import SysFEAT.SOF.sysfeat-domain-02f70fdc600f4179 public -- Policies
open import SysFEAT.EA.sysfeat-domain-07e72dd55ecc888a public -- Enterprise Glossary
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.EA.sysfeat-domain-d670b6155ffe8bb1 public -- SOF - Business Resource Operating Pattern (B-SOF)
open import SysFEAT.EA.sysfeat-domain-d17029ff5be84c49 public -- Product & Customer Experience
open import SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 public -- Architecture Assets

open import SysFEAT.EA.c8b2238961e5385a public -- Conceptual Operating Asset
open import SysFEAT.EA.57dfc5f555093444 public -- Value Stream
open import SysFEAT.EA.7c4094d2552717db public -- Business Function
open import SysFEAT.EA.9810b060551137d0 public -- Operating Domain
open import SysFEAT.EA.f97e3119632b25f8 public -- Conceptual Behavior
open import SysFEAT.EA.f97e3146632b266e public -- Conceptual Interaction Scenario
open import SysFEAT.EA.f97e3e30632b31c1 public -- Conceptual Ecosystem
open import SysFEAT.EA.f97e4315632b38d5 public -- Conceptual Environment Scenario
open import SysFEAT.EA.219162176786411d public -- Conceptual Service Interface
open import SysFEAT.EA.d9f677bb688e2127 public -- Conceptual Asset
open import SysFEAT.EA.63828cb767e23ec9 public -- Conceptual Operating Connection
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability
open import SysFEAT.EA.7c4097c855271c8e public -- Conceptual Environment
open import SysFEAT.EA.dd269a5468a09a74 public -- Conceptual Business Rule
open import SysFEAT.EA.21916383678642d1 public -- Conceptual Outcome Event
open import SysFEAT.EA.21918fed6786592c public -- Conceptual Event
open import SysFEAT.EA.cb94ec53681855c2 public -- Conceptual Functional Asset
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent
