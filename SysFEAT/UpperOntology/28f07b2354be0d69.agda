{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Bounded Individual: 
Bounded Individuals are Individuals which have a life cycle, bounded by Temporal Boundings. Because of its composite nature, Bounded Individual is a sub-type of Bounded Aggregate.Bounded Individuals shall be made distinct from Class of Bounded Individual which they are instance of.Bounded Individuals are represented with light orange boxes (see the Meta-Model Legend).Examples:. The Eiffel tower (31st March 1889 - ...).. William Shakespeare in its Early Theatrical Career (1592-1600).. Confucius (685-758).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).. Oackland digital hospital after its renovation (2022 - ...). The execution of the registration process at the Oackland digital hospital, by John Smith, on 17 March 2020.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.28f07b2354be0d69 where -- ========== Bounded Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.UpperOntology.8cfa941b6852781f public -- Bounded Aggregate
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Class of Property
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- Temporal Bounding

BoundedIndividual : ClassOfBoundedIndividual
BoundedIndividual = Individual

postulate --  BoundedIndividual is subTypeOf Individual
  st-4df951b166826ec8 : BoundedIndividual ⊏ₑ Individual

postulate --  BoundedIndividual withAspect BoundedAggregate
  st-6483b18b66723a1f : BoundedIndividual ⊏ₐₑ (BoundedAggregate lzero)

-- == Relationships =======================

{- Elementary Holonymy: 
Elementary Holonymy is a non-reified Holonymy Relation where the composed Bounded Individual is referenced (Reference Relation) as a part of the source Bounded Individual.
-}
elementaryHolonymy :  Linkage BoundedIndividual BoundedIndividual
elementaryHolonymy = make_holonymyRelation "Elementary Holonymy" "elementaryHolonymy"

postulate -- elementaryHolonymy is subTypeOf holonymyRelation
  st-9653a95669701e02-c2f2c6ce66e90be7  : elementaryHolonymy   ⊏⋆ᵣ  holonymyRelation 
postulate -- elementaryHolonymy is subTypeOf referenceRelation
  st-9653a95669701e02-23d5398f68511bc1  : elementaryHolonymy   ⊏⋆ᵣ  referenceRelation {lzero} {lzero}

{- Property of Individual: 
A instance of Entity from a Bounded Individual to a Class of Property that asserts the Bounded Individual  has  the Class of Property.
-}
propertyOfIndividual :  Linkage BoundedIndividual ClassOfProperty
propertyOfIndividual = make_instanceOf "Property of Individual" "propertyOfIndividual"

postulate -- propertyOfIndividual is subTypeOf instanceOfEntity
  st-19763dbb68926a48-34a453a068f7a3ef  : propertyOfIndividual   ⊏⋆ᵣ  instanceOfEntity {lzero} {lsuc(lzero)}

{- Aggregate Holonymy: 
Aggregate Holonymy is a reified Holonymy Relation where the composed Bounded Individual becomes a Bounded Member of the whole Bounded Individual.
-}
-- Aggregate Member : Aggregate Holonymy
AggregateHolonymy : ClassOfOrderedEntity (lsuc(lzero))
AggregateHolonymy = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfAggregateHolonymy :  Linkage BoundedIndividual AggregateHolonymy
membershipOfAggregateHolonymy = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBoundedIndividualAggregateHolonymy :  Linkage AggregateHolonymy BoundedIndividual
aggregationOfBoundedIndividualAggregateHolonymy = aggregationOfBuildingBlock

{- aggregateHolonymy : derived relation obtained by composing
   membershipOfAggregateHolonymy and aggregationOfBoundedIndividualAggregateHolonymy
   It directly links an Bounded Individual to the final aggregated BoundedIndividual
   hiding the reifying AggregateHolonymy
-}
aggregateHolonymy : Linkage BoundedIndividual BoundedIndividual
aggregateHolonymy = membershipOfAggregateHolonymy  ∘  aggregationOfBoundedIndividualAggregateHolonymy

{- Temporal Sequencing: -}
-- Aggregate Member : Temporal Sequencing
TemporalSequencing : ClassOfOrderedEntity (lsuc(lzero))
TemporalSequencing = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfTemporalSequencing :  Linkage BoundedIndividual TemporalSequencing
membershipOfTemporalSequencing = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTemporalBoundingTemporalSequencing :  Linkage TemporalSequencing TemporalBounding
aggregationOfTemporalBoundingTemporalSequencing = aggregationOfBuildingBlock

{- temporalSequencing : derived relation obtained by composing
   membershipOfTemporalSequencing and aggregationOfTemporalBoundingTemporalSequencing
   It directly links an Bounded Individual to the final aggregated TemporalBounding
   hiding the reifying TemporalSequencing
-}
temporalSequencing : Linkage BoundedIndividual TemporalBounding
temporalSequencing = membershipOfTemporalSequencing  ∘  aggregationOfTemporalBoundingTemporalSequencing
