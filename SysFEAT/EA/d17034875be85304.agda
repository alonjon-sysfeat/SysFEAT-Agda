{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Job-to-be-done: 
A Job-to-be-done is a set of Customer Tasks that contribute to the achievement of the Customer duty(ies).The granularity of Job-to-be-done is determined by Business Outcome Events experienced at Touch Points.The Job-to-be-done concept was forged by Clayton Christensen who provided the following definitions in an article written for the Harward Business Review (see references).1.  Job  is shorthand for what an individual really seeks to accomplish in a given circumstance.2.. The circumstances are more important than customer characteristics, product attributes, new technologies, or trends.3. Jobs are never simply about function-they have powerful social and emotional dimensions.

Documentation : https://framework.sysfeat.com/pages/d17034875be85304.htm

External references:
  Christensen Institute - The theory of jobs-to-be-done: https://www.christenseninstitute.org/theory/jobs-to-be-done/
  HBR - Know your customers- jobs-to-be-done: https://hbr.org/2016/09/know-your-customers-jobs-to-be-done
  Tony Ulwick - What is jobs-to-be-done & outcome: https://jobs-to-be-done.com/what-is-jobs-to-be-done-fea59c8e39eb
  Wikipedia - Clayton Christensen: https://en.wikipedia.org/wiki/Clayton_Christensen
  OpenGroup - OAA - Job-to-be-done: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_job_to_be_done
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d17034875be85304 where -- ========== Job-to-be-done

open import Agda.Primitive
open import SysFEAT.EA.d170d24a5be72d09 public -- Customer Task

Jobtobedone : ClassOfClassOfBoundedIndividual
Jobtobedone = ClassOfBoundedIndividual

--  Jobtobedone is subTypeOf CustomerTask
st-d17034875be85304-d170d24a5be72d09 : Jobtobedone ⊏ₑ CustomerTask
st-d17034875be85304-d170d24a5be72d09 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Included Job to be done: -}
-- Aggregate Member : Included Job to be done
IncludedJobtobedone : ClassOfClassOfIndividual
IncludedJobtobedone = ClassOfIndividual


--  IncludedJobtobedone is subTypeOf CustomerTask
st-07e73d5e5eccef4a-d170d24a5be72d09 : IncludedJobtobedone ⊏ₑ CustomerTask
st-07e73d5e5eccef4a-d170d24a5be72d09 = polySubTypeOf-identity

-- Membership relation
membershipOfIncludedJobtobedone :  Linkage Jobtobedone IncludedJobtobedone
membershipOfIncludedJobtobedone = make_upwardNestingRelation "includedJobtobedone membership" "nested includedJobtobedone"

-- Aggregation relation
aggregationOfCustomerTaskIncludedJobtobedone :  Linkage IncludedJobtobedone CustomerTask
aggregationOfCustomerTaskIncludedJobtobedone = make_Relation "CustomerTask aggregation" "aggregated CustomerTask"

{- includedJobtobedone : derived relation obtained by composing
   membershipOfIncludedJobtobedone and aggregationOfCustomerTaskIncludedJobtobedone
   It directly links an Job-to-be-done to the final aggregated CustomerTask
   hiding the reifying IncludedJobtobedone
-}
includedJobtobedone : Linkage Jobtobedone CustomerTask
includedJobtobedone = membershipOfIncludedJobtobedone  ∘  aggregationOfCustomerTaskIncludedJobtobedone


