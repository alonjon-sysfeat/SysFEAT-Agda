{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application: 
An Application is a Business Software System that provides a set of Functionality(ies) that End Users see as a single unit.Essentially Applications are architectural constructions resulting from the combinaison of the following four criteria:1) A group of Functionality that End Users see as a single unit.2) A managed asset (Managed Application) associated with a budget line in the context of an Application Portfolio.3) A body of code that is seen by developers as a single unit.4) A group of deployable software units (Deployable Application Packages) that must be installed together on one or multiple execution nodes (Computing System).Application is a Mezzo enterprise asset  that sits between Application System and Application Component in the decomposition of Business Software Systems.Example:  Payroll  is an Application that is part an  HR System  which is an Application System.The  Payroll  Application includes, among other things, the  Salary and Wage Calculation  Application Component.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.bcebd8e9549144db where -- ========== Application

open import Agda.Primitive
open import SysFEAT.EA.c30bdac25a5d9eaf public -- Software Module
open import SysFEAT.EA.f160fb6267d72652 public -- Mezzo Business System
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService

Application : ClassOfClassOfBoundedIndividual
Application = ClassOfBoundedIndividual

postulate --  Application is subTypeOf SOftwareModule
  st-c30bdce05a5d9f53 : Application ⊏ₑ SOftwareModule

postulate --  Application is subTypeOf MezzoBusinessSystem
  st-6a4e7937679b3957 : Application ⊏ₑ MezzoBusinessSystem

-- == Relationships =======================

{- Specialized Application: -}
specializedApplication :  Linkage Application Application
specializedApplication = make_subTypeOf "Specialized Application" "specializedApplication"

postulate -- specializedApplication is subTypeOf specializedBusinessSystem
  st-820fb49566f27d6f-325a375d66f34096  : specializedApplication   ⊏⋆ᵣ  specializedBusinessSystem 
postulate -- specializedApplication is subTypeOf specializedSOftwareSystem
  st-820fb49566f27d6f-325a376566f342e8  : specializedApplication   ⊏⋆ᵣ  specializedSOftwareSystem 

{- Micro-Service Part: 
The embbding of MicroService a into an Application.As MicroServices are selft deployable packages, Applications made of MicroServices can be incrementally updated and deployed.
-}
-- Aggregate Member : Micro-Service Part
MicroServicePart : ClassOfClassOfIndividual
MicroServicePart = ClassOfIndividual

-- Membership relation
membershipOfMicroServicePart :  Linkage Application MicroServicePart
membershipOfMicroServicePart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfMicroServiceMicroServicePart :  Linkage MicroServicePart MicroService
aggregationOfMicroServiceMicroServicePart = aggregationOfBuildingBlock

{- microServicePart : derived relation obtained by composing
   membershipOfMicroServicePart and aggregationOfMicroServiceMicroServicePart
   It directly links an Application to the final aggregated MicroService
   hiding the reifying MicroServicePart
-}
microServicePart : Linkage Application MicroService
microServicePart = membershipOfMicroServicePart  ∘  aggregationOfMicroServiceMicroServicePart
