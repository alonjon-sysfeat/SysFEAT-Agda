{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Individual: 
A Class of Individual is a First Order Class of Entitys that exist in space and time. It is the powertype of  Individual.Class of Individuals are represented as dark orange boxes (see the Meta-Model Legend) .Examples:- Red;- 12 kg;-  Top Secret (TS) confidentiality.- Birth,- Death,

Documentation : https://framework.sysfeat.com/pages/6aa8cbcb65b32971.htm

External references:
  ISO 15926 - ClassOfIndividual: https://15926.blog/topics/data-model/index.htm#ClassOfIndividual
  OMG - SBVR - General Concept: https://www.omg.org/spec/SBVR/1.5/PDF#page=59
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.6aa8cbcb65b32971 where -- ========== Class of Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.c463c6106aa23c35 public -- First Order Class
open import SysFEAT.UpperOntology.608767a668de7fb6 public -- Class of Class of Individual
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category

ClassOfIndividual : ClassOfClassOfIndividual
ClassOfIndividual = FirstOrderClass

--  ClassOfIndividual is subTypeOf FirstOrderClass
st-6aa8cbcb65b32971-c463c6106aa23c35 : ClassOfIndividual ⊏ₑ FirstOrderClass
st-6aa8cbcb65b32971-c463c6106aa23c35 = polySubTypeOf-identity


-- == Relations =======================

{- 41906DB96AAA41A6: -}
41906DB96AAA41A6 :  Linkage ClassOfIndividual Individual
41906DB96AAA41A6 = make_classOfRelation "41906DB96AAA41A6" "41906DB96AAA41A6"


{- Categorization: -}
categorization : ∀ {u} →  Linkage ClassOfIndividual (Category u)
categorization = make_instanceOf "Categorization" "Categorization"

postulate -- categorization is subTypeOf instanceOfEntity
  st-f69619646a0f8e6c-34a453a068f7a3ef  : categorization  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  instanceOfEntity {lzero} {lsuc(lzero)}

{- Specialized Class of Individual: 
Specialization relationship between Class of Individual.
-}
specializedClassOfIndividual :  Linkage ClassOfIndividual ClassOfIndividual
specializedClassOfIndividual = make_subTypeOf "Individual Class Specialization" "Specialized Class of Individual"

postulate -- specializedClassOfIndividual is subTypeOf subTypeOfEntity
  st-e429632e66ec72ab-8336837268e9448b  : specializedClassOfIndividual   ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}
