{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Basic Knowledge Graph: 
The Basic Knowledge Graph defines the top level constructs of Entitys and Relations which have no spatiotemporal extension and do not participate in composite structures..Most  data models  function as Basic Knowledge Graphs, offering limited semantic expressivity.In SysFEAT, Basic Knowledge Graphs are used to define all syntactic constructs required for model management, including  Packaging and Annotation (see Annotation Block).Full semantic capabilities are provided by 4D Composite Knowledge Graphs.

Documentation : https://framework.sysfeat.com/pages/3aca56b16aa64950.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.UpperOntology.sysfeat-domain-3aca56b16aa64950 where -- ========== Basic Knowledge Graph

open import SysFEAT.UpperOntology.sysfeat-domain-e278fa2568f06541 public -- Reflexive Knowledge Graph

open import SysFEAT.UpperOntology.3aca52346aa6418d public -- Abstract Entity
open import SysFEAT.UpperOntology.3aca55ee6aa645c2 public -- Class of Abstract Entity
open import SysFEAT.UpperOntology.3aca564b6aa646ce public -- Class of Class of Abstract Entity
