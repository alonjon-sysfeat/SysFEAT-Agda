{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Set of Condition Properties: 
A Set of Condition Properties is a And combination of Condition Propertys.Example: . Delivery time of 30 minutes, at a cost ranging between $8.50 and $10, in stormy conditions.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed5bf7689c1ca3 where -- ========== Set of Condition Properties

open import Agda.Primitive
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property
open import SysFEAT.UpperOntology.8cfa942f68527849 public -- Unbounded Aggregate
open import SysFEAT.SOF.e53af87666e37fcd public -- Set of Environmental Condition Type

SetOfConditionProperties : PropertyType
SetOfConditionProperties = ClassOfProperty

postulate --  SetOfConditionProperties is subTypeOf ConditionProperty
  st-dd26497d689f4774 : SetOfConditionProperties ⊏ₑ ConditionProperty

postulate --  SetOfConditionProperties withAspect UnboundedAggregate
  st-fee30ea2695d17bd : SetOfConditionProperties ⊏ₐₑ (UnboundedAggregate (lsuc(lzero)))

-- == Relationships =======================

{- Set of Environmental Condition Type: -}
setOfEnvironmentalConditionType :  Linkage SetOfConditionProperties SetOfEnvironmentalConditionType
setOfEnvironmentalConditionType = make_instanceOf "Set of Environmental Condition Type" "setOfEnvironmentalConditionType"

postulate -- setOfEnvironmentalConditionType is subTypeOf conditionPropertyType
  st-21ed5c28689c1d28-21ed5a16689c1a59  : setOfEnvironmentalConditionType   ⊏⋆ᵣ  conditionPropertyType 

{- Combined Property: 
And combination of a Condition Propertys.
-}
-- Aggregate Member : Combined Property
CombinedProperty : ClassOfClassOfIndividual
CombinedProperty = ClassOfIndividual

-- Membership relation
membershipOfCombinedProperty :  Linkage SetOfConditionProperties CombinedProperty
membershipOfCombinedProperty = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConditionPropertyCombinedProperty :  Linkage CombinedProperty ConditionProperty
aggregationOfConditionPropertyCombinedProperty = aggregationOfBuildingBlock

{- combinedProperty : derived relation obtained by composing
   membershipOfCombinedProperty and aggregationOfConditionPropertyCombinedProperty
   It directly links an Set of Condition Properties to the final aggregated ConditionProperty
   hiding the reifying CombinedProperty
-}
combinedProperty : Linkage SetOfConditionProperties ConditionProperty
combinedProperty = membershipOfCombinedProperty  ∘  aggregationOfConditionPropertyCombinedProperty
