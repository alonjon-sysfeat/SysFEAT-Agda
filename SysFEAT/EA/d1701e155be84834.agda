{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Benefit (Type): 


Documentation : https://framework.sysfeat.com/pages/d1701e155be84834.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d1701e155be84834 where -- ========== Benefit (Type)

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

BenefitType : ClassOfClassOfBoundedIndividual
BenefitType = ClassOfBoundedIndividual

--  BenefitType is subTypeOf AssetProperty
st-d1701e155be84834-515c6a856893324e : BenefitType ⊏ₑ AssetProperty
st-d1701e155be84834-515c6a856893324e = polySubTypeOf-identity

-- == Relationships =======================
