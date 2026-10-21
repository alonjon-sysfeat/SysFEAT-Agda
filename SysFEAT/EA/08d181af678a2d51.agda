{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer: 
A Customer is a Business Partner who orders and/or uses Products (goods or services) produced by enterprises.A Customer is part of an ecosystem and has the ability to choose between different Products.

Documentation : https://framework.sysfeat.com/pages/08d181af678a2d51.htm

External references:
  MBN - Customer: https://marketbusinessnews.com/financial-glossary/customer-definition-meaning/#:~:text=A%20customer%20is%20a%20person,what%20they%20have%20on%20sale.
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
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
st-08d181af678a2d51-08d17cde678a2b47 : Customer ⊏ₑ BusinessPartner
st-08d181af678a2d51-08d17cde678a2b47 = polySubTypeOf-identity

--  Customer is subTypeOf BusinessAgentType
st-08d181af678a2d51-bcebd31f5491302c : Customer ⊏ₑ BusinessAgentType
st-08d181af678a2d51-bcebd31f5491302c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Customer Segmentation: 
A categorization of Customers by market segment.
-}
customerSegmentation :  Linkage Customer CustomerSegment
customerSegmentation = make_instanceOf "Customer Segmentation" "Customer Segmentation"

postulate -- customerSegmentation is subTypeOf categoryOfArchitectureBlock
  st-be05fd7567071281-f69620606a0f9c94  : customerSegmentation  ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}
