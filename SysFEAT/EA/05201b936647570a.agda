{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Management Initiative: 
A Management Initiative is mezzo Initiative that is undertaken or attempted to transform, maintain and/or supersise a set of Functional Architecture Asset on the Enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.05201b936647570a where -- ========== Management Initiative

open import Agda.Primitive
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative

ManagementInitiative : ClassOfBoundedIndividual
ManagementInitiative = BoundedIndividual

--  ManagementInitiative is subTypeOf Initiative
st-b07b08ce6763712e : ManagementInitiative ⊏ₑ Initiative
st-b07b08ce6763712e = polySubTypeOf-identity

-- == Relationships =======================
