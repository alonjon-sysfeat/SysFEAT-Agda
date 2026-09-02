{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

IT Asset Assessment: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e57e0a415fb820e5 where -- ========== IT Asset Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ITAssetAssessment : ClassOfBoundedIndividual
ITAssetAssessment = BoundedIndividual

--  ITAssetAssessment is subTypeOf Assessment
st-e57e0a4a5fb82189 : ITAssetAssessment ⊏ₑ Assessment
st-e57e0a4a5fb82189 = polySubTypeOf-identity

-- == Relationships =======================

{- Assessed Application: -}
assessedApplication :  Linkage ITAssetAssessment Application
assessedApplication = make_Relation "Assessed Application" "assessedApplication"

postulate -- assessedApplication is subTypeOf assessedAsset
  st-83bba53b61924743-6bf1843a68599028  : assessedApplication   ⊏⋆ᵣ  assessedAsset  {lzero}
