{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Whole Life Asset: 
A Whole Life Asset is a Individual Asset that is not the temporal slice of any other Individual Asset. A Whole Life Asset includes its past and future.Examples:. The Eiffel tower (31st March 1889 - ...).. William Shakespeare (23 April 1564 - 23 April 1616).. Confucius (685-758).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).. Oackland digital hospital (1994 - ...).. The registration process used at the Oackland digital hospital during the COVID-19 pandemic (17 March 2020 - 1 May 2020).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3a2f3b516796620e where -- ========== Whole Life Asset

open import Agda.Primitive
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset
open import SysFEAT.UpperOntology.342f74b166156e02 public -- Whole Life Individual
open import SysFEAT.SOF.e13ce1cd678f1111 public -- Whole Life Asset Type

WholeLifeAsset : ClassOfBoundedIndividual
WholeLifeAsset = BoundedIndividual

postulate --  WholeLifeAsset is subTypeOf IndividualAsset
  st-3a2f3b5967966256 : WholeLifeAsset ⊏ₑ IndividualAsset

postulate --  WholeLifeAsset is subTypeOf WholeLifeIndividual
  st-3a2f3b76679663c2 : WholeLifeAsset ⊏ₑ WholeLifeIndividual

-- == Relationships =======================
