{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Aggregate Block: 
An Aggregate Block is a Building Block which has an internal structure made of Aggregate Members which, through nesting (Membership of -Aggregate Member-), contextualizes/aggregates (Aggregation of -Building Block (Aggregate Member) - ) external Building Blocks within the Aggregate Block.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5c5ce68514283 where -- ==================== Aggregate Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity and Relation
open import SysFEAT.UpperOntology.23d5c494685141b5 public -- Block Lexical Scope
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
--open import SysFEAT.Samples.Sample-Container public


-- ============================================================
-- I. CONTEXTUAL NESTING (Two-Way Nesting)
-- ============================================================
-- A specialized HomType that extends standard nesting. It not only requires 
-- subordination, but enforces that the nested target has a deterministic 
-- backward projection (parent) to its scope. This guarantees dynamic locality.

HomUpwardNesting : ∀ {u v} (scope : Entity u) (target : Entity v) → Set (lsuc (u ⊔ v))
HomUpwardNesting {u}{v} scope target =
  Σ (Linkage {u}{v}{u ⊔ v} scope target) λ L_fwd →
    (∀ (s : scope) → Linkage.localType L_fwd s) ⊗  -- 1. Subordination (Nesting constraint)
    Σ (target → scope) λ parent →                  -- 2. Contextual backward projection
      (∀ {s : scope} (e : Linkage.localType L_fwd s) → parent (Linkage.ref L_fwd e) ≡ s) -- 3. Round-trip integrity

make_upwardNestingRelation : ∀ {u v} (label fwdRole : String) → Linkage (Entity u) (Entity v)
make_upwardNestingRelation = make_Linkage HomUpwardNesting

-- ============================================================
-- II. NODES DEFINITIONS
-- ============================================================
{- An Aggregate Block is a Building Block which has an internal structure made of Aggregate Members which, 
   through nesting (membershipOfAggregateMember), contextualizes/aggregates (aggregationOfBuildingBlock) 
   external Building Blocks within the Aggregate Block.
-}
AggregateBlock : (u : Level) → ClassOfMixedOrderEntity u
AggregateBlock u = MixedOrderEntity u

postulate -- AggregateBlock is subType of Building Block
  23d5c5d3685142ad  : ∀ {u v} →  (AggregateBlock u) ⊏⋆ₑ (BuildingBlock v)

{- An Aggregate Member is a Mixed-Order Entity that serves as an internal constituent of an Aggregate Block, incorporating (aggregating) an external Building Block into its parent structure.
Aggregation is the syntactic mechanism that enables the construction of modular, composite Building Blocks. It establishes a reified Relation (the nested  Aggregate Member) between the Aggregate Block and the aggregated Building Block, allowing the definition of local characteristic specific to the Aggregate Member. This mechanism facilitates the expression of emergent properties within the composite structure of  the Aggregate Block .
Examples:
. "Attributes" of a "UML class" are  Aggregate Members.
. Steps of a process are  Aggregate Members.
-}
AggregateMember : (u : Level) → ClassOfMixedOrderEntity u
AggregateMember u = MixedOrderEntity u

postulate -- AggregateMember is subType of MixedOrderEntity
  81d1871c681b4023  : ∀ {u v} →  (AggregateMember u) ⊏⋆ₑ (MixedOrderEntity v)

{- membershipOfAggregateMember : upward (bidirectional) nesting relation from an Aggregate Block
   to its Aggregate Member. The member is contextually aware of its parent aggregate.
-}
membershipOfAggregateMember : ∀ {u v} → Linkage (AggregateBlock u) (AggregateMember v)
membershipOfAggregateMember = make_upwardNestingRelation "Membership" "nested Member"

postulate -- membershipOfAggregateMember is subType of nestingRelation
  942bb089672b48c7 : ∀ {u v} → (membershipOfAggregateMember {u} {v}) ⊏⋆ᵣ (nestingRelation {u} {v})

-- Reference to the external Building Block
aggregationOfBuildingBlock : ∀ {u v} → Linkage (AggregateMember u) (BuildingBlock v)
aggregationOfBuildingBlock = make_Relation "Aggregation" "Aggregated Block"

postulate -- aggregationOfBuildingBlock is subType of existentialDependency
  34a567b768f7ff31 : ∀ {u v} → (aggregationOfBuildingBlock {u} {v}) ⊏⋆ᵣ (existentialDependency {u} {v})

{- aggregateMember : derived relation obtained by composing
   membershipOfAggregateMember and aggregationOfBuildingBlock.
   It directly links an Aggregate Block to the final aggregated Building Block,
   hiding the intermediate Aggregate Member.
   Agda inference mechanism properly chains levels (u -> v -> w)
-}
aggregateMember : ∀ {u v w} → Linkage (AggregateBlock u) (BuildingBlock w)
aggregateMember {u} {v} {w} = membershipOfAggregateMember {u} {v} ∘ aggregationOfBuildingBlock {v} {w}

postulate -- aggregateMember is subType of Relation
  23d5e92968515409 : ∀ {u w} → (aggregateMember {u} {u} {w}) ⊏⋆ᵣ (Relation {u} {w})

{- Local relation between members of an Aggregate
-}
memberRelation : ∀ {u v} → Linkage (AggregateMember u) (AggregateMember v)
memberRelation {u} {v} = make_Relation "Local Relation" "Related Member"

-- memberRelation is subType of Relation 
st-23d5e92968515409 : ∀ {u v} → (memberRelation {u} {v}) ⊏⋆ᵣ (Relation {u} {v})
st-23d5e92968515409 {u} {v} =
  ⊏⋆ᵣ-fromExtMap {subRel = (memberRelation {u} {v})} {superRel = (Relation {u} {v})} (λ w → w)

-- ============================================================
-- III. DYNAMIC LOCALITY (The "that" operator)
-- ============================================================

{- | that : operator that, given a witness of membership (Aggregate Block → Aggregate Member),
   constructs a backward Linkage from the Aggregate Member to its parent Aggregate Block.
   This uses the parent function provided by the HomUpwardNesting structure,
   thus enabling dynamic locality and upward navigation.
-}
that : ∀ {u v} {agg : AggregateBlock u} {mem : AggregateMember v}
     → (agg —⟨ membershipOfAggregateMember {u} {v} ⟩→ mem)
     → Linkage {v} {u} {lzero} mem agg
that {mem = mem} ⟨ ⟨ mem' , ⟨ L_fwd , ⟨ isNested , ⟨ parent , pf ⟩ ⟩ ⟩ ⟩ , eq ⟩ = record
  { label       = "Contextual Access (that)"
  ; forwardrole = "Contextual Aggregate Block"
  ; localType   = λ m → ⊤ {lzero}
  ; ref         = λ {m} tt → parent (subst (λ X → X) (sym eq) m)
  }
  

-- ============================================================
-- V. LATE BINDING OF LEXICAL SCOPE 
-- ============================================================

{- A Block Member is an Aggregate Member that aggregates its releated Building Block by reference (see Reference Relation).
   Block Members are used to build network structures of Building Blocks 
   while Hierarchical Members are used to build hierarchical structures of Building Blocks. 
-}
BlockMember : (u : Level) → ClassOfMixedOrderEntity u
BlockMember u = AggregateMember u

postulate -- BlocMember is subType of AggregateMember
  sb-fb660e2f6869a015 : ∀ {u v} → (BlockMember u) ⊏⋆ₑ (AggregateMember v)

membershipOfBlockMember : ∀ {u v} → Linkage (AggregateBlock u) (BlockMember v)
membershipOfBlockMember = membershipOfAggregateMember

-- blockMembership is subType of membershipOfAggregateMember 
215daf3e68b433ae : ∀ {u v} → (membershipOfBlockMember {u} {v}) ⊏⋆ᵣ (membershipOfAggregateMember {u} {v})
215daf3e68b433ae {u} {v} =
  ⊏⋆ᵣ-fromExtMap {subRel = (membershipOfBlockMember {u} {v})} {superRel = (membershipOfAggregateMember {u} {v})} (λ w → w)

blockMemberAggregation : ∀ {u v} → Linkage (AggregateMember u) (BuildingBlock v)
blockMemberAggregation = aggregationOfBuildingBlock

-- blockMemberAggregation is subType of aggregationOfBuildingBlock
fb6616a46869b1bc : ∀ {u v} → (blockMemberAggregation {u} {v}) ⊏⋆ᵣ (aggregationOfBuildingBlock {u} {v})
fb6616a46869b1bc {u} {v} =
  ⊏⋆ᵣ-fromExtMap {subRel = (blockMemberAggregation {u} {v})} {superRel = (aggregationOfBuildingBlock {u} {v})} (λ w → w)
blockMember : ∀ {u v w} → Linkage (AggregateBlock u) (BuildingBlock w)
blockMember {u} {v} {w} = membershipOfBlockMember {u} {v} ∘ blockMemberAggregation {v} {w}

-- blockMember is subType of aggregateMember 
blockMember-isSubTypeOf-aggregateMember : ∀ {u w} → (blockMember {u} {u} {w}) ⊏⋆ᵣ (aggregateMember {u} {u} {w})
blockMember-isSubTypeOf-aggregateMember {u} {w} =
  ⊏⋆ᵣ-fromExtMap {subRel = (blockMember {u} {u} {w})} {superRel = (aggregateMember {u} {u} {w})} (λ w → w)
{- A Hierarchical Member is an Aggregate Member that is also a Block Lexical Scope for the Building Block it aggregates: 
   it relates its aggregated block by nesting (see Nesting Relation).
   Hierarchical Members are used to build hierarchical structures of Building Blocks, in constrast to Block Members which are used to build network structures of Building Blocks.
-}  
HierarchicalMember : (u : Level) → ClassOfMixedOrderEntity u
HierarchicalMember u = AggregateMember u

postulate -- HierarchicalMember is subType of AggregateMember
  sb-fb660df868699fa2 : ∀ {u v} → (HierarchicalMember u) ⊏⋆ₑ (AggregateMember v)

postulate -- HierarchicalMember is subType of BlockLexicalScope
  29e3dd0b6979a3e3 : ∀ {u v} → (HierarchicalMember u) ⊏⋆ₑ (BlockLexicalScope v)

{- membershipOfHierarchicalMember : upward (bidirectional) nesting relation
  from an Aggregate Block to a Hierarchical Member.
  It represents membership in a strictly hierarchical (scoped) context.
-}
membershipOfHierarchicalMember : ∀ {u v} → Linkage (AggregateBlock u) (HierarchicalMember v)
membershipOfHierarchicalMember = membershipOfAggregateMember

-- hierarchicalMembership is subType of membershipOfAggregateMember  
215daf8368b433e7 : ∀ {u v} → (membershipOfHierarchicalMember {u} {v}) ⊏⋆ᵣ (membershipOfAggregateMember {u} {v})
215daf8368b433e7 {u} {v} =
  ⊏⋆ᵣ-fromExtMap {subRel = (membershipOfHierarchicalMember {u} {v})} {superRel = (membershipOfAggregateMember {u} {v})} (λ w → w)


{- hierarchicalMemberAggregation : nesting relation from an Aggregate Member
   to a Building Block. For hierarchical members, this denotes that the
   building block is nested (embedded) inside the hierarchical member,
   not just referenced.
-}
hierarchicalMemberAggregation : ∀ {u v} → Linkage (AggregateMember u) (BuildingBlock v)
hierarchicalMemberAggregation = nestingRelation

-- hierarchicalMembership is subType of membershipOfAggregateMember 
fb660df868699fa2 : ∀ {u v} → (hierarchicalMemberAggregation {u} {v}) ⊏⋆ᵣ (nestingRelation {u} {v})
fb660df868699fa2 {u} {v} =
  ⊏⋆ᵣ-fromExtMap {subRel = (hierarchicalMemberAggregation {u} {v})} {superRel = (nestingRelation {u} {v})} (λ w → w)
{- hierarchicalMember : derived relation from an Aggregate Block to a Building Block
   via a Hierarchical Member. It composes hierarchical membership with
   hierarchical member aggregation, yielding a hierarchical (tree‑like) structure.
-}
hierarchicalMember : ∀ {u v w} → Linkage (AggregateBlock u) (BuildingBlock w)
hierarchicalMember {u} {v} {w} = membershipOfHierarchicalMember {u} {v} ∘ hierarchicalMemberAggregation {v} {w}

postulate -- hierarchicalMember is subType of aggregateMember
  hierarchicalMember-isSubTypeOf-aggregateMember : ∀ {u w} → (hierarchicalMember {u} {u} {w}) ⊏⋆ᵣ (aggregateMember {u} {u} {w})
