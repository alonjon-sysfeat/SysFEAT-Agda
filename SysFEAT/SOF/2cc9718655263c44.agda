{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Stakeholder: 
An Individual Stakeholder is a person with a Stakeholder role in architecting &amp; assurance activities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.2cc9718655263c44 where -- ========== Individual Stakeholder

open import Agda.Primitive
open import SysFEAT.SOF.bcebd0175491272a public -- Stakeholder

IndividualStakeholder : ClassOfBoundedIndividual
IndividualStakeholder = BoundedIndividual

--  IndividualStakeholder is subTypeOf Stakeholder
st-2cc9718f55263cbd : IndividualStakeholder ⊏ₑ Stakeholder
st-2cc9718f55263cbd = polySubTypeOf-identity

-- == Relationships =======================
