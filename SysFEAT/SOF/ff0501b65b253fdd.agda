{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governing Team: 
A Governing Team consists of a collection of individuals and resources, including personnel and committees, assembled to effectively oversee the management of an Enduring Initiative.

Documentation : https://framework.sysfeat.com/pages/ff0501b65b253fdd.htm

External references:
  WordNet - Governing Body: https://en-word.net/ili/i80056
  ISO 37000 - 3.4.4 Governing Body: https://www.iso.org/obp/ui/#iso:std:iso:37000:ed-1:v1:en
  OpenGroup - TOGAF - Definitions - Governance: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_48
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ff0501b65b253fdd where -- ========== Governing Team

open import Agda.Primitive
open import SysFEAT.SOF.0f641043685975c9 public -- Governance Building Block
open import SysFEAT.SOF.0f64116a68597a27 public -- Governance Container
open import SysFEAT.UpperOntology.342f74b166156e02 public -- Whole Life Individual
open import SysFEAT.SOF.f4be37465ee1cba6 public -- Audit
open import SysFEAT.SOF.1737b50b5fe27cba public -- Governance Event
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.SOF.173706265fe3f332 public -- Measurement Instrument
open import SysFEAT.SOF.2cc9717155263b89 public -- Governance Committee

GoverningTeam : ClassOfBoundedIndividual
GoverningTeam = BoundedIndividual

--  GoverningTeam withAspect GovernanceBuildingBlock
st-92a7168d67cf5e74 : GoverningTeam ⊏ₐₑ (GovernanceBuildingBlock lzero)
st-92a7168d67cf5e74 = polySubTypeOf-identity

--  GoverningTeam withAspect GovernanceContainer
st-6bf1837e68598fa1 : GoverningTeam ⊏ₐₑ (GovernanceContainer lzero)
st-6bf1837e68598fa1 = polySubTypeOf-identity

--  GoverningTeam is subTypeOf WholeLifeIndividual
st-366c3c96675c1211 : GoverningTeam ⊏ₑ WholeLifeIndividual
st-366c3c96675c1211 = polySubTypeOf-identity

-- == Relationships =======================

{- Owned Team Activity: -}
ownedTeamActivity :  Linkage GoverningTeam Audit
ownedTeamActivity = make_nestingRelation "Owned Team Activity" "Owned Team Activity"

postulate -- ownedTeamActivity is subTypeOf packagedGovernanceBlock
  st-9c94c0cf695f36cb-0f6410c668597695  : ownedTeamActivity   ⊏⋆ᵣ  packagedGovernanceBlock {lzero}

{- Owned Team Event: -}
ownedTeamEvent :  Linkage GoverningTeam GovernanceEvent
ownedTeamEvent = make_nestingRelation "Owned Team Event" "Owned Team Event"

postulate -- ownedTeamEvent is subTypeOf packagedGovernanceBlock
  st-9c94c1ad695f3777-0f6410c668597695  : ownedTeamEvent   ⊏⋆ᵣ  packagedGovernanceBlock {lzero}

{- Governed Initiative: -}
governedInitiative :  Linkage GoverningTeam Initiative
governedInitiative = make_holonymyRelation "Governed Initiative" "Governed Initiative"

postulate -- governedInitiative is subTypeOf referenceHolonymy
  st-18a81ed15eeb5d60-9653a95669701e02  : governedInitiative   ⊏⋆ᵣ  referenceHolonymy 
postulate -- governedInitiative is subTypeOf existentialDependency
  st-18a81ed15eeb5d60-cbfce7da685358e9  : governedInitiative   ⊏⋆ᵣ  existentialDependency {lzero} {lzero}

{- Recorded Measure: -}
recordedMeasure :  Linkage GoverningTeam MeasurementInstrument
recordedMeasure = make_holonymyRelation "Recorded Measure" "Recorded Measure"

postulate -- recordedMeasure is subTypeOf packagedGovernanceBlock
  st-3d9074d55ffcf128-0f6410c668597695  : recordedMeasure   ⊏⋆ᵣ  packagedGovernanceBlock {lzero}

{- Sub-Team: -}
subTeam :  Linkage GoverningTeam GoverningTeam
subTeam = make_holonymyRelation "Sub-Team" "Sub-Team"

postulate -- subTeam is subTypeOf holonymyRelation
  st-ac98b16e60a38cbc-c2f2c6ce66e90be7  : subTeam   ⊏⋆ᵣ  holonymyRelation 

{- Team Committee: -}
teamCommittee :  Linkage GoverningTeam GovernanceCommittee
teamCommittee = make_holonymyRelation "Team Committee" "Team Committee"

postulate -- teamCommittee is subTypeOf referenceHolonymy
  st-b0d7b34f5ea02f2c-9653a95669701e02  : teamCommittee   ⊏⋆ᵣ  referenceHolonymy 
