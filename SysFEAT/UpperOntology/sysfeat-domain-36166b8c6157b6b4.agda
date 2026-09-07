{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Compositionality: 
The purpose of the Compositionality family of concepts is to provide syntactic mechanisms that support the construction of composite Building Blocks.The Compositionality pattern handles situations where Building Blocks have an internal structure. Such Building Blocks are called Aggregate Blocks. They are made of internal nested Entitys called Aggregate Members. Aggregate Members contextualizes Building Blocks living outside the Aggregate Block structure (specialization in OMG - Kernel Modeling Language (KerML) is such an Aggregate Member).Advanced Aggregate Block features are provided by Bounded Aggregates which hide their internal structure to the outside world by means of a formal boundary (see Ordering Connection).

Documentation : https://framework.sysfeat.com/pages/36166b8c6157b6b4.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
  Martin Fowler - Evans Classification: https://martinfowler.com/bliki/EvansClassification.html
  Wikipedia - Domain driven design: https://en.wikipedia.org/wiki/Domain-driven_design
  Christensen Institute - Modularity: https://www.christenseninstitute.org/theory/modularity
  OpenGroup - OAA - Modularity: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_modularity
  OpenGroup - TOGAF - Definition - Building Block: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#sec-04_26
  DDD - Aggregate: https://www.dddcommunity.org/library/vernon_2011
  SysFEAT - Modularity.pdf: ../resources/framework/SysFEAT-ModelingFramework-01-Modularity.pdf
  Stanford Encyclopedia of Philosophy - Compositionality: https://plato.stanford.edu/entries/compositionality
  SysFEAT-ModelingFramework-Visualization.pdf: ../resources/framework/SysFEAT-ModelingFramework-Visualization.pdf
  SysFEAT-TheoraticalFoundations-LocalityPrinciple.pdf: ../resources/framework/SysFEAT-TheoraticalFoundations-LocalityPrinciple.pdf
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.UpperOntology.sysfeat-domain-36166b8c6157b6b4 where -- ========== Compositionality

open import SysFEAT.UpperOntology.sysfeat-domain-f0fd779f65a18c5d public -- Packaging

open import SysFEAT.UpperOntology.23d5c5ce68514283 public -- Aggregate Block
open import SysFEAT.UpperOntology.23d56d9868525869 public -- Aggregate Entity Block
open import SysFEAT.UpperOntology.8cfa942f68527849 public -- Unbounded Aggregate
open import SysFEAT.UpperOntology.8cfa941b6852781f public -- Bounded Aggregate
open import SysFEAT.UpperOntology.23d5eaba68515533 public -- Ordering Connection
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
