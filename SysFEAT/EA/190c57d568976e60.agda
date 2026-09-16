{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulation Article: 
Compulsory Policy, define by law, that is not directly enforceable whose purpose is guide enterprise activities.Regulation Articles are classified by Regulation section in the context of a Regulatory Framework.

Documentation : https://framework.sysfeat.com/pages/190c57d568976e60.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c57d568976e60 where -- ========== Regulation Article

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.4b947d2068a49dbb public -- Regulatory Asset
open import SysFEAT.EA.952eb284672864df public -- Regulation section

RegulationArticle : PropertyType
RegulationArticle = ClassOfProperty

--  RegulationArticle is subTypeOf Policy
st-190c57d568976e60-190c7429689664b5 : RegulationArticle ⊏ₑ Policy
st-190c57d568976e60-190c7429689664b5 = polySubTypeOf-identity

--  RegulationArticle withAspect RegulatoryAsset
st-190c57d568976e60-4b947d2068a49dbb : RegulationArticle ⊏ₐₑ (RegulatoryAsset (lsuc(lzero)))
st-190c57d568976e60-4b947d2068a49dbb = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Section: -}
parentSection :  Linkage RegulationArticle Regulationsection
parentSection = make_instanceOf "Parent Section" "Parent Section"


{- Specialized Article: -}
specializedArticle :  Linkage RegulationArticle RegulationArticle
specializedArticle = make_subTypeOf "Specialized Article" "Specialized Article"

postulate -- specializedArticle is subTypeOf specializedPolicy
  st-4b9480c968a4a3d1-01f10d80689b50a2  : specializedArticle   ⊏⋆ᵣ  specializedPolicy 
