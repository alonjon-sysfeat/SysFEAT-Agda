{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual: 
Individuals are Entitys which represent things that exist over space and time.Individuals are represented as light orange boxes, while their classes are represented as dark orange boxes (see the Meta-Model Legend) .Examples:. The Eiffel tower completion (31st March 1889). The Eiffel tower (31st March 1889 - ...).. William Shakespeare birth (1592). William Shakespeare in its Early Theatrical Career (1592-1600).. Confucius (685-758).. Confucius death (758).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).. Oackland digital hospital after its renovation (2022 - ...). The execution of the registration process at the Oackland digital hospital, by John Smith, on 17 March 2020.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.4df9512266826e23 where -- ========== Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual

Individual : ClassOfIndividual
Individual = FirstOrderEntity

postulate --  Individual is subTypeOf FirstOrderEntity
  st-edc112a668f55896 : Individual ⊏ₑ FirstOrderEntity

postulate --  Individual withAspect BuildingBlock
  st-96581db9699305c7 : Individual ⊏ₐₑ (BuildingBlock lzero)

-- == Relationships =======================
