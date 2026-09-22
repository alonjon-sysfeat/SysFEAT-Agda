{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Org-Unit Type: 
An Org-Unit Type is a type of Human Resource that represent a unit of social groups within an organization, responsible for operating one or more enterprises Business Functions.

Documentation : https://framework.sysfeat.com/pages/076d15425a5e158c.htm

External references:
  Humanresourcesedu.org - Human Resource: https://www.humanresourcesedu.org/what-is-human-resources/
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
  OpenGroup - ArchiMate - Business Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-business-Active-Structure-Elements
  Christensen Institute - Modularity: https://www.christenseninstitute.org/theory/modularity
  Russell Ackoff - System of Concepts - Organizations: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#Organizations
  OMG - UAF - OrganizationalResource: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#organizationalresource
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
st-076d15425a5e158c-2c93337b67644a6a : OrgUnitType ⊏ₑ HumanResource
st-076d15425a5e158c-2c93337b67644a6a = polySubTypeOf-identity

--  OrgUnitType is subTypeOf IntangibleResourceAgent
st-076d15425a5e158c-c80afd2f6784305d : OrgUnitType ⊏ₑ IntangibleResourceAgent
st-076d15425a5e158c-c80afd2f6784305d = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Org-Unit: -}
specializedOrgUnit :  Linkage OrgUnitType OrgUnitType
specializedOrgUnit = make_subTypeOf "Specialized Org-Unit" "Specialized Org-Unit"

postulate -- specializedOrgUnit is subTypeOf specializedResourceAgent
  st-325a3c7666f35f12-52c3540066f226f4  : specializedOrgUnit  ⊏⋆ᵣ  specializedResourceAgent

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Skill: -}
fulfilledSkill :  Linkage OrgUnitType Skill
fulfilledSkill = make_subTypeOf "Fulfilled Skill" "Fulfilled Skill"

postulate -- fulfilledSkill is subTypeOf fulfilledBusinessResourceCapability
  st-dd26a26568a1eb03-dd2681a968a1b9d1  : fulfilledSkill  ⊏⋆ᵣ  fulfilledBusinessResourceCapability

-- -------------------------------------------------------------------------------------------- 
{- Operational Rule Enforcement: 
The set Business Rules that are enforced by an Org-Unit Type.
-}
-- Aggregate Member : Operational Rule Enforcement
OperationalRuleEnforcement : ClassOfClassOfAbstractEntity
OperationalRuleEnforcement = ClassOfAbstractEntity



--  OperationalRuleEnforcement is subTypeOf BusinessRuleEnforcement
st-b777c62468b08327-23bf9ad368ad2e64 : OperationalRuleEnforcement ⊏ₑ BusinessRuleEnforcement
st-b777c62468b08327-23bf9ad368ad2e64 = polySubTypeOf-identity

-- Membership relation
membershipOfOperationalRuleEnforcement :  Linkage OrgUnitType OperationalRuleEnforcement
membershipOfOperationalRuleEnforcement = make_upwardNestingRelation "operationalRuleEnforcement membership" "nested operationalRuleEnforcement"

-- Aggregation relation
aggregationOfBusinessRuleOperationalRuleEnforcement :  Linkage OperationalRuleEnforcement BusinessRule
aggregationOfBusinessRuleOperationalRuleEnforcement = make_Relation "BusinessRule aggregation" "aggregated BusinessRule"

{- operationalRuleEnforcement : derived relation obtained by composing
   membershipOfOperationalRuleEnforcement and aggregationOfBusinessRuleOperationalRuleEnforcement
   It directly links an Org-Unit Type to the final aggregated BusinessRule
   hiding the reifying OperationalRuleEnforcement
-}
operationalRuleEnforcement : Linkage OrgUnitType BusinessRule
operationalRuleEnforcement = membershipOfOperationalRuleEnforcement  ∘  aggregationOfBusinessRuleOperationalRuleEnforcement



-- -------------------------------------------------------------------------------------------- 
{- Performed Business Interaction: -}
-- Aggregate Member : Performed Business Interaction
PerformedBusinessInteraction : ClassOfClassOfBoundedIndividual
PerformedBusinessInteraction = ClassOfBoundedIndividual



--  PerformedBusinessInteraction is subTypeOf PerformedResourceScenario
st-230b415a61d8966d-230b3f9061d8937b : PerformedBusinessInteraction ⊏ₑ PerformedResourceScenario
st-230b415a61d8966d-230b3f9061d8937b = polySubTypeOf-identity

--  PerformedBusinessInteraction is subTypeOf BusinessInteractionProcess
st-230b415a61d8966d-6f4b93a15fd3b6bf : PerformedBusinessInteraction ⊏ₑ BusinessInteractionProcess
st-230b415a61d8966d-6f4b93a15fd3b6bf = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedBusinessInteraction :  Linkage OrgUnitType PerformedBusinessInteraction
membershipOfPerformedBusinessInteraction = make_upwardNestingRelation "performedBusinessInteraction membership" "nested performedBusinessInteraction"

-- Aggregation relation
aggregationOfBusinessInteractionProcessPerformedBusinessInteraction :  Linkage PerformedBusinessInteraction BusinessInteractionProcess
aggregationOfBusinessInteractionProcessPerformedBusinessInteraction = make_Relation "BusinessInteractionProcess aggregation" "aggregated BusinessInteractionProcess"

{- performedBusinessInteraction : derived relation obtained by composing
   membershipOfPerformedBusinessInteraction and aggregationOfBusinessInteractionProcessPerformedBusinessInteraction
   It directly links an Org-Unit Type to the final aggregated BusinessInteractionProcess
   hiding the reifying PerformedBusinessInteraction
-}
performedBusinessInteraction : Linkage OrgUnitType BusinessInteractionProcess
performedBusinessInteraction = membershipOfPerformedBusinessInteraction  ∘  aggregationOfBusinessInteractionProcessPerformedBusinessInteraction


