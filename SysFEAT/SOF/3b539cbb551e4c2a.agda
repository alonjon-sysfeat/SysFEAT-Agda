{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assessment: 
An Assessment is the result of the act of judging or assessing an aspect of the enterprise, based on an enterprise description and on the comparison of this description with the actual state of the enterprise.An Assessment is made by one or several Stakeholder s.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3b539cbb551e4c2a where -- ========== Assessment

open import Agda.Primitive
open import SysFEAT.SOF.bcdbc016617a55be public -- Appraisal
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.6662956168dd650c public -- Assessment Value

Assessment : ClassOfBoundedIndividual
Assessment = BoundedIndividual

--  Assessment is subTypeOf Appraisal
st-3b539cda551e4cca : Assessment ⊏ₑ Appraisal
st-3b539cda551e4cca = polySubTypeOf-identity

-- == Relationships =======================

{- Assessed Asset: 
Asset Block that is the subject of an Assessment.
-}
assessedAsset : ∀ {u} →  Linkage Assessment (AssetBlock u)
assessedAsset = make_Relation "Assessed Asset" "assessedAsset"

postulate -- assessedAsset is subTypeOf appraisedAsset
  st-6bf1843a68599028-6bf17d4e68598487  : assessedAsset  {lzero}  ⊏⋆ᵣ  appraisedAsset  {lzero}

{- Selected Assessment Value: -}
selectedAssessmentValue :  Linkage Assessment AssessmentValue
selectedAssessmentValue = make_instanceOf "Selected Assessment Value" "selectedAssessmentValue"

postulate -- selectedAssessmentValue is subTypeOf selectedAppraisalOption
  st-6662956f68dd654c-6662932568dd6161  : selectedAssessmentValue   ⊏⋆ᵣ  selectedAppraisalOption 
