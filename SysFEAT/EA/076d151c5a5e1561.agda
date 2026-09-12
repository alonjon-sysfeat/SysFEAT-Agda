{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Organizational Position: 
An Organizational Position is a type of position held by people when part of a Department Type. Examples: - Sales representative- Developer- Storekeeper- Architect
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.076d151c5a5e1561 where -- ========== Organizational Position

open import Agda.Primitive
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.278675d65b252f4d public -- Business System

OrganizationalPosition : ClassOfClassOfBoundedIndividual
OrganizationalPosition = ClassOfBoundedIndividual

--  OrganizationalPosition is subTypeOf OrgUnitType
st-076d154b5a5e15b0 : OrganizationalPosition ⊏ₑ OrgUnitType
st-076d154b5a5e15b0 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Position Type: -}
specializedPositionType :  Linkage OrganizationalPosition OrganizationalPosition
specializedPositionType = make_subTypeOf "Specialized Position Type" "specializedPositionType"

postulate -- specializedPositionType is subTypeOf specializedResourceAgent
  st-820fb37566f27d0c-52c3540066f226f4  : specializedPositionType   ⊏⋆ᵣ  specializedResourceAgent 

{- Equipment: 
An Equipment is a Business System made available to an Organizational Position for the purpose of accomplishing his/her work.For example, numerous companies equip their employees with smartphones to facilitate coordination of their activities.
-}
-- Aggregate Member : Equipment
Equipment : ClassOfClassOfIndividual
Equipment = ClassOfIndividual

-- Membership relation
membershipOfEquipment :  Linkage OrganizationalPosition Equipment
membershipOfEquipment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemEquipment :  Linkage Equipment BusinessSystem
aggregationOfBusinessSystemEquipment = aggregationOfBuildingBlock

{- equipment : derived relation obtained by composing
   membershipOfEquipment and aggregationOfBusinessSystemEquipment
   It directly links an Organizational Position to the final aggregated BusinessSystem
   hiding the reifying Equipment
-}
equipment : Linkage OrganizationalPosition BusinessSystem
equipment = membershipOfEquipment  ∘  aggregationOfBusinessSystemEquipment
