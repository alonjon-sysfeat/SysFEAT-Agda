{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer: 
A Customer is a Business Partner who orders and/or uses Products (goods or services) produced by enterprises.A Customer is part of an ecosystem and has the ability to choose between different Products.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.08d181af678a2d51 where -- ========== Customer

open import Agda.Primitive
open import SysFEAT.EA.08d17cde678a2b47 public -- Business Partner
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.be05fbe76707117f public -- Customer Segment

Customer : ClassOfClassOfBoundedIndividual
Customer = ClassOfBoundedIndividual

--  Customer is subTypeOf BusinessPartner
st-81f38853678b4159 : Customer ⊏ₑ BusinessPartner
st-81f38853678b4159 = polySubTypeOf-identity

--  Customer is subTypeOf BusinessAgentType
st-bcb7bd70678a62db : Customer ⊏ₑ BusinessAgentType
st-bcb7bd70678a62db = polySubTypeOf-identity

-- == Relationships =======================

{- Customer Segmentation: 
A categorization of Customers by market segment.
-}
customerSegmentation :  Linkage Customer CustomerSegment
customerSegmentation = make_instanceOf "Customer Segmentation" "customerSegmentation"

postulate -- customerSegmentation is subTypeOf categoryOfArchitectureBlock
  st-be05fd7567071281-f69620606a0f9c94  : customerSegmentation   ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}
