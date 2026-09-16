{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Supplier: 
A Supplier is a Business Partner that supplies goods and services to the enterprise. This entity is part of the supply chain of a business which may provide the bulk of the value contained within its products. Some suppliers may even engage in drop shipping, where they ship goods directly to the customers of the buyer..

Documentation : https://framework.sysfeat.com/pages/08d180d4678a2c8f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.08d180d4678a2c8f where -- ========== Supplier

open import Agda.Primitive
open import SysFEAT.EA.08d17cde678a2b47 public -- Business Partner
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type

Supplier : ClassOfClassOfBoundedIndividual
Supplier = ClassOfBoundedIndividual

--  Supplier is subTypeOf BusinessPartner
st-08d180d4678a2c8f-08d17cde678a2b47 : Supplier ⊏ₑ BusinessPartner
st-08d180d4678a2c8f-08d17cde678a2b47 = polySubTypeOf-identity

--  Supplier is subTypeOf BusinessAgentType
st-08d180d4678a2c8f-bcebd31f5491302c : Supplier ⊏ₑ BusinessAgentType
st-08d180d4678a2c8f-bcebd31f5491302c = polySubTypeOf-identity

-- == Relationships =======================
