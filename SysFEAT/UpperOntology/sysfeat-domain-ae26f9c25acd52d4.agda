{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Predication Substrate: 
The Predication Substrate defines the compositional system of Element, Class of Element, and local predicates (Linkage) from which SysFEATs ontological structures are grown. It provides the internal structure of predication - classification, specialization, powertyping, and Compositionality - as a single, universe-stratified, mechanically verified engine that every higher layer inherits.Unlike predicate logic (where a predicate is not a term) and graph theory (where an edge is not a node), a Linkage is simultaneously the mechanism of relating an Element that can be classified, specialized, and related to other entities. This self-applicability is what allows the framework to provide a theory of Relation - not just relations, but the ability to classify relations, specialize them, and compose them, using the same machinery that applies to the Entitys they relate.

Documentation : https://framework.sysfeat.com/pages/ae26f9c25acd52d4.htm

External references:
  Wikipedia - Upper ontology: https://en.wikipedia.org/wiki/Upper_ontology
  BORO Research - Unification of Types and Multi-Level Modeling: https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  Survey of Classification Modeling in Software & Systems Modeling: https://doi.org/10.1007/s10270-016-0521-5
  OMG - KerML - Root: https://www.omg.org/spec/KerML/1.0/PDF#page=39
  SysFEAT-TheoraticalFoundations-LocalityPrinciple.pdf: ../resources/framework/SysFEAT-TheoraticalFoundations-LocalityPrinciple.pdf
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.UpperOntology.sysfeat-domain-ae26f9c25acd52d4 where -- ========== Predication Substrate

open import SysFEAT.UpperOntology.526b679569de63eb public -- Mixed-Order Element
open import SysFEAT.UpperOntology.526b6bd869de64e4 public -- Ordered Element
open import SysFEAT.UpperOntology.23d5249e68510ff9 public -- Element
open import SysFEAT.UpperOntology.62a271056ace0f5c public -- Class of Mixed Order Element
open import SysFEAT.UpperOntology.62a273946ace10c3 public -- Class of Ordered Element
open import SysFEAT.UpperOntology.20702b2568e9694d public -- Class of Element
