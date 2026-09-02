{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Org-Unit Type: 
An Org-Unit Type is a type of Human Resource that represent a unit of social groups within an organization, responsible for operating one or more enterprises Business Functions.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.076d15425a5e158c where -- ========== Org-Unit Type

open import Agda.Primitive
open import SysFEAT.EA.2c93337b67644a6a public -- Human Resource
open import SysFEAT.EA.c80afd2f6784305d public -- Intangible Resource Agent
open import SysFEAT.EA.dd26f17a68a0b08b public -- Skill
open import SysFEAT.EA.c189cf1f68ae421a public -- Business Rule
open import SysFEAT.EA.6f4b93a15fd3b6bf public -- Business Interaction Process

OrgUnitType : ClassOfClassOfBoundedIndividual
OrgUnitType = ClassOfBoundedIndividual

--  OrgUnitType is subTypeOf HumanResource
st-24034c805fc7992c : OrgUnitType ⊏ₑ HumanResource
st-24034c805fc7992c = polySubTypeOf-identity

--  OrgUnitType is subTypeOf IntangibleResourceAgent
st-c80a24c067856232 : OrgUnitType ⊏ₑ IntangibleResourceAgent
st-c80a24c067856232 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Org-Unit: -}
specializedOrgUnit :  Linkage OrgUnitType OrgUnitType
specializedOrgUnit = make_subTypeOf "Specialized Org-Unit" "specializedOrgUnit"

postulate -- specializedOrgUnit is subTypeOf specializedResourceAgent
  st-325a3c7666f35f12-52c3540066f226f4  : specializedOrgUnit   ⊏⋆ᵣ  specializedResourceAgent 

{- Fulfilled Skill: -}
fulfilledSkill :  Linkage OrgUnitType Skill
fulfilledSkill = make_subTypeOf "Fulfilled Skill" "fulfilledSkill"

postulate -- fulfilledSkill is subTypeOf fulfilledBusinessResourceCapability
  st-dd26a26568a1eb03-dd2681a968a1b9d1  : fulfilledSkill   ⊏⋆ᵣ  fulfilledBusinessResourceCapability 

{- Operational Rule Enforcement: 
The set Business Rules that are enforced by an Org-Unit Type.
-}
-- Aggregate Member : Operational Rule Enforcement
OperationalRuleEnforcement : ClassOfClassOfIndividual
OperationalRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfOperationalRuleEnforcement :  Linkage OrgUnitType OperationalRuleEnforcement
membershipOfOperationalRuleEnforcement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessRuleOperationalRuleEnforcement :  Linkage OperationalRuleEnforcement BusinessRule
aggregationOfBusinessRuleOperationalRuleEnforcement = aggregationOfBuildingBlock

{- operationalRuleEnforcement : derived relation obtained by composing
   membershipOfOperationalRuleEnforcement and aggregationOfBusinessRuleOperationalRuleEnforcement
   It directly links an Org-Unit Type to the final aggregated BusinessRule
   hiding the reifying OperationalRuleEnforcement
-}
operationalRuleEnforcement : Linkage OrgUnitType BusinessRule
operationalRuleEnforcement = membershipOfOperationalRuleEnforcement  ∘  aggregationOfBusinessRuleOperationalRuleEnforcement

{- Performed Business Interaction: -}
-- Aggregate Member : Performed Business Interaction
PerformedBusinessInteraction : ClassOfClassOfIndividual
PerformedBusinessInteraction = ClassOfIndividual

-- Membership relation
membershipOfPerformedBusinessInteraction :  Linkage OrgUnitType PerformedBusinessInteraction
membershipOfPerformedBusinessInteraction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessInteractionProcessPerformedBusinessInteraction :  Linkage PerformedBusinessInteraction BusinessInteractionProcess
aggregationOfBusinessInteractionProcessPerformedBusinessInteraction = aggregationOfBuildingBlock

{- performedBusinessInteraction : derived relation obtained by composing
   membershipOfPerformedBusinessInteraction and aggregationOfBusinessInteractionProcessPerformedBusinessInteraction
   It directly links an Org-Unit Type to the final aggregated BusinessInteractionProcess
   hiding the reifying PerformedBusinessInteraction
-}
performedBusinessInteraction : Linkage OrgUnitType BusinessInteractionProcess
performedBusinessInteraction = membershipOfPerformedBusinessInteraction  ∘  aggregationOfBusinessInteractionProcessPerformedBusinessInteraction
