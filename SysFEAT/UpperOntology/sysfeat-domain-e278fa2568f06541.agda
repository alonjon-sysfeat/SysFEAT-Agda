{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Reflexive Knowledge Graph: 
The Reflexive Knowledge Graph domain defines the top level constructs of Entitys, Relations, their multi-level classification and mereological relationships.It forms the second layer of SysFEATs graph architecture. In this domain, Relations are refied as first class Elements, allowing them to be further described and qualified.Multi-level classification is implemented by PowerTyping, which enables open and flexible meta-modeling capabilities, This includes support for reflexive meta-modeling,  for example allowing Meta-Class to be an instance of itself.Powertyping also applies to relationships, including the Holonymy Relation relationship.This design grounds the Reflexive Knowledge Graph in non-well-founded set theory, ensuring consistency in circular and self-referential structures (see associated external references).The 4D Composite Knowledge Graph provides additional structuring of Entitys and Relations by implementing the Compositionality pattern which establishes the concepts of dynamic locality and connections.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
{-# OPTIONS --cubical-compatible #-}

module e278fa2568f06541 where -- ========== Reflexive Knowledge Graph

open import Agda.Primitive
open import Relation.Binary.PropositionalEquality
open import e27801e868f17024 public -- Meta-Class
open import 6ef572f868f1366f public -- Mixed-Order Entity
open import edc1f6b868f4546c public -- Power Class
open import 7d35645c68f37329 public -- Class of Ordered Entity
open import d9cce4e96937128c public -- Ordered Meta-Class
open import 0dd6b365690d316b public -- Ordered Entity
open import b48ac0116a0d398b public -- Third Order Class
open import d9cce31f69371045 public -- Mixed-Order MetaClass
open import 8d1ceeab68f755a5 public -- Class Partition
open import 8d1cec8d68f754fc public -- Family of Class
open import 8d1cf23968f75847 public -- Meta-Class Partition
open import a39aaa7f685e5118 public -- Lexical Scope
open import e8b2f7c7673d36d1 public -- Entity
open import 20702bc568e969f4 public -- Class of Entity
open import b148d6d568ec7bf1 public -- First Order Class
open import 308c3b3868e9141e public -- Class of Mixed-Order Entity
open import 78e382a768ef0daa public -- Second Order Class
open import 06710aeb68ed2d29 public -- Meta Family of Class
open import f41700e868ee0f29 public -- First Order Entity
