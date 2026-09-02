{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Provenance & Reliability Assurance: 
Data Provenance &amp; Reliability Assurance establishes trust in the provenance of Conceptual Entity Assets.It uses Data Lineage as a means to track data provenance.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-d326d866617a49a5 where -- ========== Data Provenance & Reliability Assurance

open import SysFEAT.EA.sysfeat-domain-75ef50ab620fb787 public -- EA Pattern - Physical Data Domain
open import SysFEAT.EA.sysfeat-domain-07e72dd55ecc888a public -- Enterprise Glossary
open import SysFEAT.EA.sysfeat-domain-1ce356355c48c0e2 public -- People & Accountability
open import SysFEAT.EA.sysfeat-domain-c2dbe1db5b026b30 public -- Software Technology ArcOps
open import SysFEAT.SOF.sysfeat-domain-d6cd2c8b5ab98da5 public -- Information Assets
open import SysFEAT.EA.sysfeat-domain-25c09f1b61e2f2a0 public -- SOF - Business Software Operating Model
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.EA.sysfeat-domain-44254cce6182c076 public -- Data Governance Core

open import SysFEAT.EA.72fe99b65e985953 public -- Data Processor
open import SysFEAT.EA.23ab2e945da829b8 public -- Data Lineage
open import SysFEAT.EA.7d37c0565fd067ce public -- Concept Lineage
open import SysFEAT.EA.7d37cbc15fd06f60 public -- Physical Data Lineage
open import SysFEAT.EA.72fe99d65e98598e public -- Data Quality Measure
open import SysFEAT.EA.9815a0dc5f682fa1 public -- Data Control
