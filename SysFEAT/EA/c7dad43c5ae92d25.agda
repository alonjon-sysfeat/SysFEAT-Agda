{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Person: 
A Person represents a human being that is recognized by law as the subject of rights and duties.

Documentation : https://framework.sysfeat.com/pages/c7dad43c5ae92d25.htm

External references:
  OMG - UAF - ActualPerson: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ActualPerson
  Merriam Webster - Person: https://www.merriam-webster.com/dictionary/person
  WordNet - Person: https://en-word.net/ili/i35562
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c7dad43c5ae92d25 where -- ========== Person

open import Agda.Primitive
open import SysFEAT.SOF.c7dad03f5ae92ae9 public -- Responsible Human Entity
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.41b8e49f65ee66ec public -- Person Type
open import SysFEAT.EA.dd26f17a68a0b08b public -- Skill

Person : AgentType
Person = IndividualAgent


--  Person is subTypeOf ResponsibleHumanEntity
st-c7dad43c5ae92d25-c7dad03f5ae92ae9 : Person ⊏ₑ ResponsibleHumanEntity
st-c7dad43c5ae92d25-c7dad03f5ae92ae9 = polySubTypeOf-identity

--  Person is subTypeOf IndividualBusinessAgent
st-c7dad43c5ae92d25-66f8685a620b1440 : Person ⊏ₑ IndividualBusinessAgent
st-c7dad43c5ae92d25-66f8685a620b1440 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Acquired Skill: 
An ability that has been acquired by training.
-}
-- Aggregate Member : Acquired Skill
AcquiredSkill : ClassOfClassOfIndividual
AcquiredSkill = ClassOfIndividual


-- Membership relation
membershipOfAcquiredSkill :  Linkage Person AcquiredSkill
membershipOfAcquiredSkill = make_upwardNestingRelation "acquiredSkill membership" "nested acquiredSkill"

-- Aggregation relation
aggregationOfSkillAcquiredSkill :  Linkage AcquiredSkill Skill
aggregationOfSkillAcquiredSkill = make_Relation "Skill aggregation" "aggregated Skill"

{- acquiredSkill : derived relation obtained by composing
   membershipOfAcquiredSkill and aggregationOfSkillAcquiredSkill
   It directly links an Person to the final aggregated Skill
   hiding the reifying AcquiredSkill
-}
acquiredSkill : Linkage Person Skill
acquiredSkill = membershipOfAcquiredSkill  ∘  aggregationOfSkillAcquiredSkill


