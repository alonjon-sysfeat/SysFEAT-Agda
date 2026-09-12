{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Job-to-be-done: 
A Job-to-be-done is a set of Customer Tasks that contribute to the achievement of the Customer duty(ies).The granularity of Job-to-be-done is determined by Business Outcome Events experienced at Touch Points.The Job-to-be-done concept was forged by Clayton Christensen who provided the following definitions in an article written for the Harward Business Review (see references).1.  Job  is shorthand for what an individual really seeks to accomplish in a given circumstance.2.. The circumstances are more important than customer characteristics, product attributes, new technologies, or trends.3. Jobs are never simply about function-they have powerful social and emotional dimensions.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d17034875be85304 where -- ========== Job-to-be-done

open import Agda.Primitive
open import SysFEAT.EA.d170d24a5be72d09 public -- Customer Task

Jobtobedone : ClassOfClassOfBoundedIndividual
Jobtobedone = ClassOfBoundedIndividual

--  Jobtobedone is subTypeOf CustomerTask
st-d170ac245be88bc1 : Jobtobedone ⊏ₑ CustomerTask
st-d170ac245be88bc1 = polySubTypeOf-identity

-- == Relationships =======================

{- Included Job to be done: -}
-- Aggregate Member : Included Job to be done
IncludedJobtobedone : ClassOfClassOfIndividual
IncludedJobtobedone = ClassOfIndividual

-- Membership relation
membershipOfIncludedJobtobedone :  Linkage Jobtobedone IncludedJobtobedone
membershipOfIncludedJobtobedone = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCustomerTaskIncludedJobtobedone :  Linkage IncludedJobtobedone CustomerTask
aggregationOfCustomerTaskIncludedJobtobedone = aggregationOfBuildingBlock

{- includedJobtobedone : derived relation obtained by composing
   membershipOfIncludedJobtobedone and aggregationOfCustomerTaskIncludedJobtobedone
   It directly links an Job-to-be-done to the final aggregated CustomerTask
   hiding the reifying IncludedJobtobedone
-}
includedJobtobedone : Linkage Jobtobedone CustomerTask
includedJobtobedone = membershipOfIncludedJobtobedone  ∘  aggregationOfCustomerTaskIncludedJobtobedone
