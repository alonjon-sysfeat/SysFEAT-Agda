{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Driver: 
A Driver is a Governance Event which can have a significant impact on the activities, and goals of an Enterprise or a Management System.

Documentation : https://framework.sysfeat.com/pages/bcebd0565491287e.htm

External references:
  ISO 42010 - Concern: https://www.iso.org/obp/ui/#iso:std:iso-iec-ieee:42010:ed-2:v1:enConcern
  OpenGroup - TOGAF - Definitions - Concern: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_37
  OMG - UAF - Driver: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Driver
  OMG - BMM - Influencer: https://www.omg.org/spec/BMM/1.3/PDF#page=24
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


--  Driver is subTypeOf GovernanceEvent
st-bcebd0565491287e-1737b50b5fe27cba : Driver ⊏ₑ GovernanceEvent
st-bcebd0565491287e-1737b50b5fe27cba = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Driver Subject: 
Asset Block that is the subject of a Driver.
-}
driverSubject : ∀ {u} →  Linkage Driver (AssetBlock u)
driverSubject = make_Relation "Driver Subject" "Driver Subject"

postulate -- driverSubject is subTypeOf eventSubject
  st-4b945a6e68a47bdf-0f642d4d6859ad70  : driverSubject  ⊏⋆ᵣ  eventSubject

-- -------------------------------------------------------------------------------------------- 
{- Relevant Location: 
Potential geopolitical location where the concern is relevant.
-}
relevantLocation :  Linkage Driver Location
relevantLocation = make_holonymyRelation "Relevant Location" "Relevant Location"


-- -------------------------------------------------------------------------------------------- 
{- concerned stakeholder: 
Set of Stakeholders having an interest or concern in the state of the enterprise.
-}
concernedstakeholder :  Linkage Driver Stakeholder
concernedstakeholder = make_holonymyRelation "concerned stakeholder" "concerned stakeholder"

postulate -- concernedstakeholder is subTypeOf referenceHolonymy
  st-2cc9b802552653f2-9653a95669701e02  : concernedstakeholder  ⊏⋆ᵣ  referenceHolonymy
