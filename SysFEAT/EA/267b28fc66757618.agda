{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Conceptual Entity: 
A Class of Conceptual Entity is a class of concepts which have Conceptual Entitys as instances: Class of Conceptual Entitys classify Conceptual Entitys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.267b28fc66757618 where -- ========== Class of Conceptual Entity

open import Agda.Primitive
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset

ClassOfConceptualEntity : ClassOfClassOfBoundedIndividual
ClassOfConceptualEntity = ClassOfBoundedIndividual

--  ClassOfConceptualEntity is subTypeOf ConceptualEntityAsset
st-267b2a406675798c : ClassOfConceptualEntity ⊏ₑ ConceptualEntityAsset
st-267b2a406675798c = polySubTypeOf-identity

-- == Relationships =======================
