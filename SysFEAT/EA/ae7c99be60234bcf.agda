{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Line: 
A Business Line is a high level classification of the main activities of the enterprise. It corresponds for example to major product segments or to distribution channels.It can be used to classify Business Processes, Organizational Units or Applications that serve a specific product and/or a specific market.Regulatory Frameworks in some industries impose their own list of Business Lines.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ae7c99be60234bcf where -- ========== Business Line

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

BusinessLine : ClassOfClassOfBoundedIndividual
BusinessLine = ClassOfBoundedIndividual

--  BusinessLine withAspect AssetCategory
st-ae7c99fd60234d45 : BusinessLine ⊏ₐₑ (AssetCategory (lsuc(lzero)))
st-ae7c99fd60234d45 = polySubTypeOf-identity

-- == Relationships =======================
