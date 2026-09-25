{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Property Type: 
A Property Type is a Class of Class of Individual Object that is used to classify Propertys.Example:- Temperature- Color- Weight- Confidentiality- Availability

Documentation : https://framework.sysfeat.com/pages/87d3062666e33965.htm

External references:
  ISO 15926 - ClassOfProperty: https://15926.blog/topics/data-model/index.htm#ClassOfProperty
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.87d3062666e33965 where -- ========== Property Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.3aca564b6aa646ce public -- Class of Class of Abstract Entity
open import SysFEAT.UpperOntology.05e6065d6aa42f5f public -- Third Order Class

PropertyType : ThirdOrderClass
PropertyType = ClassOfClassOfAbstractEntity

--  PropertyType is subTypeOf ClassOfClassOfAbstractEntity
st-87d3062666e33965-3aca564b6aa646ce : PropertyType ⊏ₑ ClassOfClassOfAbstractEntity
st-87d3062666e33965-3aca564b6aa646ce = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Property Type: -}
specializedPropertyType :  Linkage PropertyType PropertyType
specializedPropertyType = make_subTypeOf "Property Type Specialization" "Specialized Property Type"

postulate -- specializedPropertyType is subTypeOf subTypeOfEntity
  st-12b01dee66e92b43-8336837268e9448b  : specializedPropertyType  ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

-- -------------------------------------------------------------------------------------------- 
{- Property Type Holonymy: -}
propertyTypeHolonymy :  Linkage PropertyType PropertyType
propertyTypeHolonymy = make_classOfHolonymy "Property Type Holonymy" "Property Type Holonymy"

