{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Benefit (Type): 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d1701e155be84834 where -- ========== Benefit (Type)

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

BenefitType : ClassOfClassOfBoundedIndividual
BenefitType = ClassOfBoundedIndividual

--  BenefitType is subTypeOf AssetProperty
st-d1701e265be848b2 : BenefitType ⊏ₑ AssetProperty
st-d1701e265be848b2 = polySubTypeOf-identity

-- == Relationships =======================
