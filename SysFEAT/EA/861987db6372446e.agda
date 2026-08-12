{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Natural Resource Category: 
A Natural Resource Category is a kind Physical Business Agent that refers to any class of material or substance that occurs naturally in the environment and can be used by humans for various purposes. These resources are derived from the Earth and include a wide range of physical entities such as water, minerals, forests, fossil fuels, soil, and air. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.861987db6372446e where -- ========== Natural Resource Category

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.EA.340f52dc686212f5 public -- Physical Resource Agent

NaturalResourceCategory : ClassOfClassOfBoundedIndividual
NaturalResourceCategory = ClassOfBoundedIndividual

postulate --  NaturalResourceCategory is subTypeOf ResourceAgentType
  st-8619880b637244c4 : NaturalResourceCategory ⊏ₑ ResourceAgentType

postulate --  NaturalResourceCategory is subTypeOf PhysicalResourceAgent
  st-340f583b686217d6 : NaturalResourceCategory ⊏ₑ PhysicalResourceAgent

-- == Relationships =======================

{- Natural Resource Part: -}
-- Aggregate Member : Natural Resource Part
NaturalResourcePart : ClassOfClassOfIndividual
NaturalResourcePart = ClassOfIndividual

-- Membership relation
membershipOfNaturalResourcePart :  Linkage NaturalResourceCategory NaturalResourcePart
membershipOfNaturalResourcePart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNaturalResourceCategoryNaturalResourcePart :  Linkage NaturalResourcePart NaturalResourceCategory
aggregationOfNaturalResourceCategoryNaturalResourcePart = aggregationOfBuildingBlock

{- naturalResourcePart : derived relation obtained by composing
   membershipOfNaturalResourcePart and aggregationOfNaturalResourceCategoryNaturalResourcePart
   It directly links an Natural Resource Category to the final aggregated NaturalResourceCategory
   hiding the reifying NaturalResourcePart
-}
naturalResourcePart : Linkage NaturalResourceCategory NaturalResourceCategory
naturalResourcePart = membershipOfNaturalResourcePart  ∘  aggregationOfNaturalResourceCategoryNaturalResourcePart
