{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Compliance System: 
A Compliance System is an Assurance System aimed at ensuring enterprise compliance and risk mitigation against both Regulatory Frameworks an Control Frameworks. It encompasses processes, policies, and technologies that work in concert to validate the enterprise adherence to regulatory requirements while simultaneously bolstering the enterprises ability to withstand and adapt to various challenges and disruptions.

Documentation : https://framework.sysfeat.com/pages/f160019e67d83391.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f160019e67d83391 where -- ========== Compliance System

open import Agda.Primitive
open import SysFEAT.EA.07ca18d25dd85477 public -- Assurance System
open import SysFEAT.EA.4b94737d68a48a33 public -- Regulatory Framework
open import SysFEAT.EA.f16000cd67d83209 public -- Compliance Case
open import SysFEAT.EA.190c57d568976e60 public -- Regulation Article

ComplianceSystem : ClassOfBoundedIndividual
ComplianceSystem = BoundedIndividual


--  ComplianceSystem is subTypeOf AssuranceSystem
st-f160019e67d83391-07ca18d25dd85477 : ComplianceSystem ⊏ₑ AssuranceSystem
st-f160019e67d83391-07ca18d25dd85477 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Controlled Regulatory Framework: -}
controlledRegulatoryFramework : ∀ {u} →  Linkage ComplianceSystem (RegulatoryFramework u)
controlledRegulatoryFramework = make_Relation "Controlled Regulatory Framework" "Controlled Regulatory Framework"

postulate -- controlledRegulatoryFramework is subTypeOf enforcedPolicyFramework
  st-4b9473e068a48c1c-4b945cc368a47e39  : controlledRegulatoryFramework  ⊏⋆ᵣ  enforcedPolicyFramework

-- -------------------------------------------------------------------------------------------- 
{- Owned Compliance Case: -}
ownedComplianceCase :  Linkage ComplianceSystem ComplianceCase
ownedComplianceCase = make_Relation "Owned Compliance Case" "Owned Compliance Case"

postulate -- ownedComplianceCase is subTypeOf ownedAssuranceCase
  st-f160024967d8349a-0b950f8868e54f9f  : ownedComplianceCase  ⊏⋆ᵣ  ownedAssuranceCase

-- -------------------------------------------------------------------------------------------- 
{- Regulation in Scope: -}
-- Aggregate Member : Regulation in Scope
RegulationinScope : ClassOfClassOfIndividual
RegulationinScope = ClassOfIndividual


-- Membership relation
membershipOfRegulationinScope :  Linkage ComplianceSystem RegulationinScope
membershipOfRegulationinScope = make_upwardNestingRelation "regulationinScope membership" "nested regulationinScope"

-- Aggregation relation
aggregationOfRegulationArticleRegulationinScope :  Linkage RegulationinScope RegulationArticle
aggregationOfRegulationArticleRegulationinScope = make_Relation "RegulationArticle aggregation" "aggregated RegulationArticle"

{- regulationinScope : derived relation obtained by composing
   membershipOfRegulationinScope and aggregationOfRegulationArticleRegulationinScope
   It directly links an Compliance System to the final aggregated RegulationArticle
   hiding the reifying RegulationinScope
-}
regulationinScope : Linkage ComplianceSystem RegulationArticle
regulationinScope = membershipOfRegulationinScope  ∘  aggregationOfRegulationArticleRegulationinScope


