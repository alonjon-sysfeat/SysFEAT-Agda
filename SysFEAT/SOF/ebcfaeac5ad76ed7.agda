{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Asset: 
An Individual Asset is an Individual which is used in the description of the enterprise and its systems.Individual Assets can be qualified by Condition Scale Values.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ebcfaeac5ad76ed7 where -- ========== Individual Asset

open import Agda.Primitive
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type

IndividualAsset : ClassOfBoundedIndividual
IndividualAsset = BoundedIndividual

postulate --  IndividualAsset is subTypeOf BoundedIndividual
  st-21ed583a689c196f : IndividualAsset ⊏ₑ BoundedIndividual

-- == Relationships =======================

{- Located at: -}
locatedat :  Linkage IndividualAsset Location
locatedat = make_holonymyRelation "Located at" "locatedat"

postulate -- locatedat is subTypeOf meronymyRelation
  st-167126a16008efeb-4aeab6186964fd66  : locatedat   ⊏⋆ᵣ  meronymyRelation 

{- Qualifying Asset Property: -}
qualifyingAssetProperty :  Linkage IndividualAsset AssetProperty
qualifyingAssetProperty = make_instanceOf "Qualifying Asset Property" "qualifyingAssetProperty"

postulate -- qualifyingAssetProperty is subTypeOf propertyOfIndividual
  st-190c414968965640-19763dbb68926a48  : qualifyingAssetProperty   ⊏⋆ᵣ  propertyOfIndividual 

{- Qualifying Condition Property: 
The classification of Individual Assets  by Condition Propertys.
-}
qualifyingConditionProperty :  Linkage IndividualAsset ConditionProperty
qualifyingConditionProperty = make_instanceOf "Qualifying Condition Property" "qualifyingConditionProperty"

postulate -- qualifyingConditionProperty is subTypeOf qualifyingAssetProperty
  st-21ed5601689c1844-190c414968965640  : qualifyingConditionProperty   ⊏⋆ᵣ  qualifyingAssetProperty 
