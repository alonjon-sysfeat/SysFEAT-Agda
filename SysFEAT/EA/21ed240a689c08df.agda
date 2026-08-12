{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Value Proposition: 
A Value Proposition is a distinctive Asset Property that outlines a set of specific benefits a Product (whether goods or services) delivers to its Customers, emphasizing how it satisfies their needs and offers value. It is essentially a promise made by the Enterprise to its target Customers that its Products will fit their need when performing their Job-to-be-done.A Value Proposition is a characteristic of a Product (a Product Characteristic) and is defined by:1) its Functional Value expressed as qualified and quantified Business Capabilitys and their Business Outcome Events,2) its Non Functional Value expressed by Condition Propertys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.21ed240a689c08df where -- ========== Value Proposition

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property

ValueProposition : PropertyType
ValueProposition = ClassOfProperty

postulate --  ValueProposition is subTypeOf AssetProperty
  st-21ed4b52689c16c6 : ValueProposition ⊏ₑ AssetProperty

-- == Relationships =======================

{- Functional Value: 
The set of Business Capabilitys that expresses the functional value of a Value Proposition.
-}
-- Aggregate Member : Functional Value
FunctionalValue : ClassOfClassOfIndividual
FunctionalValue = ClassOfIndividual

-- Membership relation
membershipOfFunctionalValue :  Linkage ValueProposition FunctionalValue
membershipOfFunctionalValue = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessCapabilityFunctionalValue :  Linkage FunctionalValue BusinessCapability
aggregationOfBusinessCapabilityFunctionalValue = aggregationOfBuildingBlock

{- functionalValue : derived relation obtained by composing
   membershipOfFunctionalValue and aggregationOfBusinessCapabilityFunctionalValue
   It directly links an Value Proposition to the final aggregated BusinessCapability
   hiding the reifying FunctionalValue
-}
functionalValue : Linkage ValueProposition BusinessCapability
functionalValue = membershipOfFunctionalValue  ∘  aggregationOfBusinessCapabilityFunctionalValue

{- Non Functional Value: 
The set of Condition Propertys that expresses the non-functional characteristics of a Value Proposition.
-}
-- Aggregate Member : Non Functional Value
NonFunctionalValue : ClassOfClassOfIndividual
NonFunctionalValue = ClassOfIndividual

-- Membership relation
membershipOfNonFunctionalValue :  Linkage ValueProposition NonFunctionalValue
membershipOfNonFunctionalValue = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConditionPropertyNonFunctionalValue :  Linkage NonFunctionalValue ConditionProperty
aggregationOfConditionPropertyNonFunctionalValue = aggregationOfBuildingBlock

{- nonFunctionalValue : derived relation obtained by composing
   membershipOfNonFunctionalValue and aggregationOfConditionPropertyNonFunctionalValue
   It directly links an Value Proposition to the final aggregated ConditionProperty
   hiding the reifying NonFunctionalValue
-}
nonFunctionalValue : Linkage ValueProposition ConditionProperty
nonFunctionalValue = membershipOfNonFunctionalValue  ∘  aggregationOfConditionPropertyNonFunctionalValue
