{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Environment Scenario: 
An Application Environment Scenario is a story involving the partners of an Application (Partner Application) interacting in order to achieve Information Outcome Events in a specific Eco-System (Application Environment).This includes:- A course of events represented by Application Flows depicting the story towards the delivery of expected Information Outcome Events.- Interacting Partner Applications who participate to the story in the considered Application Environment.

Documentation : https://framework.sysfeat.com/pages/7a0a96b05ddfb9f5.htm

External references:
  C4 Model - Supplementary diagrams -Dynamic Diagram: https://c4model.com/#DynamicDiagram
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a0a96b05ddfb9f5 where -- ========== Application Environment Scenario

open import Agda.Primitive
open import SysFEAT.EA.25c0a10061e2fc12 public -- Software System Environment Scenario
open import SysFEAT.EA.c450d47c61de5dbc public -- Application Environment
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ApplicationEnvironmentScenario : ClassOfClassOfBoundedIndividual
ApplicationEnvironmentScenario = ClassOfBoundedIndividual

--  ApplicationEnvironmentScenario is subTypeOf SOftwareSystemEnvironmentScenario
st-7a0a96b05ddfb9f5-25c0a10061e2fc12 : ApplicationEnvironmentScenario ⊏ₑ SOftwareSystemEnvironmentScenario
st-7a0a96b05ddfb9f5-25c0a10061e2fc12 = polySubTypeOf-identity

-- == Relationships =======================

{- Scenarized Application Environment: -}
scenarizedApplicationEnvironment :  Linkage ApplicationEnvironmentScenario ApplicationEnvironment
scenarizedApplicationEnvironment = make_classOfHolonymy "Scenarized Application Environment" "Scenarized Application Environment"

postulate -- scenarizedApplicationEnvironment is subTypeOf scenarizedSOftwareSystemEnvironment
  st-48d4f0f163b6a249-25c1a3fc61e201e4  : scenarizedApplicationEnvironment   ⊏⋆ᵣ  scenarizedSOftwareSystemEnvironment 

{- Partner Application: 
An application partner in an application environment represents the appearance of an application in the environment of another application.
-}
-- Aggregate Member : Partner Application
PartnerApplication : ClassOfClassOfIndividual
PartnerApplication = ClassOfIndividual

-- Membership relation
membershipOfPartnerApplication :  Linkage ApplicationEnvironmentScenario PartnerApplication
membershipOfPartnerApplication = make_upwardNestingRelation "partnerApplication membership" "nested partnerApplication"

-- Aggregation relation
aggregationOfApplicationPartnerApplication :  Linkage PartnerApplication Application
aggregationOfApplicationPartnerApplication = make_Relation "Application aggregation" "aggregated Application"

{- partnerApplication : derived relation obtained by composing
   membershipOfPartnerApplication and aggregationOfApplicationPartnerApplication
   It directly links an Application Environment Scenario to the final aggregated Application
   hiding the reifying PartnerApplication
-}
partnerApplication : Linkage ApplicationEnvironmentScenario Application
partnerApplication = membershipOfPartnerApplication  ∘  aggregationOfApplicationPartnerApplication

postulate -- partnerApplication is subTypeOf partnerSOftwareSystem
  st-c334dc6b5ecb6eec-25c1a53f61e20355  : partnerApplication   ⊏⋆ᵣ  partnerSOftwareSystem 
postulate -- partnerApplication is subTypeOf participantSOftware
  st-c334dc6b5ecb6eec-25c1a32461e200b5  : partnerApplication   ⊏⋆ᵣ  participantSOftware 


{- Subject Application: 
An application flow environment subject represents the application whose environment is illustrated by the application flow environment.
-}
-- Aggregate Member : Subject Application
SubjectApplication : ClassOfClassOfIndividual
SubjectApplication = ClassOfIndividual

-- Membership relation
membershipOfSubjectApplication :  Linkage ApplicationEnvironmentScenario SubjectApplication
membershipOfSubjectApplication = make_upwardNestingRelation "subjectApplication membership" "nested subjectApplication"

-- Aggregation relation
aggregationOfApplicationSubjectApplication :  Linkage SubjectApplication Application
aggregationOfApplicationSubjectApplication = make_Relation "Application aggregation" "aggregated Application"

{- subjectApplication : derived relation obtained by composing
   membershipOfSubjectApplication and aggregationOfApplicationSubjectApplication
   It directly links an Application Environment Scenario to the final aggregated Application
   hiding the reifying SubjectApplication
-}
subjectApplication : Linkage ApplicationEnvironmentScenario Application
subjectApplication = membershipOfSubjectApplication  ∘  aggregationOfApplicationSubjectApplication

postulate -- subjectApplication is subTypeOf subjectSOftwareSystem
  st-c334dc6e5ecb6f61-25c1a55461e20430  : subjectApplication   ⊏⋆ᵣ  subjectSOftwareSystem 
postulate -- subjectApplication is subTypeOf participantSOftware
  st-c334dc6e5ecb6f61-25c1a32461e200b5  : subjectApplication   ⊏⋆ᵣ  participantSOftware 

