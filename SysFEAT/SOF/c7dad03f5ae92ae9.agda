{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Responsible Human Entity: 
A Responsible Human Entity is a Person or an organisation (group of people) capable of purposeful action, decision-making, and problem-solving within a system or organization. As Resource Agents, Responsible Human Entityies possess autonomy, adaptability, and the ability to influence outcomes, distinguishing them from unpurposeful entities like Business Systems (software and hardware) or Natural Resource Categorys.They can be held responsible for their actions, hence are Responsible Human Entityies.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c7dad03f5ae92ae9 where -- ========== Responsible Human Entity

open import Agda.Primitive
open import SysFEAT.SOF.9e3837e46192fcad public -- Individual Agent

ResponsibleHumanEntity : ClassOfBoundedIndividual
ResponsibleHumanEntity = BoundedIndividual

postulate --  ResponsibleHumanEntity is subTypeOf IndividualAgent
  st-c334e7755ecba04a : ResponsibleHumanEntity ⊏ₑ IndividualAgent

-- == Relationships =======================
