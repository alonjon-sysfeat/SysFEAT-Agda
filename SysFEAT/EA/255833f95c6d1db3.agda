{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Application: 
A Logical Application is an encapsulation of application functionality that is independent of a particular implementation. For example, the classification of all purchase request processing applications implemented in an enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.255833f95c6d1db3 where -- ========== Logical Application

open import Agda.Primitive
open import SysFEAT.EA.2558338d5c6d1d1b public -- Logical Software System

LogicalApplication : ClassOfClassOfBoundedIndividual
LogicalApplication = ClassOfBoundedIndividual

--  LogicalApplication is subTypeOf LogicalSOftwareSystem
st-255834015c6d1ddb : LogicalApplication ⊏ₑ LogicalSOftwareSystem
st-255834015c6d1ddb = polySubTypeOf-identity

-- == Relationships =======================
