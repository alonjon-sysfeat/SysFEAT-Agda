{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Packaging: 
The Packaging domain defines the core elements of Building Block and Container which provide the basis for building modules.Building Blocks are reusable units They have an independent existence. Thereby, they cannot be nested in other structures which would hide their existence (lexical scope). Because of their independent existence, they must be owned by an independent artifact which sole purpose is model management Containers . Containers are dedicated to model management:&#60;br/&#62;. They own blocks to which they provide existence.&#60;br/&#62;. They can provide namespace to blocks.&#60;br/&#62;. They have dependencies on other Containers which blocks have relationships to blocks they packaged.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.UpperOntology.sysfeat-domain-f0fd779f65a18c5d where -- ========== Packaging

open import SysFEAT.UpperOntology.sysfeat-domain-e278fa2568f06541 public -- Reflexive Knowledge Graph

open import SysFEAT.UpperOntology.23d5c494685141b5 public -- Block Lexical Scope
open import SysFEAT.UpperOntology.0eb93b4268549a66 public -- Container
open import SysFEAT.UpperOntology.0eb947546854a13d public -- Container Package
open import SysFEAT.UpperOntology.23d5aa4868513f43 public -- Block Collection
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
