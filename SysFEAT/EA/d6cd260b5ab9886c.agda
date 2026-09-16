{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Environment: 
An Application System Environment is an operating context in which an Application System defines its interactions with its partners (Partner System) in the form of API connections (Software Connection).It also represents End Users that interact with the system.

Documentation : https://framework.sysfeat.com/pages/d6cd260b5ab9886c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d6cd260b5ab9886c where -- ========== Application System Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System

ApplicationSystemEnvironment : ClassOfClassOfBoundedIndividual
ApplicationSystemEnvironment = ClassOfBoundedIndividual

--  ApplicationSystemEnvironment is subTypeOf SOftwareSystemEnvironment
st-d6cd260b5ab9886c-25c0a25061e2fd5a : ApplicationSystemEnvironment ⊏ₑ SOftwareSystemEnvironment
st-d6cd260b5ab9886c-25c0a25061e2fd5a = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized System Environment: -}
specializedSystemEnvironment :  Linkage ApplicationSystemEnvironment ApplicationSystemEnvironment
specializedSystemEnvironment = make_subTypeOf "Specialized System Environment" "Specialized System Environment"


{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfIndividual
SubjectSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSystem :  Linkage ApplicationSystemEnvironment SubjectSystem
membershipOfSubjectSystem = make_upwardNestingRelation "subjectSystem membership" "nested subjectSystem"

-- Aggregation relation
aggregationOfApplicationSystemSubjectSystem :  Linkage SubjectSystem ApplicationSystem
aggregationOfApplicationSystemSubjectSystem = make_Relation "ApplicationSystem aggregation" "aggregated ApplicationSystem"

{- subjectSystem : derived relation obtained by composing
   membershipOfSubjectSystem and aggregationOfApplicationSystemSubjectSystem
   It directly links an Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying SubjectSystem
-}
subjectSystem : Linkage ApplicationSystemEnvironment ApplicationSystem
subjectSystem = membershipOfSubjectSystem  ∘  aggregationOfApplicationSystemSubjectSystem

postulate -- subjectSystem is subTypeOf participantSOftware
  st-173f4a805eb8c14e-25c1a63d61e206d7  : subjectSystem   ⊏⋆ᵣ  participantSOftware 
postulate -- subjectSystem is subTypeOf subjectSOftwareSystem
  st-173f4a805eb8c14e-25c1a65861e2077a  : subjectSystem   ⊏⋆ᵣ  subjectSOftwareSystem 


{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfIndividual
PartnerSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSystem :  Linkage ApplicationSystemEnvironment PartnerSystem
membershipOfPartnerSystem = make_upwardNestingRelation "partnerSystem membership" "nested partnerSystem"

-- Aggregation relation
aggregationOfApplicationSystemPartnerSystem :  Linkage PartnerSystem ApplicationSystem
aggregationOfApplicationSystemPartnerSystem = make_Relation "ApplicationSystem aggregation" "aggregated ApplicationSystem"

{- partnerSystem : derived relation obtained by composing
   membershipOfPartnerSystem and aggregationOfApplicationSystemPartnerSystem
   It directly links an Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying PartnerSystem
-}
partnerSystem : Linkage ApplicationSystemEnvironment ApplicationSystem
partnerSystem = membershipOfPartnerSystem  ∘  aggregationOfApplicationSystemPartnerSystem

postulate -- partnerSystem is subTypeOf participantSOftware
  st-173f4ad15eb8c1f5-25c1a63d61e206d7  : partnerSystem   ⊏⋆ᵣ  participantSOftware 
postulate -- partnerSystem is subTypeOf partnerSOftwareSystem
  st-173f4ad15eb8c1f5-25c1a6bc61e20826  : partnerSystem   ⊏⋆ᵣ  partnerSOftwareSystem 

