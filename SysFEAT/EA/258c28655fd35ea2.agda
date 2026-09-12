{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Processing Sensitivity: 
A sensitive activity is an activity whose impact on the overall processing risk is important and should be highlighted when describing the properties of a Processing Activity.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.258c28655fd35ea2 where -- ========== Processing Sensitivity

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

ProcessingSensitivity : ClassOfClassOfBoundedIndividual
ProcessingSensitivity = ClassOfBoundedIndividual

--  ProcessingSensitivity withAspect AssetCategory
st-258c288e5fd35f52 : ProcessingSensitivity ⊏ₐₑ (AssetCategory (lsuc(lzero)))
st-258c288e5fd35f52 = polySubTypeOf-identity

-- == Relationships =======================
