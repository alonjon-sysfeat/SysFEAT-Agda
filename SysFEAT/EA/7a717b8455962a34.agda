{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Endogenous Driver: 
Endogenous Drivers are those which subject of concern are within an enterprise that can impact its employment of Means or achievement of Ends.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a717b8455962a34 where -- ========== Endogenous Driver

open import Agda.Primitive
open import SysFEAT.EA.bcebd0565491287e public -- Driver

EndogenousDriver : ClassOfBoundedIndividual
EndogenousDriver = BoundedIndividual

--  EndogenousDriver is subTypeOf Driver
st-7a717b9155962aa8 : EndogenousDriver ⊏ₑ Driver
st-7a717b9155962aa8 = polySubTypeOf-identity

-- == Relationships =======================
