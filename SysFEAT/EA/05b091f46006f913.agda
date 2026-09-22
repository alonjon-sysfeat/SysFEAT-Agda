{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Management Initiative Committee: 
A Management Initiative Committee is a Governing Team responsible for overseeing the administration of a Management System.

Documentation : https://framework.sysfeat.com/pages/05b091f46006f913.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.05b091f46006f913 where -- ========== Management Initiative Committee

open import Agda.Primitive
open import SysFEAT.SOF.ff0501b65b253fdd public -- Governing Team
open import SysFEAT.EA.29df3f4060084c07 public -- Management System
open import SysFEAT.EA.84c799c1664d8b2f public -- Epic
open import SysFEAT.EA.d34222c65b131d09 public -- Architecture Project

ManagementInitiativeCommittee : ClassOfBoundedIndividual
ManagementInitiativeCommittee = BoundedIndividual


--  ManagementInitiativeCommittee is subTypeOf GoverningTeam
st-05b091f46006f913-ff0501b65b253fdd : ManagementInitiativeCommittee ⊏ₑ GoverningTeam
st-05b091f46006f913-ff0501b65b253fdd = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Governed Management System: -}
governedManagementSystem :  Linkage ManagementInitiativeCommittee ManagementSystem
governedManagementSystem = make_holonymyRelation "Governed Management System" "Governed Management System"

postulate -- governedManagementSystem is subTypeOf governedInitiative
  st-ae7c9c45602351bc-18a81ed15eeb5d60  : governedManagementSystem  ⊏⋆ᵣ  governedInitiative

-- -------------------------------------------------------------------------------------------- 
{- Governed Program: -}
governedProgram :  Linkage ManagementInitiativeCommittee Epic
governedProgram = make_holonymyRelation "Governed Program" "Governed Program"

postulate -- governedProgram is subTypeOf governedInitiative
  st-37b7a2c5602a1268-18a81ed15eeb5d60  : governedProgram  ⊏⋆ᵣ  governedInitiative

-- -------------------------------------------------------------------------------------------- 
{- Managed Architecture Project: -}
managedArchitectureProject :  Linkage ManagementInitiativeCommittee ArchitectureProject
managedArchitectureProject = make_holonymyRelation "Managed Architecture Project" "Managed Architecture Project"

postulate -- managedArchitectureProject is subTypeOf subTeam
  st-ac98b22360a38daa-ac98b16e60a38cbc  : managedArchitectureProject  ⊏⋆ᵣ  subTeam
