{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Segment: 
A Customer Segment is a category of Customers that are related from a marketing or demographic perspective. For example, a business that practices customer segmentation might group its current or potential customers according to their gender, buying tendencies, age group, and special interests.

Documentation : https://framework.sysfeat.com/pages/be05fbe76707117f.htm

External references:
  Business Dictionary - Customer segmentation: https://www.bussinessdictionary.com/definition/customer-segmentation.html
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.be05fbe76707117f where -- ========== Customer Segment

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

CustomerSegment : ThirdOrderClass
CustomerSegment = SecondOrderClass

--  CustomerSegment withAspect AssetCategory
st-be05fbe76707117f-f69620466a0f9c2f : CustomerSegment ⊏ₐₑ (AssetCategory (lsuc(lsuc(lzero))))
st-be05fbe76707117f-f69620466a0f9c2f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Parent Customer Segment: -}
parentCustomerSegment :  Linkage CustomerSegment CustomerSegment
parentCustomerSegment = make_subTypeOf "Parent Customer Segment" "Parent Customer Segment"

postulate -- parentCustomerSegment is subTypeOf specializedAssetCategory
  st-be05fdb9670712db-24f72cf56a0f4ec7  : parentCustomerSegment  ⊏⋆ᵣ  specializedAssetCategory
