{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application: 
An Application is a Business Software System that provides a set of Functionality(ies) that End Users see as a single unit.Essentially Applications are architectural constructions resulting from the combinaison of the following four criteria:1) A group of Functionality that End Users see as a single unit.2) A managed asset (Managed Application) associated with a budget line in the context of an Application Portfolio.3) A body of code that is seen by developers as a single unit.4) A group of deployable software units (Deployable Application Packages) that must be installed together on one or multiple execution nodes (Computing System).Application is a Mezzo enterprise asset  that sits between Application System and Application Component in the decomposition of Business Software Systems.Example:  Payroll  is an Application that is part an  HR System  which is an Application System.The  Payroll  Application includes, among other things, the  Salary and Wage Calculation  Application Component.

Documentation : https://framework.sysfeat.com/pages/bcebd8e9549144db.htm

External references:
  OMG - UAF - Software: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Software
  OpenGroup - TOGAF - Enterprise Metamodel - Physical Application Component: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
  OpenGroup - TOGAF - Definition - Application Component: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_04
  OpenGroup - ArchiMate - Application Component: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Component
  Microsoft - Architecture Design - Architecture Styles: https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles
  Martin Fowler - Application Boundary: https://martinfowler.com/bliki/ApplicationBoundary.html
  C4 Model - Software System: https://c4model.com/#Abstractions
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.bcebd8e9549144db where -- ========== Application

open import Agda.Primitive
open import SysFEAT.EA.c30bdac25a5d9eaf public -- Software Module
open import SysFEAT.EA.f160fb6267d72652 public -- Mezzo Business System
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService

Application : ClassOfClassOfBoundedIndividual
Application = ClassOfBoundedIndividual


--  Application is subTypeOf SOftwareModule
st-bcebd8e9549144db-c30bdac25a5d9eaf : Application ⊏ₑ SOftwareModule
st-bcebd8e9549144db-c30bdac25a5d9eaf = polySubTypeOf-identity

--  Application is subTypeOf MezzoBusinessSystem
st-bcebd8e9549144db-f160fb6267d72652 : Application ⊏ₑ MezzoBusinessSystem
st-bcebd8e9549144db-f160fb6267d72652 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Application: -}
specializedApplication :  Linkage Application Application
specializedApplication = make_subTypeOf "Specialized Application" "Specialized Application"

postulate -- specializedApplication is subTypeOf specializedBusinessSystem
  st-820fb49566f27d6f-325a375d66f34096  : specializedApplication  ⊏⋆ᵣ  specializedBusinessSystem
postulate -- specializedApplication is subTypeOf specializedSOftwareSystem
  st-820fb49566f27d6f-325a376566f342e8  : specializedApplication  ⊏⋆ᵣ  specializedSOftwareSystem

-- -------------------------------------------------------------------------------------------- 
{- Micro-Service Part: 
The embbding of MicroService a into an Application.As MicroServices are selft deployable packages, Applications made of MicroServices can be incrementally updated and deployed.
-}
-- Aggregate Member : Micro-Service Part
MicroServicePart : ClassOfClassOfBoundedIndividual
MicroServicePart = ClassOfBoundedIndividual



--  MicroServicePart is subTypeOf SOftwarePart
st-45de6d1e618efb7f-173f4d015eb8c686 : MicroServicePart ⊏ₑ SOftwarePart
st-45de6d1e618efb7f-173f4d015eb8c686 = polySubTypeOf-identity

--  MicroServicePart is subTypeOf MicroService
st-45de6d1e618efb7f-d6a956495a395d28 : MicroServicePart ⊏ₑ MicroService
st-45de6d1e618efb7f-d6a956495a395d28 = polySubTypeOf-identity

-- Membership relation
membershipOfMicroServicePart :  Linkage Application MicroServicePart
membershipOfMicroServicePart = make_upwardNestingRelation "microServicePart membership" "nested microServicePart"

-- Aggregation relation
aggregationOfMicroServiceMicroServicePart :  Linkage MicroServicePart MicroService
aggregationOfMicroServiceMicroServicePart = make_Relation "MicroService aggregation" "aggregated MicroService"

{- microServicePart : derived relation obtained by composing
   membershipOfMicroServicePart and aggregationOfMicroServiceMicroServicePart
   It directly links an Application to the final aggregated MicroService
   hiding the reifying MicroServicePart
-}
microServicePart : Linkage Application MicroService
microServicePart = membershipOfMicroServicePart  ∘  aggregationOfMicroServiceMicroServicePart


