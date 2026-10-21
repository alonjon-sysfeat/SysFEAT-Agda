{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture principle: 
Architecture principles are general guidelines (Policy) that serve as constraints that guide design decisions and shape the overall structure of a system. They:- Establish boundaries for design choices.- Ensure consistency across the system- Promote desired qualities (Condition Property: e.g., scalability, maintainability)- Align architecture with business goals and requirementsArchitecture principles act as guardrails, helping architects make informed decisions while limiting options to those that best serve systems efficiency and robustness.

Documentation : https://framework.sysfeat.com/pages/190c02a368976c94.htm

External references:
  OpenGroup - ArchiMate - Principle: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Motivation-Elements.html#sec-Principle
  CIO Wiki - Architecture Principle: https://cio-wiki.org/wiki/Architectural_Principles#:~:text=Architecture%20Principles%20are%20the%20principles,structure%2C%20work%2C%20producing%20results.
  OpenGroup - TOGAF - Definition - Architecture Principle: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_19
  OpenGroup - TOGAF - Guide - Architecture Principles: https://pubs.opengroup.org/togaf-standard/adm-techniques/chap02.html#tag_02
  OpenGroup - OAA - Architecture Principle: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_architecture_principle
  UCF Glossary - Architecture Principle: https://compliancedictionary.com/term/382783
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c02a368976c94 where -- ========== Architecture principle

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.4b945e8668a47f80 public -- Policy Framework Asset
open import SysFEAT.EA.952eab2a67285b02 public -- Architecture Principle Category

Architectureprinciple : PropertyType
Architectureprinciple = Property

--  Architectureprinciple is subTypeOf Policy
st-190c02a368976c94-190c7429689664b5 : Architectureprinciple ⊏ₑ Policy
st-190c02a368976c94-190c7429689664b5 = polySubTypeOf-identity

--  Architectureprinciple withAspect PolicyFrameworkAsset
st-190c02a368976c94-4b945e8668a47f80 : Architectureprinciple ⊏ₐₑ (PolicyFrameworkAsset (lsuc(lzero)))
st-190c02a368976c94-4b945e8668a47f80 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Principle Category: -}
principleCategory :  Linkage Architectureprinciple ArchitecturePrincipleCategory
principleCategory = make_instanceOf "Principle Category" "Principle Category"

