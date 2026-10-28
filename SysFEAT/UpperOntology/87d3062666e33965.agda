{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Property Type: 
A Property Type is a Abstract Entity MetaClass that is used to classify Propertys.Example:- Temperature- Color- Weight- Confidentiality- Availability

Documentation : https://framework.sysfeat.com/pages/87d3062666e33965.htm

External references:
  ISO 15926 - ClassOfProperty: https://15926.blog/topics/data-model/index.htm#ClassOfProperty
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.87d3062666e33965 where -- ========== PropertyType

open import Agda.Primitive
open import SysFEAT.UpperOntology.3aca564b6aa646ce public -- AbstractEntityMetaClass
open import SysFEAT.UpperOntology.bab6c7346ad70999 public -- ThirdOrderClass

PropertyType : ThirdOrderClass
PropertyType = SecondOrderClass

--  PropertyType is subTypeOf AbstractEntityMetaClass
st-87d3062666e33965-3aca564b6aa646ce : PropertyType ⊏ₑ AbstractEntityMetaClass
st-87d3062666e33965-3aca564b6aa646ce = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Property Type: -}
specializedPropertyType :  Linkage PropertyType PropertyType
specializedPropertyType = make_subTypeOf "Property Type Specialization" "Specialized Property Type"

postulate -- specializedPropertyType is subTypeOf subTypeOfEntity
  st-12b01dee66e92b43-8336837268e9448b  : specializedPropertyType  ⊏⋆ᵣ  subTypeOfEntity {lzero}
