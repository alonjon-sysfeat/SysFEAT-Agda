{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Person: 
A Person represents a human being that is recognized by law as the subject of rights and duties.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c7dad43c5ae92d25 where -- ========== Person

open import Agda.Primitive
open import SysFEAT.SOF.c7dad03f5ae92ae9 public -- Responsible Human Entity
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.41b8e49f65ee66ec public -- Person Type
open import SysFEAT.EA.dd26f17a68a0b08b public -- Skill

Person : ClassOfBoundedIndividual
Person = BoundedIndividual

postulate --  Person is subTypeOf ResponsibleHumanEntity
  st-c7dad3255ae92d0e : Person ⊏ₑ ResponsibleHumanEntity

postulate --  Person is subTypeOf IndividualBusinessAgent
  st-c80a3e7067858e98 : Person ⊏ₑ IndividualBusinessAgent

-- == Relationships =======================

{- Acquired Skill: 
An ability that has been acquired by training.
-}
-- Aggregate Member : Acquired Skill
AcquiredSkill : ClassOfClassOfIndividual
AcquiredSkill = ClassOfIndividual

-- Membership relation
membershipOfAcquiredSkill :  Linkage Person AcquiredSkill
membershipOfAcquiredSkill = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSkillAcquiredSkill :  Linkage AcquiredSkill Skill
aggregationOfSkillAcquiredSkill = aggregationOfBuildingBlock

{- acquiredSkill : derived relation obtained by composing
   membershipOfAcquiredSkill and aggregationOfSkillAcquiredSkill
   It directly links an Person to the final aggregated Skill
   hiding the reifying AcquiredSkill
-}
acquiredSkill : Linkage Person Skill
acquiredSkill = membershipOfAcquiredSkill  ∘  aggregationOfSkillAcquiredSkill
