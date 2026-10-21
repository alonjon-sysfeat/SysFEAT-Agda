{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Pain Point (Type): 
A customers pain point is the emotion they feel when they think of a specific need, problem, weakness, struggle, or an unfulfilled desire they didnt find a solution for yet.

Documentation : https://framework.sysfeat.com/pages/d170d9925be73b35.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d170d9925be73b35 where -- ========== Pain Point (Type)

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

PainPointType : AssetPropertyType
PainPointType = AssetProperty


--  PainPointType is subTypeOf AssetProperty
st-d170d9925be73b35-515c6a856893324e : PainPointType ⊏ₑ AssetProperty
st-d170d9925be73b35-515c6a856893324e = polySubTypeOf-identity


-- == Relations =======================
