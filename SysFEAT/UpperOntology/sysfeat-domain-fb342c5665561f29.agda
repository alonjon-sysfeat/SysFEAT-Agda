{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

4D Composite Knowledge Graph: 
The purpose of the 4D Composite Knowledge Graph is to layer structured spatio-temporal concepts onto the Reflexive Knowledge Graph,The 4D Composite Knowledge Graph integrates the capabilities of Reflexive Knowledge Graphs (entities, relationships,  Holonymy Relation and multi-level instance of Entity) with those of Compositionality (composite structures) resulting in the addition of the following key features:1) Mereological  Aggregate Holonymy relationships, providing dynamic locality to composition.2) Individual-Property distinction: a clear ontological separation between Bounded Individuals (entities that exist in space and time) and their properties (Property). A dedicated Typology characterizes how individuals relate to and instantiate these properties.3) Temporal Framing: the introduction of temporal connections (Temporal Bounding) that define the temporal boundaries of Bounded Individuals, enabling the explicit modeling of state changes, events, and persistence over time.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
{-# OPTIONS --cubical-compatible #-}

module fb342c5665561f29 where -- ========== 4D Composite Knowledge Graph

open import Agda.Primitive
open import Relation.Binary.PropositionalEquality
open import 87d3062666e33965 public -- Property Type
open import 746ac18368905aa2 public -- Class of Property
open import 3492c53e619642ed public -- Class of Bounded Individual
open import b85efd0868df48b1 public -- Property
open import 28f07b2354be0d69 public -- Bounded Individual
open import 29cd2db0661546c4 public -- Individual State
open import 342f43ae66156429 public -- State Class
open import 4df9512266826e23 public -- Individual
open import 00ae5d3b667038fc public -- Whole Life Class
open import 267b6a126675a0b9 public -- Temporal Bounding
open import 608767a668de7fb6 public -- Class of Class of Individual
open import 60876d5c68de82f2 public -- Class of Class of Bounded Individual
open import 342f74b166156e02 public -- Whole Life Individual
open import 9429979a66823f90 public -- Temporal Bounding Type
open import 6aa8cbcb65b32971 public -- Class of Individual
