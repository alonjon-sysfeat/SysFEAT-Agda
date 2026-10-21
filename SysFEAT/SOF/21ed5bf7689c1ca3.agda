{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Set of Condition Properties: 
A Set of Condition Properties is a And combination of Condition Propertys.Example: . Delivery time of 30 minutes, at a cost ranging between $8.50 and $10, in stormy conditions.

Documentation : https://framework.sysfeat.com/pages/21ed5bf7689c1ca3.htm

External references:
  OMG - UAF - ActualMeasurementSet: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ActualMeasurementSet
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed5bf7689c1ca3 where -- ========== Set of Condition Properties

open import Agda.Primitive
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property
open import SysFEAT.UpperOntology.8cfa942f68527849 public -- Unbounded Aggregate
open import SysFEAT.SOF.e53af87666e37fcd public -- Set of Environmental Condition Type

SetOfConditionProperties : PropertyType
SetOfConditionProperties = Property

--  SetOfConditionProperties is subTypeOf ConditionProperty
st-21ed5bf7689c1ca3-21ed231d689c0679 : SetOfConditionProperties ⊏ₑ ConditionProperty
st-21ed5bf7689c1ca3-21ed231d689c0679 = polySubTypeOf-identity

--  SetOfConditionProperties withAspect UnboundedAggregate
st-21ed5bf7689c1ca3-8cfa942f68527849 : SetOfConditionProperties ⊏ₐₑ (UnboundedAggregate (lsuc(lzero)))
st-21ed5bf7689c1ca3-8cfa942f68527849 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Set of Environmental Condition Type: -}
setOfEnvironmentalConditionType :  Linkage SetOfConditionProperties SetOfEnvironmentalConditionType
setOfEnvironmentalConditionType = make_instanceOf "Set of Environmental Condition Type" "Set of Environmental Condition Type"

postulate -- setOfEnvironmentalConditionType is subTypeOf conditionPropertyType
  st-21ed5c28689c1d28-21ed5a16689c1a59  : setOfEnvironmentalConditionType  ⊏⋆ᵣ  conditionPropertyType

-- -------------------------------------------------------------------------------------------- 
{- Combined Property: 
And combination of a Condition Propertys.
-}
-- Aggregate Member : Combined Property
CombinedProperty : ClassOfClassOfIndividual
CombinedProperty = ClassOfIndividual


--  CombinedProperty withAspect UnboundedMember
st-dd26df9f689e4681-8cfaf71a6852b042 : CombinedProperty ⊏ₐₑ (UnboundedMember (lsuc(lzero)))
st-dd26df9f689e4681-8cfaf71a6852b042 = polySubTypeOf-identity

-- Membership relation
membershipOfCombinedProperty :  Linkage SetOfConditionProperties CombinedProperty
membershipOfCombinedProperty = make_upwardNestingRelation "combinedProperty membership" "nested combinedProperty"

-- Aggregation relation
aggregationOfConditionPropertyCombinedProperty :  Linkage CombinedProperty ConditionProperty
aggregationOfConditionPropertyCombinedProperty = make_Relation "ConditionProperty aggregation" "aggregated ConditionProperty"

{- combinedProperty : derived relation obtained by composing
   membershipOfCombinedProperty and aggregationOfConditionPropertyCombinedProperty
   It directly links an Set of Condition Properties to the final aggregated ConditionProperty
   hiding the reifying CombinedProperty
-}
combinedProperty : Linkage SetOfConditionProperties ConditionProperty
combinedProperty = membershipOfCombinedProperty  ∘  aggregationOfConditionPropertyCombinedProperty


