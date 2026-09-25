{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Bounded Individual: 
Bounded Individuals are Individuals which have a life cycle, bounded by Temporal Boundings. Because of its composite nature, Bounded Individual is a sub-type of Bounded Aggregate.Bounded Individuals shall be made distinct from Class of Bounded Individual which they are instance of.Bounded Individuals are represented with light orange boxes (see the Meta-Model Legend).Examples:. The Eiffel tower (31st March 1889 - ...).. William Shakespeare in its Early Theatrical Career (1592-1600).. Confucius (685-758).. Mount Vesuvius eruption (Aug. 24-25, A.D. 79).. Oackland digital hospital after its renovation (2022 - ...). The execution of the registration process at the Oackland digital hospital, by John Smith, on 17 March 2020.

Documentation : https://framework.sysfeat.com/pages/28f07b2354be0d69.htm

External references:
  ISO 15926 - ArrangedIndividual: https://15926.blog/topics/data-model/index.htm#ArrangedIndividual
  SysFEAT -Semantic.pdf: ../resources/framework/SysFEAT-ModelingFramework-02-Semantic.pdf
  W3C - OWL - Individual: https://www.w3.org/TR/owl-ref/#Individual
  OMG - KerML - Occurrence: https://www.omg.org/spec/KerML/1.0/PDF#page=316
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.28f07b2354be0d69 where -- ========== Bounded Individual

open import Agda.Primitive
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.UpperOntology.8cfa941b6852781f public -- Bounded Aggregate
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- Temporal Bounding

BoundedIndividual : ClassOfBoundedIndividual
BoundedIndividual = Individual

--  BoundedIndividual is subTypeOf Individual
st-28f07b2354be0d69-4df9512266826e23 : BoundedIndividual ⊏ₑ Individual
st-28f07b2354be0d69-4df9512266826e23 = polySubTypeOf-identity

--  BoundedIndividual withAspect BoundedAggregate
st-28f07b2354be0d69-8cfa941b6852781f : BoundedIndividual ⊏ₐₑ (BoundedAggregate lzero)
st-28f07b2354be0d69-8cfa941b6852781f = polySubTypeOf-identity

postulate -- BoundedIndividual is PowerInstanceOf Class of Bounded Individual
  96a19b6566e85713 : BoundedIndividual ∷ₚₑ ClassOfBoundedIndividual
postulate -- ClassOfBoundedIndividual is ReflexivePowerType 
  f4a3f54f6aa68175 : ClassOfBoundedIndividual ⊏ₘₑ BoundedIndividual

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Reference Holonymy: 
Reference Holonymy is a non-reified Holonymy Relation where the composed Bounded Individual is referenced (Reference Relation) as a part of the source Bounded Individual.
-}
referenceHolonymy :  Linkage BoundedIndividual BoundedIndividual
referenceHolonymy = make_holonymyRelation "Reference Holonymy" "Reference Holonymy"

postulate -- referenceHolonymy is subTypeOf holonymyRelation
  st-9653a95669701e02-c2f2c6ce66e90be7  : referenceHolonymy  ⊏⋆ᵣ  holonymyRelation
postulate -- referenceHolonymy is subTypeOf referenceRelation
  st-9653a95669701e02-23d5398f68511bc1  : referenceHolonymy  ⊏⋆ᵣ  referenceRelation {lzero} {lzero}

-- -------------------------------------------------------------------------------------------- 
{- Aggregate Holonymy: 
Aggregate Holonymy is a reified Holonymy Relation where the composed Bounded Individual becomes a Bounded Member of the whole Bounded Individual.
-}
-- Aggregate Member : Aggregate Holonymy
AggregateHolonymy : AggregateHolonymyType
AggregateHolonymy = BoundedIndividual


--  AggregateHolonymy withAspect BoundedMember
st-c2f2c9a166ea50e2-0eb999956855e070 : AggregateHolonymy ⊏ₐₑ (BoundedMember lzero)
st-c2f2c9a166ea50e2-0eb999956855e070 = polySubTypeOf-identity

--  AggregateHolonymy is subTypeOf BoundedIndividual
st-c2f2c9a166ea50e2-28f07b2354be0d69 : AggregateHolonymy ⊏ₑ BoundedIndividual
st-c2f2c9a166ea50e2-28f07b2354be0d69 = polySubTypeOf-identity

-- Membership relation
membershipOfAggregateHolonymy :  Linkage BoundedIndividual AggregateHolonymy
membershipOfAggregateHolonymy = make_upwardNestingRelation "aggregateHolonymy membership" "nested aggregateHolonymy"

-- Aggregation relation
aggregationOfBoundedIndividualAggregateHolonymy :  Linkage AggregateHolonymy BoundedIndividual
aggregationOfBoundedIndividualAggregateHolonymy = make_Relation "BoundedIndividual aggregation" "aggregated BoundedIndividual"

{- aggregateHolonymy : derived relation obtained by composing
   membershipOfAggregateHolonymy and aggregationOfBoundedIndividualAggregateHolonymy
   It directly links an Bounded Individual to the final aggregated BoundedIndividual
   hiding the reifying AggregateHolonymy
-}
aggregateHolonymy : Linkage BoundedIndividual BoundedIndividual
aggregateHolonymy = membershipOfAggregateHolonymy  ∘  aggregationOfBoundedIndividualAggregateHolonymy

postulate -- aggregateHolonymy is subTypeOf holonymyRelation
  st-c2f2c9a166ea50e2-c2f2c6ce66e90be7  : aggregateHolonymy  ⊏⋆ᵣ  holonymyRelation


-- -------------------------------------------------------------------------------------------- 
{- Temporal Ordering: -}
-- Aggregate Member : Temporal Ordering
TemporalOrdering : ClassOfIndividual
TemporalOrdering = Individual


--  TemporalOrdering is subTypeOf Individual
st-255744cb6758a69e-4df9512266826e23 : TemporalOrdering ⊏ₑ Individual
st-255744cb6758a69e-4df9512266826e23 = polySubTypeOf-identity

--  TemporalOrdering withAspect OrderingConnector
st-255744cb6758a69e-478a4a4468565425 : TemporalOrdering ⊏ₐₑ (OrderingConnector lzero)
st-255744cb6758a69e-478a4a4468565425 = polySubTypeOf-identity

-- Membership relation
membershipOfTemporalOrdering :  Linkage BoundedIndividual TemporalOrdering
membershipOfTemporalOrdering = make_upwardNestingRelation "temporalOrdering membership" "nested temporalOrdering"

-- Aggregation relation
aggregationOfTemporalBoundingTemporalOrdering :  Linkage TemporalOrdering TemporalBounding
aggregationOfTemporalBoundingTemporalOrdering = make_Relation "TemporalBounding aggregation" "aggregated TemporalBounding"

{- temporalOrdering : derived relation obtained by composing
   membershipOfTemporalOrdering and aggregationOfTemporalBoundingTemporalOrdering
   It directly links an Bounded Individual to the final aggregated TemporalBounding
   hiding the reifying TemporalOrdering
-}
temporalOrdering : Linkage BoundedIndividual TemporalBounding
temporalOrdering = membershipOfTemporalOrdering  ∘  aggregationOfTemporalBoundingTemporalOrdering


