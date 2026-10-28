{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Elementary Property Type: 
An Elementary Property Type is a Property Type than cannot be further decomposed.Examples:- Temperature- Color- Weight- Confidentiality- Availability

Documentation : https://framework.sysfeat.com/pages/86b99dad6ac3265f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.86b99dad6ac3265f where -- ========== ElementaryPropertyType

open import Agda.Primitive
open import SysFEAT.UpperOntology.87d3062666e33965 public -- PropertyType
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- ElementaryBlock

ElementaryPropertyType : ThirdOrderClass
ElementaryPropertyType = PropertyType


--  ElementaryPropertyType is subTypeOf PropertyType
st-86b99dad6ac3265f-87d3062666e33965 : ElementaryPropertyType ⊏ₑ PropertyType
st-86b99dad6ac3265f-87d3062666e33965 = polySubTypeOf-identity

--  ElementaryPropertyType withAspect ElementaryBlock
st-86b99dad6ac3265f-23d5c5fc685142de : ElementaryPropertyType ⊏ₐₑ (ElementaryBlock (lsuc(lsuc(lzero))))
st-86b99dad6ac3265f-23d5c5fc685142de = polySubTypeOf-identity


-- == Relations =======================
