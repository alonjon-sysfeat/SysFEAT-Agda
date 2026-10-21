{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Asset: 
A Conceptual Asset is an Asset Type that is a constituant of an Conceptual Operating Model, that provide an idealized view of an enterprises operations or those of one of its sub-systems..

Documentation : https://framework.sysfeat.com/pages/d9f677bb688e2127.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d9f677bb688e2127 where -- ========== Conceptual Asset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type

ConceptualAsset : ClassOfClassOfBoundedIndividual
ConceptualAsset = ClassOfBoundedIndividual

--  ConceptualAsset is subTypeOf AssetType
st-d9f677bb688e2127-a4a5b3f855585ce1 : ConceptualAsset ⊏ₑ AssetType
st-d9f677bb688e2127-a4a5b3f855585ce1 = polySubTypeOf-identity


-- == Relations =======================
