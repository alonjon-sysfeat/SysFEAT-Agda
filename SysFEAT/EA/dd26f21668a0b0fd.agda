{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Skill Map: 
Family of Skills associated to an activity domain or to an Enterprise.

Documentation : https://framework.sysfeat.com/pages/dd26f21668a0b0fd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26f21668a0b0fd where -- ========== Skill Map

open import Agda.Primitive
open import SysFEAT..dd2638ba68a073a8 public -- Business Resource Capability Map
open import SysFEAT.EA.dd26f17a68a0b08b public -- Skill

SkillMap : PropertyType
SkillMap = ClassOfProperty

--  SkillMap is subTypeOf BusinessResourceCapabilityMap
st-dd26f21668a0b0fd-dd2638ba68a073a8 : SkillMap ⊏ₑ BusinessResourceCapabilityMap
st-dd26f21668a0b0fd-dd2638ba68a073a8 = polySubTypeOf-identity

-- == Relationships =======================

{- Skill Member: -}
-- Aggregate Member : Skill Member
SkillMember : ClassOfClassOfIndividual
SkillMember = ClassOfIndividual

-- Membership relation
membershipOfSkillMember :  Linkage SkillMap SkillMember
membershipOfSkillMember = make_upwardNestingRelation "skillMember membership" "nested skillMember"

-- Aggregation relation
aggregationOfSkillSkillMember :  Linkage SkillMember Skill
aggregationOfSkillSkillMember = make_Relation "Skill aggregation" "aggregated Skill"

{- skillMember : derived relation obtained by composing
   membershipOfSkillMember and aggregationOfSkillSkillMember
   It directly links an Skill Map to the final aggregated Skill
   hiding the reifying SkillMember
-}
skillMember : Linkage SkillMap Skill
skillMember = membershipOfSkillMember  ∘  aggregationOfSkillSkillMember

postulate -- skillMember is subTypeOf businessResourceCapabilityMember
  st-dd26f2ca68a0b1a0-dd26a8b568a1f5be  : skillMember   ⊏⋆ᵣ  businessResourceCapabilityMember 

