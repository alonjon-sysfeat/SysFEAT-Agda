{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative and Transformation Pattern: 
The Initiative and Transformation Pattern domain defines management concepts required for transformation initiatives.It provides principles for the coordination of large scale initiatives evolving over time (Enduring Initiative and their Initiative Stages).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
{-# OPTIONS --cubical-compatible #-}

module 69346af86005efa9 where -- ========== Initiative and Transformation Pattern

open import Agda.Primitive
open import Relation.Binary.PropositionalEquality
open import c7dad03f5ae92ae9 public -- Responsible Human Entity
open import e78c5eb0661989f9 public -- Initiative Stage
open import 01f12127689b6de2 public -- Capability Map
open import 0520200666475f86 public -- Time-bound Initiative
open import d321c226601262ae public -- Enduring Initiative
open import 299e882b68488d2c public -- Operational Transformation
open import 299e895568488eb3 public -- Assurance Initiative
open import 08570d835ed129a3 public -- Initiative Milestone
open import 01ce05f9685979d8 public -- Initiative Block
open import 0ffeec41600be08a public -- Initiative
open import 01ce05606859794a public -- Initiative Instrument
