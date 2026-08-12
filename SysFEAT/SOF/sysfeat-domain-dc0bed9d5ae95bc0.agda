{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Teams Pattern: 
The Teams Pattern domain defines organization structure and behavior as well as instrurments required to govern Enduring Initiatives.Any Initiative, (project, enterprise, asset portfolio, privacy insurance, etc.) shall be governed. This includes:1. Governance Committees in charge of governance. They comprise persons and the role of these individual in the team (architects, auditors, product owner, etc.).2. Governance Events describe changes that need to be recorded to monitor transformations (décisions, incidents, etc.).3. Governance Activity(ies) describe all actions that come in response to change events and may results in other change events (workflow, audits, ...).4. Measurement Instruments provide KPIs (qualification and quantification) on the status of Undertakings being governed.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
{-# OPTIONS --cubical-compatible #-}

module dc0bed9d5ae95bc0 where -- ========== Teams Pattern

open import Agda.Primitive
open import Relation.Binary.PropositionalEquality
open import 2cc9717155263b89 public -- Governance Committee
open import bcebd0175491272a public -- Stakeholder
open import 4993655063907d35 public -- Review Note
open import ff0501b65b253fdd public -- Governing Team
open import 6662916b68dd5f84 public -- Governance Instrument
open import 173706265fe3f332 public -- Measurement Instrument
open import 83f8933a67407206 public -- Governance Property Type
open import 66628bbe68dd5bef public -- Governance Property
open import 0f641043685975c9 public -- Governance Building Block
open import 0f64116a68597a27 public -- Governance Container
open import 1737b76a5fe28204 public -- Governance Activity
open import 1737b50b5fe27cba public -- Governance Event
open import 37b7a5ab602606df public -- Assessment Process
open import 7625fe5b5f6c92de public -- Remediation Plan
open import f4be37465ee1cba6 public -- Audit
open import 2cc9718655263c44 public -- Individual Stakeholder
