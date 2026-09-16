{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Asset Assessment: 


Documentation : https://framework.sysfeat.com/pages/abbdfa3262a91c73.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.abbdfa3262a91c73 where -- ========== Hardware Asset Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System

HardwareAssetAssessment : ClassOfBoundedIndividual
HardwareAssetAssessment = BoundedIndividual

--  HardwareAssetAssessment is subTypeOf Assessment
st-abbdfa3262a91c73-3b539cbb551e4c2a : HardwareAssetAssessment ⊏ₑ Assessment
st-abbdfa3262a91c73-3b539cbb551e4c2a = polySubTypeOf-identity

-- == Relationships =======================

{- Assessed Hardware Asset: -}
assessedHardwareAsset :  Linkage HardwareAssetAssessment ConcreteHardwareSystem
assessedHardwareAsset = make_Relation "Assessed Hardware Asset" "Assessed Hardware Asset"

postulate -- assessedHardwareAsset is subTypeOf assessedAsset
  st-abbdfaaf62a91d49-6bf1843a68599028  : assessedHardwareAsset   ⊏⋆ᵣ  assessedAsset  {lzero}
