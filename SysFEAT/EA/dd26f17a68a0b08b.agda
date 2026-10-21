{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Skill: 
A Skill is an ability of a human resource to produce Business Outcome Events.Skills are acquired and refined through training and practice.

Documentation : https://framework.sysfeat.com/pages/dd26f17a68a0b08b.htm

External references:
  OpenGroup - ArchiMate - Capability: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Strategy-Layer.html#sec-Capability
  Wordnet - Skill: https://en-word.net/ili/i66539
  OMG - UAF - Competence: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Competence
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26f17a68a0b08b where -- ========== Skill

open import Agda.Primitive
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability

Skill : AssetPropertyType
Skill = AssetProperty


--  Skill is subTypeOf BusinessResourceCapability
st-dd26f17a68a0b08b-dd26288968a05d00 : Skill ⊏ₑ BusinessResourceCapability
st-dd26f17a68a0b08b-dd26288968a05d00 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Skill: -}
specializedSkill :  Linkage Skill Skill
specializedSkill = make_subTypeOf "Specialized Skill" "Specialized Skill"

postulate -- specializedSkill is subTypeOf specializedBusinessResourceCapability
  st-dd27d78968a12593-dd2683b668a1bbb3  : specializedSkill  ⊏⋆ᵣ  specializedBusinessResourceCapability

-- -------------------------------------------------------------------------------------------- 
{- Skill Part: -}
-- Aggregate Member : Skill Part
SkillPart : ClassOfClassOfAbstractEntity
SkillPart = ClassOfAbstractEntity



--  SkillPart is subTypeOf BusinessResourceCapabilityPart
st-dd26f40f68a0b32f-dd27af0168a10530 : SkillPart ⊏⋆ₑ BusinessResourceCapabilityPart
st-dd26f40f68a0b32f-dd27af0168a10530 = polySubTypeOf-identity

-- Membership relation
membershipOfSkillPart :  Linkage Skill SkillPart
membershipOfSkillPart = make_upwardNestingRelation "skillPart membership" "nested skillPart"

-- Aggregation relation
aggregationOfSkillSkillPart :  Linkage SkillPart Skill
aggregationOfSkillSkillPart = make_Relation "Skill aggregation" "aggregated Skill"

{- skillPart : derived relation obtained by composing
   membershipOfSkillPart and aggregationOfSkillSkillPart
   It directly links an Skill to the final aggregated Skill
   hiding the reifying SkillPart
-}
skillPart : Linkage Skill Skill
skillPart = membershipOfSkillPart  ∘  aggregationOfSkillSkillPart


