{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policity Decision Option: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.5e32ba416929b430 where -- ========== Policity Decision Option

open import Agda.Primitive
open import SysFEAT.UpperOntology.b85efd0868df48b1 public -- Property
open import SysFEAT.SOF.97e0a19a68dd71de public -- Policy applicability Status

PolicityDecisionOption : ClassOfProperty
PolicityDecisionOption = Property

--  PolicityDecisionOption is subTypeOf Property
st-fee314eb695d1fff : PolicityDecisionOption ⊏ₑ Property
st-fee314eb695d1fff = polySubTypeOf-identity

-- == Relationships =======================
