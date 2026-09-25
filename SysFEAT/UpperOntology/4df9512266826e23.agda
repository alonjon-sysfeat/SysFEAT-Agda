{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual: 
Individuals are First Order Entitys which represent things that exist over space and time.Individuals are represented as light orange boxes, while their classes are represented as dark orange boxes (see the Meta-Model Legend) .Examples:. The Eiffel tower completion (31st March 1889). The Eiffel tower (31st March 1889 - ...).. William Shakespeare birth (1592). William Shakespeare in its Early Theatrical Career (1592-1600).. Confucius (685-758).. Confucius death (758).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).. Oackland digital hospital after its renovation (2022 - ...). The execution of the registration process at the Oackland digital hospital, by John Smith, on 17 March 2020.

Documentation : https://framework.sysfeat.com/pages/4df9512266826e23.htm

External references:
  ISO 15926 - PossibleIndividual: https://15926.blog/topics/data-model/index.htm#PossibleIndividual
  Stanford Encyclopedia - Temporal-parts: https://plato.stanford.edu/entries/temporal-parts
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.4df9512266826e23 where -- ========== Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.5425a2df6aa225cf public -- First Order Entity
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual

Individual : ClassOfIndividual
Individual = FirstOrderEntity

--  Individual is subTypeOf FirstOrderEntity
st-4df9512266826e23-5425a2df6aa225cf : Individual ⊏ₑ FirstOrderEntity
st-4df9512266826e23-5425a2df6aa225cf = polySubTypeOf-identity

postulate -- Individual is PowerInstanceOf Class of Individual
  87c18c5566e8638a : Individual ∷ₚₑ ClassOfIndividual
postulate -- ClassOfIndividual is ReflexivePowerType 
  41906db96aaa41a6 : ClassOfIndividual ⊏ₘₑ Individual

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Property of Individual: 
An instance of Entity from a Bounded Individual to a Property that asserts the Bounded Individual  has  the Property.
-}
propertyOfIndividual :  Linkage Individual Property
propertyOfIndividual = make_instanceOf "Individual Qualification" "Property of Individual"

postulate -- propertyOfIndividual is subTypeOf instanceOfEntity
  st-19763dbb68926a48-34a453a068f7a3ef  : propertyOfIndividual   ⊏⋆ᵣ  instanceOfEntity {lzero} {lsuc(lzero)}
