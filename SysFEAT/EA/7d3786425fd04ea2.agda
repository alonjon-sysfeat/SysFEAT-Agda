{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Block: 


Documentation : https://framework.sysfeat.com/pages/7d3786425fd04ea2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d3786425fd04ea2 where -- ========== Privacy Block

open import Agda.Primitive
open import SysFEAT.EA.44226d6561819b50 public -- Data Assurance Instrument

PrivacyBlock : ClassOfBoundedIndividual
PrivacyBlock = BoundedIndividual

--  PrivacyBlock is subTypeOf DataAssuranceInstrument
st-7d3786425fd04ea2-44226d6561819b50 : PrivacyBlock ⊏ₑ DataAssuranceInstrument
st-7d3786425fd04ea2-44226d6561819b50 = polySubTypeOf-identity

-- == Relationships =======================
