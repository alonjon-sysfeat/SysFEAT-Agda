{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Mixed-Order Element

Documentation: https://framework.sysfeat.com/pages/62a271056ace0f5c.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.62a271056ace0f5c where -- ============================ Class of Mixed Order Element

open import Agda.Primitive
open import SysFEAT.UpperOntology.20702b2568e9694d public -- Class of Element

-- ============================================================
-- I. Definition
-- ============================================================ 
ClassOfMixedOrderElement : (u : Level) → Set (lsuc (lsuc u))
ClassOfMixedOrderElement u = ClassOfElement u

