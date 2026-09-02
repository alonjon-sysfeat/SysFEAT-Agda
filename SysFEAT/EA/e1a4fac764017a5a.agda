{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Router: 
A Router is a Network Device that connects multiple Computer Networks together and directs data traffic between them.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e1a4fac764017a5a where -- ========== Router

open import Agda.Primitive
open import SysFEAT.EA.f4be0fba5ee1d935 public -- Network Device

Router : ClassOfClassOfBoundedIndividual
Router = ClassOfBoundedIndividual

--  Router is subTypeOf NetworkDevice
st-e1a4fad464017aa2 : Router ⊏ₑ NetworkDevice
st-e1a4fad464017aa2 = polySubTypeOf-identity

-- == Relationships =======================
