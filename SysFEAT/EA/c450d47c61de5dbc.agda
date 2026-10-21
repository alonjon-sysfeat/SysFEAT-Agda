{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Environment: 
An Application Environment is an operating context in which an Application defines its interactions with its partners (Partner Application) in the form of  API connections (Software Connection).

Documentation : https://framework.sysfeat.com/pages/c450d47c61de5dbc.htm

External references:
  C4 Model - Level 1 - System Context Diagram: https://c4model.com/#SystemContextDiagram
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c450d47c61de5dbc where -- ========== Application Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ApplicationEnvironment : ClassOfClassOfBoundedIndividual
ApplicationEnvironment = ClassOfBoundedIndividual


--  ApplicationEnvironment is subTypeOf SOftwareSystemEnvironment
st-c450d47c61de5dbc-25c0a25061e2fd5a : ApplicationEnvironment ⊏ₑ SOftwareSystemEnvironment
st-c450d47c61de5dbc-25c0a25061e2fd5a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Subject Application: -}
-- Aggregate Member : Subject Application
SubjectApplication : ClassOfClassOfBoundedIndividual
SubjectApplication = ClassOfBoundedIndividual



--  SubjectApplication is subTypeOf PerformedSOftwareSystemScenario
st-c450d88061de6afe-25c1b2d361e22368 : SubjectApplication ⊏ₑ PerformedSOftwareSystemScenario
st-c450d88061de6afe-25c1b2d361e22368 = polySubTypeOf-identity

--  SubjectApplication is subTypeOf SubjectSOftwareSystem
st-c450d88061de6afe-25c1a65861e2077a : SubjectApplication ⊏ₑ SubjectSOftwareSystem
st-c450d88061de6afe-25c1a65861e2077a = polySubTypeOf-identity

--  SubjectApplication is subTypeOf ParticipantSOftware
st-c450d88061de6afe-25c1a63d61e206d7 : SubjectApplication ⊏ₑ ParticipantSOftware
st-c450d88061de6afe-25c1a63d61e206d7 = polySubTypeOf-identity

--  SubjectApplication is subTypeOf Application
st-c450d88061de6afe-bcebd8e9549144db : SubjectApplication ⊏ₑ Application
st-c450d88061de6afe-bcebd8e9549144db = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectApplication :  Linkage ApplicationEnvironment SubjectApplication
membershipOfSubjectApplication = make_upwardNestingRelation "subjectApplication membership" "nested subjectApplication"

-- Aggregation relation
aggregationOfApplicationSubjectApplication :  Linkage SubjectApplication Application
aggregationOfApplicationSubjectApplication = make_Relation "Application aggregation" "aggregated Application"

{- subjectApplication : derived relation obtained by composing
   membershipOfSubjectApplication and aggregationOfApplicationSubjectApplication
   It directly links an Application Environment to the final aggregated Application
   hiding the reifying SubjectApplication
-}
subjectApplication : Linkage ApplicationEnvironment Application
subjectApplication = membershipOfSubjectApplication  ∘  aggregationOfApplicationSubjectApplication



-- -------------------------------------------------------------------------------------------- 
{- Partner Application: -}
-- Aggregate Member : Partner Application
PartnerApplication : ClassOfClassOfBoundedIndividual
PartnerApplication = ClassOfBoundedIndividual



--  PartnerApplication is subTypeOf PartnerSOftwareSystem
st-c450d8c761de6c03-25c1a6bc61e20826 : PartnerApplication ⊏ₑ PartnerSOftwareSystem
st-c450d8c761de6c03-25c1a6bc61e20826 = polySubTypeOf-identity

--  PartnerApplication is subTypeOf ParticipantSOftware
st-c450d8c761de6c03-25c1a63d61e206d7 : PartnerApplication ⊏ₑ ParticipantSOftware
st-c450d8c761de6c03-25c1a63d61e206d7 = polySubTypeOf-identity

--  PartnerApplication is subTypeOf Application
st-c450d8c761de6c03-bcebd8e9549144db : PartnerApplication ⊏ₑ Application
st-c450d8c761de6c03-bcebd8e9549144db = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerApplication :  Linkage ApplicationEnvironment PartnerApplication
membershipOfPartnerApplication = make_upwardNestingRelation "partnerApplication membership" "nested partnerApplication"

-- Aggregation relation
aggregationOfApplicationPartnerApplication :  Linkage PartnerApplication Application
aggregationOfApplicationPartnerApplication = make_Relation "Application aggregation" "aggregated Application"

{- partnerApplication : derived relation obtained by composing
   membershipOfPartnerApplication and aggregationOfApplicationPartnerApplication
   It directly links an Application Environment to the final aggregated Application
   hiding the reifying PartnerApplication
-}
partnerApplication : Linkage ApplicationEnvironment Application
partnerApplication = membershipOfPartnerApplication  ∘  aggregationOfApplicationPartnerApplication


