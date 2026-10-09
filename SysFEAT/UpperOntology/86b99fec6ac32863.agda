{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Composite Property Type: 
A Composite Property Type is a Property Type that is composed of other Property Types.

Documentation : https://framework.sysfeat.com/pages/86b99fec6ac32863.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.86b99fec6ac32863 where -- ========== Composite Property Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type

CompositePropertyType : ThirdOrderClass
CompositePropertyType = PropertyType


--  CompositePropertyType is subTypeOf PropertyType
st-86b99fec6ac32863-87d3062666e33965 : CompositePropertyType ⊏ₑ PropertyType
st-86b99fec6ac32863-87d3062666e33965 = polySubTypeOf-identity


-- == Relations =======================
