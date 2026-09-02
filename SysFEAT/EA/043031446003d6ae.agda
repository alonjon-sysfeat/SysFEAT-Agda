{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data breach: 
Breach of security leading to the accidental or unlawful destruction, loss, alteration, unauthorised disclosure of, or access to, personal data transmitted, stored or otherwise processed.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.043031446003d6ae where -- ========== Data breach

open import Agda.Primitive
open import SysFEAT..d059da695ef11294 public -- Incident
open import SysFEAT.EA.167124af6008e9d3 public -- Regulatory agency

Databreach : ClassOfBoundedIndividual
Databreach = BoundedIndividual

--  Databreach is subTypeOf Incident
st-0430316c6003d72e : Databreach ⊏ₑ Incident
st-0430316c6003d72e = polySubTypeOf-identity

-- == Relationships =======================

{- Notified Regulator: -}
notifiedRegulator :  Linkage Databreach Regulatoryagency
notifiedRegulator = make_holonymyRelation "Notified Regulator" "notifiedRegulator"

