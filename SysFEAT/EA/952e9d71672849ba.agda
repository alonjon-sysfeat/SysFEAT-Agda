{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Journey Category: 
A Customer Journey Category classifies the journeys that comply with similar criteria.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952e9d71672849ba where -- ========== Customer Journey Category

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

CustomerJourneyCategory : ThirdOrderClass
CustomerJourneyCategory = SecondOrderClass

--  CustomerJourneyCategory withAspect AssetCategory
st-ae7c977e60234942 : CustomerJourneyCategory ⊏ₐₑ (AssetCategory (lsuc(lsuc(lzero))))
st-ae7c977e60234942 = polySubTypeOf-identity

-- == Relationships =======================
