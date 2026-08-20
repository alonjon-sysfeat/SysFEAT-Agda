{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System Operating Framework - SOF: 
The System Operating Framework - SOF models how an active system (Agent Type) operates/functions (Behavior Type) in its Operating Eco-System to produce Outcome Events that benefit (value) to other Agent Types or affect (have an effect upon) these Agent Types.The SOF includes Agent Types, Action Process Types, Interaction Process Types, Policy(ies), Capability(ies), Outcome Events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 where -- ========== System Operating Framework - SOF

open import SysFEAT.SOF.sysfeat-domain-02f70fdc600f4179 public -- Policies
open import SysFEAT.SOF.sysfeat-domain-d6cd2c8b5ab98da5 public -- Information Assets
open import SysFEAT.SOF.sysfeat-domain-427c1bdb64b5d1c7 public -- Risk & Threat
open import SysFEAT.SOF.sysfeat-domain-ab6f7f85681a69f1 public -- Architecture Packages
open import SysFEAT.SOF.sysfeat-domain-0c450d696a031e95 public -- Systemic Levels
open import SysFEAT.UpperOntology.sysfeat-domain-fb342c5665561f29 public -- 4D Composite Knowledge Graph
open import SysFEAT.UpperOntology.sysfeat-domain-36166b8c6157b6b4 public -- Compositionality
open import SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 public -- Architecture Assets

open import SysFEAT.SOF.e9af119866e86785 public -- Individual Behavior
open import SysFEAT.SOF.e9af133166e86be3 public -- Individual Event
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection
open import SysFEAT.SOF.9e3837e46192fcad public -- Individual Agent
open import SysFEAT.SOF.333f35ee5dde0c8c public -- Interaction Process Type
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type
open import SysFEAT.SOF.d682ef5e56144e77 public -- Action Process Type
open import SysFEAT.SOF.a371a43b5b865817 public -- Operating Asset Type
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.SOF.24ae31b55ed1c66d public -- Service Interface
open import SysFEAT.SOF.515c13db68953887 public -- Capability
open import SysFEAT.SOF.ca35f48a5fc48686 public -- Operating Eco-System
open import SysFEAT.SOF.ca3513af5fc59413 public -- Environment Interaction Process Type
open import SysFEAT.SOF.d6cd0fd95ab9744b public -- Agent Type Environment
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.e0e9b20b657864ec public -- Time Event
open import SysFEAT.SOF.a273b4f465b7a81f public -- Individual Process
open import SysFEAT.SOF.9f61cf9166833fb7 public -- Individual Operating Asset
open import SysFEAT.SOF.c80acb82678413ac public -- Agent Life Cycle Event
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.SOF.c80ac83967840ef1 public -- Whole Life Agent Type
open import SysFEAT.SOF.c80ac8f367841131 public -- Agent State Type
