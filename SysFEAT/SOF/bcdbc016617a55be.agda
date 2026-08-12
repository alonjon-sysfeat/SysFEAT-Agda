{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Appraisal: 
An Appraisal is a time bound statement expressed by stakeholders to qualify Asset Blocks with respect to their worth.Assessments and Decisions are two major types of Appraisals provided by SysFEAT.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.bcdbc016617a55be where -- ========== Appraisal

open import Agda.Primitive
open import SysFEAT.SOF.1737b50b5fe27cba public -- Governance Event
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.66628b5668dd5a25 public -- Appraisal Option

Appraisal : ClassOfBoundedIndividual
Appraisal = BoundedIndividual

postulate --  Appraisal is subTypeOf GovernanceEvent
  st-bcdbc028617a561c : Appraisal ⊏ₑ GovernanceEvent

-- == Relationships =======================

{- Appraised Asset: -}
appraisedAsset : ∀ {u} →  Linkage Appraisal (AssetBlock u)
appraisedAsset = make_Relation "Appraised Asset" "appraisedAsset"

postulate -- appraisedAsset is subTypeOf eventSubject
  st-6bf17d4e68598487-0f642d4d6859ad70  : appraisedAsset  {lzero}  ⊏⋆ᵣ  eventSubject  {lzero}

{- Selected Appraisal Option: -}
selectedAppraisalOption :  Linkage Appraisal AppraisalOption
selectedAppraisalOption = make_instanceOf "Selected Appraisal Option" "selectedAppraisalOption"

postulate -- selectedAppraisalOption is subTypeOf propertyOfIndividual
  st-6662932568dd6161-19763dbb68926a48  : selectedAppraisalOption   ⊏⋆ᵣ  propertyOfIndividual 
