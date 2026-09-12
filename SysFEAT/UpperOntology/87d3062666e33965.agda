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
open import SysFEAT.UpperOntology.608767a668de7fb6 public -- Class of Class of Individual

PropertyType : ThirdOrderClass
PropertyType = ClassOfClassOfIndividual

--  PropertyType is subTypeOf ClassOfClassOfIndividual
st-87d3065d66e33a12 : PropertyType ⊏ₑ ClassOfClassOfIndividual
st-87d3065d66e33a12 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Property Type: -}
specializedPropertyType :  Linkage PropertyType PropertyType
specializedPropertyType = make_subTypeOf "Property Type Specialization" "Specialized Property Type"

postulate -- specializedPropertyType is subTypeOf superClassOfClassOfIndividual
  st-12b01dee66e92b43-60876c6168de81be  : specializedPropertyType   ⊏⋆ᵣ  superClassOfClassOfIndividual 

{- Property Type Holonymy: -}
propertyTypeHolonymy :  Linkage PropertyType PropertyType
propertyTypeHolonymy = make_classOfHolonymy "Property Type Holonymy" "Property Type Holonymy"

