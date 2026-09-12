{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Second Order Class: 
Second Order Class is the Meta-Class of all subclasses of First Order Class. 
Each instance of Second Order Class is a class, each of whose instances is a First Order Class. First Order Class is an instance of Second Order Class since, by definition, all of its instances are First Order Classes.

Examples: 
1) Car-Brand (with instances such as VolkswagenCar and HondaCar), 
2) AnimalSpecies (with instancessuch as GreyWolf and Dodo), Occupation, and USArmyRank. 

External references:
  Multi-level conceptual modeling: Theory, language and application: https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  CycProject- Instances of_instances modeled via higher-order-classes: ../resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf

Documentation: https://framework.sysfeat.com/pages/a599a7E46aa370fb.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.a599a7E46aa370fb where -- ============================ Second Order Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation
open import SysFEAT.UpperOntology.d9cce4e96937128c public -- Ordered MetaClass
open import SysFEAT.UpperOntology.05e6065d6aa42f5f public -- Third Order Class

-- ============================================================
-- I. Second Order Class (M2 level)
-- SecondOrderClass is locked at level 2  (Set2)
-- ============================================================ 
SecondOrderClass : ThirdOrderClass
SecondOrderClass = MetaClass lzero
 
-- ============================================================
-- II. Meta-Graph
-- ============================================================ 
-- SecondOrderClass isSubTypeOf OrderedMetaClass  
34a349a068f71f77 : SecondOrderClass ⊏ₑ (OrderedMetaClass lzero)
34a349a068f71f77 = polySubTypeOf-identity

