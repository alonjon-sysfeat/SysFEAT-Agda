{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Property Type: 
A Property Type is a Class of Class of Individual Object that is used to classify Propertys.Example:- Temperature- Color- Weight- Confidentiality- Availability
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
specializedPropertyType = make_subTypeOf "Specialized Property Type" "specializedPropertyType"

postulate -- specializedPropertyType is subTypeOf superClassOfClassOfIndividual
  st-12b01dee66e92b43-60876c6168de81be  : specializedPropertyType   ⊏⋆ᵣ  superClassOfClassOfIndividual 

{- Property Type Holonymy: -}
propertyTypeHolonymy :  Linkage PropertyType PropertyType
propertyTypeHolonymy = make_classOfHolonymy "Property Type Holonymy" "propertyTypeHolonymy"

postulate -- propertyTypeHolonymy is subTypeOf polyClassOfHolonymy
  st-9653a4ad6970107b-c2f2c09a66ea41bf  : propertyTypeHolonymy   ⊏⋆ᵣ  polyClassOfHolonymy {lsuc(lzero)}
