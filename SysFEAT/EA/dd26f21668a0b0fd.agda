{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Skill Map: 
Family of Skills associated to an activity domain or to an Enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26f21668a0b0fd where -- ========== Skill Map

open import Agda.Primitive
open import SysFEAT..dd2638ba68a073a8 public -- Business Resource Capability Map
open import SysFEAT.EA.dd26f17a68a0b08b public -- Skill

SkillMap : PropertyType
SkillMap = ClassOfProperty

--  SkillMap is subTypeOf BusinessResourceCapabilityMap
st-d98b27bf632368c6 : SkillMap ⊏ₑ BusinessResourceCapabilityMap
st-d98b27bf632368c6 = polySubTypeOf-identity

-- == Relationships =======================

{- Skill Member: -}
-- Aggregate Member : Skill Member
SkillMember : ClassOfClassOfIndividual
SkillMember = ClassOfIndividual

-- Membership relation
membershipOfSkillMember :  Linkage SkillMap SkillMember
membershipOfSkillMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSkillSkillMember :  Linkage SkillMember Skill
aggregationOfSkillSkillMember = aggregationOfBuildingBlock

{- skillMember : derived relation obtained by composing
   membershipOfSkillMember and aggregationOfSkillSkillMember
   It directly links an Skill Map to the final aggregated Skill
   hiding the reifying SkillMember
-}
skillMember : Linkage SkillMap Skill
skillMember = membershipOfSkillMember  ∘  aggregationOfSkillSkillMember
