{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Property: 
A Data Property is a Data Asset that is fundamentally defined by its value. It doesnt evolve over time is thereby immutable.It represents a logical view of a data structure that stored in data stores.Examples:. customer name . address

Documentation : https://framework.sysfeat.com/pages/8f1c991068ca8a23.htm

External references:
  DDD - Glossary - Value Object: https://www.dddcommunity.org/resources/ddd_terms?valueobject
  Martin Fowler - Value Object: https://martinfowler.com/bliki/ValueObject.html
  UCF Glossary - Data Field: https://compliancedictionary.com/term/2971
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1c991068ca8a23 where -- ========== Data Property

open import Agda.Primitive
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset
open import SysFEAT.SOF.c189d5f068ae4d75 public -- Information Property

DataProperty : PropertyType
DataProperty = ClassOfProperty

--  DataProperty is subTypeOf DataAsset
st-8f1c991068ca8a23-6d2b7c935fbb6270 : DataProperty ⊏ₑ DataAsset
st-8f1c991068ca8a23-6d2b7c935fbb6270 = polySubTypeOf-identity

--  DataProperty is subTypeOf InformationProperty
st-8f1c991068ca8a23-c189d5f068ae4d75 : DataProperty ⊏ₑ InformationProperty
st-8f1c991068ca8a23-c189d5f068ae4d75 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Data Property: -}
specializedDataProperty :  Linkage DataProperty DataProperty
specializedDataProperty = make_subTypeOf "Specialized Data Property" "Specialized Data Property"

