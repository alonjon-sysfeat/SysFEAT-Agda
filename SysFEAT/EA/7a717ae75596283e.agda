{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Exogenous Driver: 
An Exogenous Driver is an external Driver whose source of change is outside the enterprises organizational boundaries and that can impact its employment of Means or achievement of Ends.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a717ae75596283e where -- ========== Exogenous Driver

open import Agda.Primitive
open import SysFEAT.EA.bcebd0565491287e public -- Driver

ExogenousDriver : ClassOfBoundedIndividual
ExogenousDriver = BoundedIndividual

--  ExogenousDriver is subTypeOf Driver
st-7a717b54559629e9 : ExogenousDriver ⊏ₑ Driver
st-7a717b54559629e9 = polySubTypeOf-identity

-- == Relationships =======================
