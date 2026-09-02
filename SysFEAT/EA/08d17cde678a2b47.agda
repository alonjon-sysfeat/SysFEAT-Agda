{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Partner: 
A Business Partner is a state of a Resource Agent Type, who acts as a party interacting with the enterprise in the context its operating eco-system (the Resource Operating Ecosystem).Example : Private Sector Customer, Regulation Authority, Public health Authority.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.08d17cde678a2b47 where -- ========== Business Partner

open import Agda.Primitive
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type

BusinessPartner : ClassOfClassOfBoundedIndividual
BusinessPartner = ClassOfBoundedIndividual

--  BusinessPartner is subTypeOf BusinessAgentType
st-8f1cd6df68cabad4 : BusinessPartner ⊏ₑ BusinessAgentType
st-8f1cd6df68cabad4 = polySubTypeOf-identity

-- == Relationships =======================
