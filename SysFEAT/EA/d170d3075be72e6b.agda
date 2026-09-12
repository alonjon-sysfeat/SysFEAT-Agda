{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Need: 
A customers pain point is the emotion they feel when they think of a specific need, problem, weakness, struggle, or an unfulfilled desire they didnt find a solution for yet.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d170d3075be72e6b where -- ========== Customer Need

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

CustomerNeed : ClassOfClassOfBoundedIndividual
CustomerNeed = ClassOfBoundedIndividual

--  CustomerNeed is subTypeOf AssetProperty
st-d170da0d5be73c9e : CustomerNeed ⊏ₑ AssetProperty
st-d170da0d5be73c9e = polySubTypeOf-identity

-- == Relationships =======================
