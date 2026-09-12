{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Person Type: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.41b8e49f65ee66ec where -- ========== Person Type

open import Agda.Primitive
open import SysFEAT.EA.2c93337b67644a6a public -- Human Resource
open import SysFEAT.EA.be94e82f655c90e7 public -- Physical Business Agent

PersonType : ClassOfClassOfBoundedIndividual
PersonType = ClassOfBoundedIndividual

--  PersonType is subTypeOf HumanResource
st-e9af2d7366e87611 : PersonType ⊏ₑ HumanResource
st-e9af2d7366e87611 = polySubTypeOf-identity

--  PersonType is subTypeOf PhysicalBusinessAgent
st-c80a219e67855ab1 : PersonType ⊏ₑ PhysicalBusinessAgent
st-c80a219e67855ab1 = polySubTypeOf-identity

-- == Relationships =======================
