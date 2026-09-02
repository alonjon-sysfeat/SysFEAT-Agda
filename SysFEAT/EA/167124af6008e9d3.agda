{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory agency: 
A Regulatory agency is public or government agency that supervises, through investigative and corrective powers, the application of Regulatory Frameworks.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.167124af6008e9d3 where -- ========== Regulatory agency

open import Agda.Primitive
open import SysFEAT.EA.e78cee446618815a public -- Legal Entity
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location

Regulatoryagency : ClassOfBoundedIndividual
Regulatoryagency = BoundedIndividual

--  Regulatoryagency is subTypeOf LegalEntity
st-167124c06008ea4a : Regulatoryagency ⊏ₑ LegalEntity
st-167124c06008ea4a = polySubTypeOf-identity

-- == Relationships =======================

{- Regulator Location: -}
regulatorLocation :  Linkage Regulatoryagency Location
regulatorLocation = make_holonymyRelation "Regulator Location" "regulatorLocation"

postulate -- regulatorLocation is subTypeOf locatedat
  st-167126066008ed22-167126a16008efeb  : regulatorLocation   ⊏⋆ᵣ  locatedat 
