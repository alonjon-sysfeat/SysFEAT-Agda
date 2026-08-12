{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Type: 
An Asset Type is a Class of Individual which is used in the description of the enterprise and its systems, such as Action Process Typees, Department Types, Applications, Location Types, Period Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a4a5b3f855585ce1 where -- ========== Asset Type

open import Agda.Primitive
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual
open import SysFEAT.SOF.e53af71366e37de2 public -- Condition Property Type
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

AssetType : ClassOfClassOfBoundedIndividual
AssetType = ClassOfBoundedIndividual

postulate --  AssetType withAspect AssetBlock
  st-d342da165b121507 : AssetType ⊏ₐₑ (AssetBlock (lsuc(lzero)))

postulate --  AssetType is subTypeOf ClassOfBoundedIndividual
  st-0861325b665787e0 : AssetType ⊏ₑ ClassOfBoundedIndividual

-- == Relationships =======================

{- Applicable Condition Type: 
Set of Condition Property Types that can be applied to an Asset Type.
-}
applicableConditionType :  Linkage AssetType ConditionPropertyType
applicableConditionType = make_instanceOf "Applicable Condition Type" "applicableConditionType"

postulate -- applicableConditionType is subTypeOf categorization
  st-c2f2709166ea21a0-f69619646a0f8e6c  : applicableConditionType   ⊏⋆ᵣ  categorization  {lsuc(lsuc(lzero))}

{- Asset Type Qualification: 
Qualification of an Asset Type by an Asset Property.
-}
assetTypeQualification :  Linkage AssetType AssetProperty
assetTypeQualification = make_subTypeOf "Asset Type Qualification" "assetTypeQualification"

postulate -- assetTypeQualification is subTypeOf qualification
  st-190c1f3b68964a27-16621f9a689131e0  : assetTypeQualification   ⊏⋆ᵣ  qualification 

{- Category of Architecture Block: -}
categoryOfArchitectureBlock : ∀ {u} →  Linkage AssetType (AssetCategory u)
categoryOfArchitectureBlock = make_instanceOf "Category of Architecture Block" "categoryOfArchitectureBlock"

postulate -- categoryOfArchitectureBlock is subTypeOf categorization
  st-f69620606a0f9c94-f69619646a0f8e6c  : categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  categorization  {lsuc(lsuc(lzero))}
