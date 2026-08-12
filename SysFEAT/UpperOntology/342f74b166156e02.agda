{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Whole Life Individual: 
A Whole Life Individual is a Bounded Individual that is not the temporal slice of any other Bounded Individual. A Whole Life Individual includes its past and future.Examples:. The Eiffel tower (31st March 1889 - ...).. William Shakespeare (23 April 1564 - 23 April 1616).. Confucius (685-758).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).. Oackland digital hospital (1994 - ...).. The execution of the registration process at the Oackland digital hospital, by John Smith, on 17 March 2020.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.342f74b166156e02 where -- ========== Whole Life Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.UpperOntology.00ae5d3b667038fc public -- Whole Life Class

WholeLifeIndividual : WholeLifeClass
WholeLifeIndividual = BoundedIndividual

postulate --  WholeLifeIndividual is subTypeOf BoundedIndividual
  st-342f750366156e8a : WholeLifeIndividual ⊏ₑ BoundedIndividual

-- == Relationships =======================
