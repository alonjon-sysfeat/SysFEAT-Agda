{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Block: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d3786425fd04ea2 where -- ========== Privacy Block

open import Agda.Primitive
open import SysFEAT.EA.44226d6561819b50 public -- Data Assurance Instrument

PrivacyBlock : ClassOfBoundedIndividual
PrivacyBlock = BoundedIndividual

--  PrivacyBlock is subTypeOf DataAssuranceInstrument
st-258c68c35fd256f2 : PrivacyBlock ⊏ₑ DataAssuranceInstrument
st-258c68c35fd256f2 = polySubTypeOf-identity

-- == Relationships =======================
