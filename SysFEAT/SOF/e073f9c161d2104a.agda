{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resolution: 
A Resolution is time bound Appraisal, agreed upon by Stakeholders to guide what can or cannot be done regarding a specific Functional Asset.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e073f9c161d2104a where -- ========== Resolution

open import Agda.Primitive
open import SysFEAT.SOF.bcdbc016617a55be public -- Appraisal
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.97e09afa68dd69f1 public -- Resolution Outcome

Resolution : ClassOfBoundedIndividual
Resolution = BoundedIndividual

--  Resolution is subTypeOf Appraisal
st-e073f9f261d210ca : Resolution ⊏ₑ Appraisal
st-e073f9f261d210ca = polySubTypeOf-identity

-- == Relationships =======================

{- Concerned Asset: -}
concernedAsset : ∀ {u} →  Linkage Resolution (AssetBlock u)
concernedAsset = make_Relation "Concerned Asset" "concernedAsset"

postulate -- concernedAsset is subTypeOf appraisedAsset
  st-0f642afd6859a59f-6bf17d4e68598487  : concernedAsset  {lzero}  ⊏⋆ᵣ  appraisedAsset  {lzero}

{- Selected Resolution Option: -}
selectedResolutionOption :  Linkage Resolution ResolutionOutcome
selectedResolutionOption = make_instanceOf "Selected Resolution Option" "selectedResolutionOption"

postulate -- selectedResolutionOption is subTypeOf selectedAppraisalOption
  st-97e09b4468dd6aca-6662932568dd6161  : selectedResolutionOption   ⊏⋆ᵣ  selectedAppraisalOption 
