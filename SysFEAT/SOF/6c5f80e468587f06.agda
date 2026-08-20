{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Block: 
An Information Block is an Asset Block involved in the description of information.Information Blocks range from Information Assets to Information Domains.They are packaged in Information Dictionary(ies) and managed in Data Catalogs.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6c5f80e468587f06 where -- ========== Information Block

open import Agda.Primitive
open import SysFEAT.SOF.9397b45268777e3b public -- Architecture Block

InformationBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
InformationBlock u = MixedOrderEntity u

--  InformationBlock is subTypeOf ArchitectureBlock
st-6c5f812168587f9d : ∀ {u v} → (InformationBlock u) ⊏⋆ₑ (ArchitectureBlock v)
st-6c5f812168587f9d = trivialPolySubTypeOfEntity

-- == Relationships =======================
