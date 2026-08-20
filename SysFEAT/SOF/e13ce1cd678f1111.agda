{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Whole Life Asset Type: 
A Whole Life Asset Type is an Asset Type that is not the temporal slice type of any other Asset Type. Examples:. A type of building such as a skycraper.. A type of person such as a philosopher.. A type of activity such as a volcanic eruption.. A type of facility such as a Hospital.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e13ce1cd678f1111 where -- ========== Whole Life Asset Type

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type
open import SysFEAT.UpperOntology.00ae5d3b667038fc public -- Whole Life Class

WholeLifeAssetType : ClassOfClassOfBoundedIndividual
WholeLifeAssetType = ClassOfBoundedIndividual

--  WholeLifeAssetType is subTypeOf AssetType
st-e13ce3b4678f1471 : WholeLifeAssetType ⊏ₑ AssetType
st-e13ce3b4678f1471 = polySubTypeOf-identity

--  WholeLifeAssetType is subTypeOf WholeLifeClass
st-e13ce24c678f11ba : WholeLifeAssetType ⊏ₑ WholeLifeClass
st-e13ce24c678f11ba = polySubTypeOf-identity

-- == Relationships =======================
