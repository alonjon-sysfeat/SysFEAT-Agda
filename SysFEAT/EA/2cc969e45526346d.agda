{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory Driver: 
A Regulatory Driver is an Exogenous Driver which includes acts of parliament and associated regulations, international and national standards, local government by-laws, and mechanisms to monitor and ensure compliance with these.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2cc969e45526346d where -- ========== Regulatory Driver

open import Agda.Primitive
open import SysFEAT.EA.7a717ae75596283e public -- Exogenous Driver
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework

RegulatoryDriver : ClassOfBoundedIndividual
RegulatoryDriver = BoundedIndividual

--  RegulatoryDriver is subTypeOf ExogenousDriver
st-2cc969eb552634e6 : RegulatoryDriver ⊏ₑ ExogenousDriver
st-2cc969eb552634e6 = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Policy: 
Policy Framework which is the subject of a .Regulatory Driver
-}
subjectPolicy :  Linkage RegulatoryDriver PolicyFramework
subjectPolicy = make_Relation "Subject Policy" "subjectPolicy"

postulate -- subjectPolicy is subTypeOf driverSubject
  st-4b945a3d68a47b96-4b945a6e68a47bdf  : subjectPolicy   ⊏⋆ᵣ  driverSubject  {lzero}
