{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Module: 
A Software Module is a Business Software System that is part of an application system. A Software Module is either an Application, Application Component or a MicroService. All share the ability to be composed of sub-Application Components and have dependencies to enabling Software Technology(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c30bdac25a5d9eaf where -- ========== Software Module

open import Agda.Primitive
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology
open import SysFEAT.EA.46194ce9560d3ab8 public -- Application Component

SOftwareModule : ClassOfClassOfBoundedIndividual
SOftwareModule = ClassOfBoundedIndividual

--  SOftwareModule is subTypeOf BusinessSOftwareSystem
st-d6cd03115ab96736 : SOftwareModule ⊏ₑ BusinessSOftwareSystem
st-d6cd03115ab96736 = polySubTypeOf-identity

-- == Relationships =======================

{- Required software technology: 
Set of Software Technology(ies) on which a Software Module is based.
-}
requiredsOftwaretechnology :  Linkage SOftwareModule SOftwareTechnology
requiredsOftwaretechnology = make_classOfHolonymy "Required software technology" "requiredsOftwaretechnology"

postulate -- requiredsOftwaretechnology is subTypeOf enablerTechnologySystem
  st-d5e6eac35c4665f3-fe1b423f6712709d  : requiredsOftwaretechnology   ⊏⋆ᵣ  enablerTechnologySystem 

{- Component Part: 
Embbeding of an Application Component in an Application or in another Application Component.
-}
-- Aggregate Member : Component Part
ComponentPart : ClassOfClassOfIndividual
ComponentPart = ClassOfIndividual

-- Membership relation
membershipOfComponentPart :  Linkage SOftwareModule ComponentPart
membershipOfComponentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationComponentComponentPart :  Linkage ComponentPart ApplicationComponent
aggregationOfApplicationComponentComponentPart = aggregationOfBuildingBlock

{- componentPart : derived relation obtained by composing
   membershipOfComponentPart and aggregationOfApplicationComponentComponentPart
   It directly links an Software Module to the final aggregated ApplicationComponent
   hiding the reifying ComponentPart
-}
componentPart : Linkage SOftwareModule ApplicationComponent
componentPart = membershipOfComponentPart  ∘  aggregationOfApplicationComponentComponentPart
