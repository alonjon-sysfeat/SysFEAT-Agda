{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Mixed-Order Element

Documentation: https://framework.sysfeat.com/pages/62a271056ace0f5c.htm

External references:
  CycProject 2005 - At Least Nth-Order Class                        : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=7
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.62a271056ace0f5c where -- ============================ ClassOfMixedOrderElement

open import Agda.Primitive
open import SysFEAT.UpperOntology.20702b2568e9694d public -- Class of Element

-- ============================================================
-- I. Definition
-- ============================================================ 
ClassOfMixedOrderElement : (u : Level) → Set (lsuc (lsuc u))
ClassOfMixedOrderElement u = ClassOfElement u

