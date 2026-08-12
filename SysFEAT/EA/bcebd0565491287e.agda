{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Driver: 
A Driver is a Governance Event which can have a significant impact on the activities, and goals of an Enterprise or a Management System.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.bcebd0565491287e where -- ========== Driver

open import Agda.Primitive
open import SysFEAT.SOF.1737b50b5fe27cba public -- Governance Event
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location
open import SysFEAT.SOF.bcebd0175491272a public -- Stakeholder

Driver : ClassOfBoundedIndividual
Driver = BoundedIndividual

postulate --  Driver is subTypeOf GovernanceEvent
  st-91019cb6550a30d5 : Driver ⊏ₑ GovernanceEvent

-- == Relationships =======================

{- Driver Subject: 
Asset Block that is the subject of a Driver.
-}
driverSubject : ∀ {u} →  Linkage Driver (AssetBlock u)
driverSubject = make_Relation "Driver Subject" "driverSubject"

postulate -- driverSubject is subTypeOf eventSubject
  st-4b945a6e68a47bdf-0f642d4d6859ad70  : driverSubject  {lzero}  ⊏⋆ᵣ  eventSubject  {lzero}

{- Relevant Location: 
Potential geopolitical location where the concern is relevant.
-}
relevantLocation :  Linkage Driver Location
relevantLocation = make_holonymyRelation "Relevant Location" "relevantLocation"


{- concerned stakeholder: 
Set of Stakeholders having an interest or concern in the state of the enterprise.
-}
concernedstakeholder :  Linkage Driver Stakeholder
concernedstakeholder = make_holonymyRelation "concerned stakeholder" "concernedstakeholder"

postulate -- concernedstakeholder is subTypeOf elementaryHolonymy
  st-2cc9b802552653f2-9653a95669701e02  : concernedstakeholder   ⊏⋆ᵣ  elementaryHolonymy 
