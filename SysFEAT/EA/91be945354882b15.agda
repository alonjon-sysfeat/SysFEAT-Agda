{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architectural Driver: 
An Architectural Driver is a kind of Endogenous Driver which is a change in some aspects of Functional Assets of the Enterprise (defect, obsolescence, attrition, etc.), which will have significant impacts on the Enterprises activities and goals.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.91be945354882b15 where -- ========== Architectural Driver

open import Agda.Primitive
open import SysFEAT.EA.7a717b8455962a34 public -- Endogenous Driver
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

ArchitecturalDriver : ClassOfBoundedIndividual
ArchitecturalDriver = BoundedIndividual

--  ArchitecturalDriver is subTypeOf EndogenousDriver
st-bcebd062549128bc : ArchitecturalDriver ⊏ₑ EndogenousDriver
st-bcebd062549128bc = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Asset: -}
subjectAsset : ∀ {u} →  Linkage ArchitecturalDriver (AssetBlock u)
subjectAsset = make_Relation "Subject Asset" "subjectAsset"

postulate -- subjectAsset is subTypeOf driverSubject
  st-4b945c6868a47d9d-4b945a6e68a47bdf  : subjectAsset  {lzero}  ⊏⋆ᵣ  driverSubject  {lzero}
