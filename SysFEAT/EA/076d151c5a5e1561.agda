{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Organizational Position: 
An Organizational Position is a type of position held by people when part of a Department Type. Examples: - Sales representative- Developer- Storekeeper- Architect

Documentation : https://framework.sysfeat.com/pages/076d151c5a5e1561.htm

External references:
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
  OpenGroup - TOGAF - Definition - Role: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_66
  OMG - UAF - Post: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Post
  UCF Glossary - Position Description: https://compliancedictionary.com/term/252897
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.076d151c5a5e1561 where -- ========== Organizational Position

open import Agda.Primitive
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.278675d65b252f4d public -- Business System

OrganizationalPosition : ClassOfClassOfBoundedIndividual
OrganizationalPosition = ClassOfBoundedIndividual

--  OrganizationalPosition is subTypeOf OrgUnitType
st-076d151c5a5e1561-076d15425a5e158c : OrganizationalPosition ⊏ₑ OrgUnitType
st-076d151c5a5e1561-076d15425a5e158c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Position Type: -}
specializedPositionType :  Linkage OrganizationalPosition OrganizationalPosition
specializedPositionType = make_subTypeOf "Specialized Position Type" "Specialized Position Type"

postulate -- specializedPositionType is subTypeOf specializedResourceAgent
  st-820fb37566f27d0c-52c3540066f226f4  : specializedPositionType  ⊏⋆ᵣ  specializedResourceAgent

-- -------------------------------------------------------------------------------------------- 
{- Equipment: 
An Equipment is a Business System made available to an Organizational Position for the purpose of accomplishing his/her work.For example, numerous companies equip their employees with smartphones to facilitate coordination of their activities.
-}
-- Aggregate Member : Equipment
Equipment : ClassOfClassOfBoundedIndividual
Equipment = ClassOfBoundedIndividual



--  Equipment is subTypeOf BusinessSystem
st-986cd24c5ffc9d7c-278675d65b252f4d : Equipment ⊏ₑ BusinessSystem
st-986cd24c5ffc9d7c-278675d65b252f4d = polySubTypeOf-identity

-- Membership relation
membershipOfEquipment :  Linkage OrganizationalPosition Equipment
membershipOfEquipment = make_upwardNestingRelation "equipment membership" "nested equipment"

-- Aggregation relation
aggregationOfBusinessSystemEquipment :  Linkage Equipment BusinessSystem
aggregationOfBusinessSystemEquipment = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- equipment : derived relation obtained by composing
   membershipOfEquipment and aggregationOfBusinessSystemEquipment
   It directly links an Organizational Position to the final aggregated BusinessSystem
   hiding the reifying Equipment
-}
equipment : Linkage OrganizationalPosition BusinessSystem
equipment = membershipOfEquipment  ∘  aggregationOfBusinessSystemEquipment


