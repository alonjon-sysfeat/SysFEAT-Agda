{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Bounded Individual: 
A Class of Bounded Individual is a Class of Individual which denotes Bounded Individuals that have a proper life cycle, bounded by Temporal Bounding Types.Class of Bounded Individual is the powertype of  Bounded Individual. It means that all sub-types of Bounded Individual are instances of Class of Bounded Individual.Examples:- Car, - Application,- A Process Type (Action Process Type) such as the registration process used at the Oackland digital hospital during the COVID-19 pandemic.Counterexamples:- Project is not a Class of Bounded Individual because its instances have a spatio-temporal extent. Project is a subtype of Bounded Individual.- Capability is not a Class of Bounded Individual. It is a Class of Property.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.3492c53e619642ed where -- ========== Class of Bounded Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual
open import SysFEAT.UpperOntology.8cfa941b6852781f public -- Bounded Aggregate
open import SysFEAT.UpperOntology.60876d5c68de82f2 public -- Class of Class of Bounded Individual
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Class of Property
open import SysFEAT.UpperOntology.9429979a66823f90 public -- Temporal Bounding Type

ClassOfBoundedIndividual : ClassOfClassOfBoundedIndividual
ClassOfBoundedIndividual = ClassOfIndividual

postulate --  ClassOfBoundedIndividual is subTypeOf ClassOfIndividual
  st-3492c54761964345 : ClassOfBoundedIndividual ⊏ₑ ClassOfIndividual

postulate --  ClassOfBoundedIndividual withAspect BoundedAggregate
  st-6483b19466723a48 : ClassOfBoundedIndividual ⊏ₐₑ (BoundedAggregate (lsuc(lzero)))

-- == Relationships =======================

{- Specialized Class of Bounded Individual: -}
specializedClassOfBoundedIndividual :  Linkage ClassOfBoundedIndividual ClassOfBoundedIndividual
specializedClassOfBoundedIndividual = make_subTypeOf "Specialized Class of Bounded Individual" "specializedClassOfBoundedIndividual"

postulate -- specializedClassOfBoundedIndividual is subTypeOf specializedClassOfIndividual
  st-e53a627766e4b4cd-e429632e66ec72ab  : specializedClassOfBoundedIndividual   ⊏⋆ᵣ  specializedClassOfIndividual 

{- Qualification: 
A SubTypeOfEntity from a Class of Bounded Individual to a Class of Property that asserts all members of the Class of Bounded Individual  have  the Class of Property.
-}
qualification :  Linkage ClassOfBoundedIndividual ClassOfProperty
qualification = make_subTypeOf "Qualification" "qualification"

postulate -- qualification is subTypeOf specializedClassOfIndividual
  st-16621f9a689131e0-e429632e66ec72ab  : qualification   ⊏⋆ᵣ  specializedClassOfIndividual 

{- Temporal Sequencing Type: -}
-- Aggregate Member : Temporal Sequencing Type
TemporalSequencingType : ClassOfClassOfIndividual
TemporalSequencingType = ClassOfIndividual

-- Membership relation
membershipOfTemporalSequencingType :  Linkage ClassOfBoundedIndividual TemporalSequencingType
membershipOfTemporalSequencingType = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTemporalBoundingTypeTemporalSequencingType :  Linkage TemporalSequencingType TemporalBoundingType
aggregationOfTemporalBoundingTypeTemporalSequencingType = aggregationOfBuildingBlock

{- temporalSequencingType : derived relation obtained by composing
   membershipOfTemporalSequencingType and aggregationOfTemporalBoundingTypeTemporalSequencingType
   It directly links an Class of Bounded Individual to the final aggregated TemporalBoundingType
   hiding the reifying TemporalSequencingType
-}
temporalSequencingType : Linkage ClassOfBoundedIndividual TemporalBoundingType
temporalSequencingType = membershipOfTemporalSequencingType  ∘  aggregationOfTemporalBoundingTypeTemporalSequencingType

{- Aggregate Qualification: 
An Aggregate Qualification is a Qualification that is refied as an Unbounded Member of a Class of Bounded Individual.Example:. The enforcement of a rule in a process (Rule Enforcement) is a refied Qualification.
-}
-- Aggregate Member : Aggregate Qualification
AggregateQualification : ClassOfClassOfIndividual
AggregateQualification = ClassOfIndividual

-- Membership relation
membershipOfAggregateQualification :  Linkage ClassOfBoundedIndividual AggregateQualification
membershipOfAggregateQualification = membershipOfAggregateMember

-- Aggregation relation
aggregationOfClassOfPropertyAggregateQualification :  Linkage AggregateQualification ClassOfProperty
aggregationOfClassOfPropertyAggregateQualification = aggregationOfBuildingBlock

{- aggregateQualification : derived relation obtained by composing
   membershipOfAggregateQualification and aggregationOfClassOfPropertyAggregateQualification
   It directly links an Class of Bounded Individual to the final aggregated ClassOfProperty
   hiding the reifying AggregateQualification
-}
aggregateQualification : Linkage ClassOfBoundedIndividual ClassOfProperty
aggregateQualification = membershipOfAggregateQualification  ∘  aggregationOfClassOfPropertyAggregateQualification

{- Aggregate Holonymy Type: 
An Aggregate Holonymy Type is a reified flavor of Poly Class of Holonymy whereby the referenced Class of Individual is aggregated in its parent (whole) Class of Bounded Individual.Example:1) A Process Step is the reification of the composition of a child process in a parent process.2) 
-}
-- Aggregate Member : Aggregate Holonymy Type
AggregateHolonymyType : ClassOfClassOfIndividual
AggregateHolonymyType = ClassOfIndividual

postulate -- AggregateHolonymyType is subTypeOf ClassOfIndividual
  df63e0306a850ccf : AggregateHolonymyType ⊏ₑ ClassOfIndividual

-- Membership relation
membershipOfAggregateHolonymyType :  Linkage ClassOfBoundedIndividual AggregateHolonymyType
membershipOfAggregateHolonymyType = membershipOfAggregateMember

-- Aggregation relation
aggregationOfClassOfBoundedIndividualAggregateHolonymyType :  Linkage AggregateHolonymyType ClassOfBoundedIndividual
aggregationOfClassOfBoundedIndividualAggregateHolonymyType = aggregationOfBuildingBlock

{- aggregateHolonymyType : derived relation obtained by composing
   membershipOfAggregateHolonymyType and aggregationOfClassOfBoundedIndividualAggregateHolonymyType
   It directly links an Class of Bounded Individual to the final aggregated ClassOfBoundedIndividual
   hiding the reifying AggregateHolonymyType
-}
aggregateHolonymyType : Linkage ClassOfBoundedIndividual ClassOfBoundedIndividual
aggregateHolonymyType = membershipOfAggregateHolonymyType  ∘  aggregationOfClassOfBoundedIndividualAggregateHolonymyType
