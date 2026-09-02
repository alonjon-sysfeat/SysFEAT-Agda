{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Governance Committee: 
An Architecture Governance Committee is an organization of resources and people (persons and committees) who make up a body for the purpose of administering an Enterprise.Enterprise stakeholders draw up the rules that govern the actions and conduct of an enterprise and ensure that these rules are followed.An Architecture Governance Committee includes sets of dedicated resources and activities that support interactions and decision-making among the stakeholders involved in architecting the Enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ff0512935b254723 where -- ========== Architecture Governance Committee

open import Agda.Primitive
open import SysFEAT.SOF.ff0501b65b253fdd public -- Governing Team
open import SysFEAT.EA.b181b82a54891668 public -- Enterprise
open import SysFEAT.EA.05b091f46006f913 public -- Management Initiative Committee

ArchitectureGovernanceCommittee : ClassOfBoundedIndividual
ArchitectureGovernanceCommittee = BoundedIndividual

--  ArchitectureGovernanceCommittee is subTypeOf GoverningTeam
st-ff0512a95b254756 : ArchitectureGovernanceCommittee ⊏ₑ GoverningTeam
st-ff0512a95b254756 = polySubTypeOf-identity

-- == Relationships =======================

{- Governed Enterprise: -}
governedEnterprise :  Linkage ArchitectureGovernanceCommittee Enterprise
governedEnterprise = make_holonymyRelation "Governed Enterprise" "governedEnterprise"

postulate -- governedEnterprise is subTypeOf governedInitiative
  st-c77f7ead5b275de9-18a81ed15eeb5d60  : governedEnterprise   ⊏⋆ᵣ  governedInitiative 

{- Sub-Enterprise Team: -}
subEnterpriseTeam :  Linkage ArchitectureGovernanceCommittee ManagementInitiativeCommittee
subEnterpriseTeam = make_holonymyRelation "Sub-Enterprise Team" "subEnterpriseTeam"

postulate -- subEnterpriseTeam is subTypeOf subTeam
  st-26b88ab85eea935e-ac98b16e60a38cbc  : subEnterpriseTeam   ⊏⋆ᵣ  subTeam 
