{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Management Initiative: 
An Asset Management Initiative is Management Initiative aimed at developing and maintaining in operational conditions a set of Business Operating Assets delivering functionalities required by Business Operations.

Documentation : https://framework.sysfeat.com/pages/05201bc866475765.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.05201bc866475765 where -- ========== Asset Management Initiative

open import Agda.Primitive
open import SysFEAT.EA.05201b936647570a public -- Management Initiative

AssetManagementInitiative : ClassOfBoundedIndividual
AssetManagementInitiative = BoundedIndividual

--  AssetManagementInitiative is subTypeOf ManagementInitiative
st-05201bc866475765-05201b936647570a : AssetManagementInitiative ⊏ₑ ManagementInitiative
st-05201bc866475765-05201b936647570a = polySubTypeOf-identity

-- == Relationships =======================
