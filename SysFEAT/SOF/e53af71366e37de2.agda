{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Condition Property Type: 
A Condition Property Type expresses a type of constraint that can be applied to Asset Types.These constraints can be either Measure Property Type (Time, Mass, Cost, ..), Environmental Property Types (Terrain Type, Light conditions, Weather conditions) or a grouping of these (Set of Environmental Condition Type).Condition Property Types are used to constrain Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.

Documentation : https://framework.sysfeat.com/pages/e53af71366e37de2.htm

External references:
  OpenGroup - ArchiMate - Constraint: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Motivation-Elements.html#sec-Constraint
  Wikipeddia - List of quality attributes: https://en.wikipedia.org/wiki/List_of_system_quality_attributes
  Wikipedia - Measurement: https://en.wikipedia.org/wiki/Measurement
  Russell Ackoff - Choice & Communication - MorphologicalProperty: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#MorphologicalProperty
  OpenGroup - TOGAF - Enterprise Metamodel - Measure: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e53af71366e37de2 where -- ========== Condition Property Type

open import Agda.Primitive
open import SysFEAT.SOF.83f88fd567406e53 public -- Asset Property Type
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.6cfb6ef26a0f15e4 public -- Condition Category

ConditionPropertyType : ThirdOrderClass
ConditionPropertyType = SecondOrderClass

--  ConditionPropertyType is subTypeOf AssetPropertyType
st-e53af73166e37e27 : ConditionPropertyType ⊏ₑ AssetPropertyType
st-e53af73166e37e27 = polySubTypeOf-identity

--  ConditionPropertyType withAspect ModelPropertyBlock
st-c2f2a61266ea39c4 : ConditionPropertyType ⊏ₐₑ (ModelPropertyBlock (lsuc(lsuc(lzero))))
st-c2f2a61266ea39c4 = polySubTypeOf-identity

-- == Relationships =======================

{- Condition Category: 
The Condition Category that a Condition Property Type belongs to.For instance,  Delivery Time  belongs to the  Performance  category.
-}
conditionCategory : ∀ {u} →  Linkage ConditionPropertyType (ConditionCategory u)
conditionCategory = make_classOfRelation "Condition Category" "Condition Category"

