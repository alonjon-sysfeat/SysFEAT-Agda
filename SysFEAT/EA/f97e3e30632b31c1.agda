{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Ecosystem: 
A Conceptual Ecosystem is an operating context in which a Conceptual Agent exists or lives for a specific purpose.For instance, the operating context of a Conceptual Ecosystem includes its Business Partners (customers and suppliers).

Documentation : https://framework.sysfeat.com/pages/f97e3e30632b31c1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f97e3e30632b31c1 where -- ========== Conceptual Ecosystem

open import Agda.Primitive
open import SysFEAT.SOF.ca35f48a5fc48686 public -- Operating Eco-System
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent

ConceptualEcosystem : ClassOfClassOfBoundedIndividual
ConceptualEcosystem = ClassOfBoundedIndividual

--  ConceptualEcosystem is subTypeOf OperatingEcoSystem
st-f97e3e30632b31c1-ca35f48a5fc48686 : ConceptualEcosystem ⊏ₑ OperatingEcoSystem
st-f97e3e30632b31c1-ca35f48a5fc48686 = polySubTypeOf-identity

-- == Relationships =======================

{- Logical Ecosystem Member: -}
-- Aggregate Member : Logical Ecosystem Member
LogicalEcosystemMember : ClassOfClassOfIndividual
LogicalEcosystemMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalEcosystemMember :  Linkage ConceptualEcosystem LogicalEcosystemMember
membershipOfLogicalEcosystemMember = make_upwardNestingRelation "logicalEcosystemMember membership" "nested logicalEcosystemMember"

-- Aggregation relation
aggregationOfConceptualAgentLogicalEcosystemMember :  Linkage LogicalEcosystemMember ConceptualAgent
aggregationOfConceptualAgentLogicalEcosystemMember = make_Relation "ConceptualAgent aggregation" "aggregated ConceptualAgent"

{- logicalEcosystemMember : derived relation obtained by composing
   membershipOfLogicalEcosystemMember and aggregationOfConceptualAgentLogicalEcosystemMember
   It directly links an Conceptual Ecosystem to the final aggregated ConceptualAgent
   hiding the reifying LogicalEcosystemMember
-}
logicalEcosystemMember : Linkage ConceptualEcosystem ConceptualAgent
logicalEcosystemMember = membershipOfLogicalEcosystemMember  ∘  aggregationOfConceptualAgentLogicalEcosystemMember

postulate -- logicalEcosystemMember is subTypeOf enterpriseEcosystemPart
  st-f97e3fde632b3462-f8e6b83c621fffe6  : logicalEcosystemMember   ⊏⋆ᵣ  enterpriseEcosystemPart 

