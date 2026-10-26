{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Bounded Individual MetaClass: 
A Bounded Individual MetaClass is a Class of Class of Individual which is the powertype of  Class of Bounded Individual . It means that all sub-types of Class of Bounded Individual are instances of Bounded Individual MetaClass.

Documentation : https://framework.sysfeat.com/pages/60876d5c68de82f2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.60876d5c68de82f2 where -- ========== Bounded Individual MetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.608767a668de7fb6 public -- Class of Class of Individual

BoundedIndividualMetaClass : ThirdOrderClass
BoundedIndividualMetaClass = ClassOfClassOfIndividual

--  BoundedIndividualMetaClass is subTypeOf ClassOfClassOfIndividual
st-60876d5c68de82f2-608767a668de7fb6 : BoundedIndividualMetaClass ⊏ₑ ClassOfClassOfIndividual
st-60876d5c68de82f2-608767a668de7fb6 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Holonymy MetaClass: -}
holonymyMetaClass :  Linkage BoundedIndividualMetaClass BoundedIndividualMetaClass
holonymyMetaClass = make_classOfHolonymy "Holonymy MetaClass" "Holonymy MetaClass"

postulate -- holonymyMetaClass is subTypeOf metaHolonymy
  st-f6a8f7306ade1d06-59345d466aae06af  : holonymyMetaClass  ⊏⋆ᵣ  metaHolonymy
