{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Asset Assessment: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.abbdfa3262a91c73 where -- ========== Hardware Asset Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System

HardwareAssetAssessment : ClassOfBoundedIndividual
HardwareAssetAssessment = BoundedIndividual

--  HardwareAssetAssessment is subTypeOf Assessment
st-abbdfa4262a91cc7 : HardwareAssetAssessment ⊏ₑ Assessment
st-abbdfa4262a91cc7 = polySubTypeOf-identity

-- == Relationships =======================

{- Assessed Hardware Asset: -}
assessedHardwareAsset :  Linkage HardwareAssetAssessment ConcreteHardwareSystem
assessedHardwareAsset = make_Relation "Assessed Hardware Asset" "assessedHardwareAsset"

postulate -- assessedHardwareAsset is subTypeOf assessedAsset
  st-abbdfaaf62a91d49-6bf1843a68599028  : assessedHardwareAsset   ⊏⋆ᵣ  assessedAsset  {lzero}
