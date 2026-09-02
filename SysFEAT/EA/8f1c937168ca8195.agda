{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Block: 
A Data Block is an Information Block used for the description of data consumed and produced by Software System Categorys.They are defined in Data Dictionary(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1c937168ca8195 where -- ========== Data Block

open import Agda.Primitive
open import SysFEAT.SOF.6c5f80e468587f06 public -- Information Block

DataBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
DataBlock u = MixedOrderEntity u

--  DataBlock is subTypeOf InformationBlock
st-30efb19661f37541 : ∀ {u v} → (DataBlock u) ⊏⋆ₑ (InformationBlock v)
st-30efb19661f37541 = trivialPolySubTypeOfEntity

-- == Relationships =======================
