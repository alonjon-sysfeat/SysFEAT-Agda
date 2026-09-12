{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Skill: 
A Skill is an ability of a human resource to produce Business Outcome Events.Skills are acquired and refined through training and practice.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26f17a68a0b08b where -- ========== Skill

open import Agda.Primitive
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability

Skill : PropertyType
Skill = ClassOfProperty

--  Skill is subTypeOf BusinessResourceCapability
st-215c6677606d4f5b : Skill ⊏ₑ BusinessResourceCapability
st-215c6677606d4f5b = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Skill: -}
specializedSkill :  Linkage Skill Skill
specializedSkill = make_subTypeOf "Specialized Skill" "specializedSkill"

postulate -- specializedSkill is subTypeOf specializedBusinessResourceCapability
  st-dd27d78968a12593-dd2683b668a1bbb3  : specializedSkill   ⊏⋆ᵣ  specializedBusinessResourceCapability 

{- Skill Part: -}
-- Aggregate Member : Skill Part
SkillPart : ClassOfClassOfIndividual
SkillPart = ClassOfIndividual

-- Membership relation
membershipOfSkillPart :  Linkage Skill SkillPart
membershipOfSkillPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSkillSkillPart :  Linkage SkillPart Skill
aggregationOfSkillSkillPart = aggregationOfBuildingBlock

{- skillPart : derived relation obtained by composing
   membershipOfSkillPart and aggregationOfSkillSkillPart
   It directly links an Skill to the final aggregated Skill
   hiding the reifying SkillPart
-}
skillPart : Linkage Skill Skill
skillPart = membershipOfSkillPart  ∘  aggregationOfSkillSkillPart
