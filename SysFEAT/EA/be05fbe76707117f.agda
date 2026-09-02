{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Segment: 
A Customer Segment is a category of Customers that are related from a marketing or demographic perspective. For example, a business that practices customer segmentation might group its current or potential customers according to their gender, buying tendencies, age group, and special interests.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.be05fbe76707117f where -- ========== Customer Segment

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

CustomerSegment : ThirdOrderClass
CustomerSegment = SecondOrderClass

--  CustomerSegment withAspect AssetCategory
st-dc9409c16025ff00 : CustomerSegment ⊏ₐₑ (AssetCategory (lsuc(lsuc(lzero))))
st-dc9409c16025ff00 = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Customer Segment: -}
parentCustomerSegment :  Linkage CustomerSegment CustomerSegment
parentCustomerSegment = make_subTypeOf "Parent Customer Segment" "parentCustomerSegment"

postulate -- parentCustomerSegment is subTypeOf specializedCategory
  st-be05fdb9670712db-24f72cf56a0f4ec7  : parentCustomerSegment   ⊏⋆ᵣ  specializedCategory {lsuc(lsuc(lzero))}
