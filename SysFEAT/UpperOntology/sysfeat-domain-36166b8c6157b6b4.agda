{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Compositionality: 
The purpose of the Compositionality family of concepts is to provide syntactic mechanisms that support the construction of composite Building Blocks.The Compositionality pattern handles situations where Building Blocks have an internal structure. Such Building Blocks are called Aggregate Blocks. They are made of internal nested Entitys called Aggregate Members. Aggregate Members contextualizes Building Blocks living outside the Aggregate Block structure (specialization in OMG - Kernel Modeling Language (KerML) is such an Aggregate Member).Advanced Aggregate Block features are provided by Bounded Aggregates which hide their internal structure to the outside world by means of a formal boundary (see Ordering Connection).
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
