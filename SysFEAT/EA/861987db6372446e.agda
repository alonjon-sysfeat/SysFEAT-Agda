{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Natural Resource Category: 
A Natural Resource Category is a kind Physical Business Agent that refers to any class of material or substance that occurs naturally in the environment and can be used by humans for various purposes. These resources are derived from the Earth and include a wide range of physical entities such as water, minerals, forests, fossil fuels, soil, and air. 

Documentation : https://framework.sysfeat.com/pages/861987db6372446e.htm

External references:
  OMG - UAF - NaturalResource: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#NaturalResource
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.861987db6372446e where -- ========== Natural Resource Category

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.EA.340f52dc686212f5 public -- Physical Resource Agent

NaturalResourceCategory : ClassOfClassOfBoundedIndividual
NaturalResourceCategory = ClassOfBoundedIndividual


--  NaturalResourceCategory is subTypeOf ResourceAgentType
st-861987db6372446e-e2ef091962147ad7 : NaturalResourceCategory ⊏ₑ ResourceAgentType
st-861987db6372446e-e2ef091962147ad7 = polySubTypeOf-identity

--  NaturalResourceCategory is subTypeOf PhysicalResourceAgent
st-861987db6372446e-340f52dc686212f5 : NaturalResourceCategory ⊏ₑ PhysicalResourceAgent
st-861987db6372446e-340f52dc686212f5 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Natural Resource Part: -}
-- Aggregate Member : Natural Resource Part
NaturalResourcePart : ClassOfClassOfBoundedIndividual
NaturalResourcePart = ClassOfBoundedIndividual



--  NaturalResourcePart is subTypeOf ResourceAgentPart
st-c80a19ab678545f8-e2ef09de62147eb7 : NaturalResourcePart ⊏ₑ ResourceAgentPart
st-c80a19ab678545f8-e2ef09de62147eb7 = polySubTypeOf-identity

--  NaturalResourcePart is subTypeOf NaturalResourceCategory
st-c80a19ab678545f8-861987db6372446e : NaturalResourcePart ⊏ₑ NaturalResourceCategory
st-c80a19ab678545f8-861987db6372446e = polySubTypeOf-identity

-- Membership relation
membershipOfNaturalResourcePart :  Linkage NaturalResourceCategory NaturalResourcePart
membershipOfNaturalResourcePart = make_upwardNestingRelation "naturalResourcePart membership" "nested naturalResourcePart"

-- Aggregation relation
aggregationOfNaturalResourceCategoryNaturalResourcePart :  Linkage NaturalResourcePart NaturalResourceCategory
aggregationOfNaturalResourceCategoryNaturalResourcePart = make_Relation "NaturalResourceCategory aggregation" "aggregated NaturalResourceCategory"

{- naturalResourcePart : derived relation obtained by composing
   membershipOfNaturalResourcePart and aggregationOfNaturalResourceCategoryNaturalResourcePart
   It directly links an Natural Resource Category to the final aggregated NaturalResourceCategory
   hiding the reifying NaturalResourcePart
-}
naturalResourcePart : Linkage NaturalResourceCategory NaturalResourceCategory
naturalResourcePart = membershipOfNaturalResourcePart  ∘  aggregationOfNaturalResourceCategoryNaturalResourcePart


