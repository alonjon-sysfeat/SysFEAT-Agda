{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Elementary Property Type: 
An Elementary Property Type is a Property Type than cannot be further decomposed.Examples:- Temperature- Color- Weight- Confidentiality- Availability

Documentation : https://framework.sysfeat.com/pages/86b99dad6ac3265f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.86b99dad6ac3265f where -- ========== Elementary Property Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type

ElementaryPropertyType : ThirdOrderClass
ElementaryPropertyType = PropertyType


--  ElementaryPropertyType is subTypeOf PropertyType
st-86b99dad6ac3265f-87d3062666e33965 : ElementaryPropertyType ⊏ₑ PropertyType
st-86b99dad6ac3265f-87d3062666e33965 = polySubTypeOf-identity


-- == Relations =======================
