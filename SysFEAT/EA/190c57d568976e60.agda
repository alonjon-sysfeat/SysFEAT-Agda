{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulation Article: 
Compulsory Policy, define by law, that is not directly enforceable whose purpose is guide enterprise activities.Regulation Articles are classified by Regulation section in the context of a Regulatory Framework.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c57d568976e60 where -- ========== Regulation Article

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.4b947d2068a49dbb public -- Regulatory Asset
open import SysFEAT.EA.952eb284672864df public -- Regulation section

RegulationArticle : PropertyType
RegulationArticle = ClassOfProperty

postulate --  RegulationArticle is subTypeOf Policy
  st-af66197a6307d559 : RegulationArticle ⊏ₑ Policy

postulate --  RegulationArticle withAspect RegulatoryAsset
  st-4b947ee068a4a05d : RegulationArticle ⊏ₐₑ (RegulatoryAsset (lsuc(lzero)))

-- == Relationships =======================

{- Parent Section: -}
parentSection :  Linkage RegulationArticle Regulationsection
parentSection = make_instanceOf "Parent Section" "parentSection"


{- Specialized Article: -}
specializedArticle :  Linkage RegulationArticle RegulationArticle
specializedArticle = make_subTypeOf "Specialized Article" "specializedArticle"

postulate -- specializedArticle is subTypeOf specializedPolicy
  st-4b9480c968a4a3d1-01f10d80689b50a2  : specializedArticle   ⊏⋆ᵣ  specializedPolicy 
