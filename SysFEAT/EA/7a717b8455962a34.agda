{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Endogenous Driver: 
Endogenous Drivers are those which subject of concern are within an enterprise that can impact its employment of Means or achievement of Ends.

Documentation : https://framework.sysfeat.com/pages/7a717b8455962a34.htm

External references:
  OMG - BMM - Internal Influencer: https://www.omg.org/spec/BMM/1.3/PDF#page=49
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a717b8455962a34 where -- ========== Endogenous Driver

open import Agda.Primitive
open import SysFEAT.EA.bcebd0565491287e public -- Driver

EndogenousDriver : ClassOfBoundedIndividual
EndogenousDriver = BoundedIndividual


--  EndogenousDriver is subTypeOf Driver
st-7a717b8455962a34-bcebd0565491287e : EndogenousDriver ⊏ₑ Driver
st-7a717b8455962a34-bcebd0565491287e = polySubTypeOf-identity


-- == Relations =======================
