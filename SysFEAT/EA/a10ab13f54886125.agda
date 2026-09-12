{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Driver: 
A Business Driver is a kind of Exogenous Driver which expresses expectations coming from Business Partners (customers or suppliers) who interact directly with the enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a10ab13f54886125 where -- ========== Business Driver

open import Agda.Primitive
open import SysFEAT.EA.7a717ae75596283e public -- Exogenous Driver
open import SysFEAT.EA.08d17cde678a2b47 public -- Business Partner

BusinessDriver : ClassOfBoundedIndividual
BusinessDriver = BoundedIndividual

--  BusinessDriver is subTypeOf ExogenousDriver
st-bcebd06854912929 : BusinessDriver ⊏ₑ ExogenousDriver
st-bcebd06854912929 = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Partner: 
Partner Type which is the subject of a business need.
-}
subjectPartner :  Linkage BusinessDriver BusinessPartner
subjectPartner = make_Relation "Subject Partner" "subjectPartner"

postulate -- subjectPartner is subTypeOf driverSubject
  st-2cc9764f55263e70-4b945a6e68a47bdf  : subjectPartner   ⊏⋆ᵣ  driverSubject  {lzero}
