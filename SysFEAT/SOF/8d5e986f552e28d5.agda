{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Location: 
A Location is a geopolitical location anywhere on the earth.Examples: - France- Paris- Washington DC- Cairo- Buenos-Aires- Asia
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.8d5e986f552e28d5 where -- ========== Location

open import Agda.Primitive
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.SOF.ef5df90463212593 public -- Location Type

Location : ClassOfBoundedIndividual
Location = BoundedIndividual

--  Location is subTypeOf BoundedIndividual
st-a44f94366748aa53 : Location ⊏ₑ BoundedIndividual
st-a44f94366748aa53 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub-Site: -}
subSite :  Linkage Location Location
subSite = make_holonymyRelation "Sub-Site" "subSite"

postulate -- subSite is subTypeOf meronymyRelation
  st-d308d7165a2f67e3-4aeab6186964fd66  : subSite   ⊏⋆ᵣ  meronymyRelation 
