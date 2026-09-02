{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Component: 
An Application Component is a functionnal unit of software (java class, COBOL Program, Batch) that is  a consistent, indivisible unit of processing of an Application producing and consuming its Information Outcome Events though APIs (Application Interface).a) Application Components are assembled and orchestrated in Applications.b) Application Components cannot be directly deployed to Computing Systems: they need to be organized in Deployable Application Packages.Application Component is a Micro enterprise asset that sits at the lowest level of Business Software System decomposition.Example: the  Salary and Wage Calculation  component is an Application Component that is part of the  Payroll  Application.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.46194ce9560d3ab8 where -- ========== Application Component

open import Agda.Primitive
open import SysFEAT.EA.c30bdac25a5d9eaf public -- Software Module

ApplicationComponent : ClassOfClassOfBoundedIndividual
ApplicationComponent = ClassOfBoundedIndividual

--  ApplicationComponent is subTypeOf SOftwareModule
st-076d138e5a5e1456 : ApplicationComponent ⊏ₑ SOftwareModule
st-076d138e5a5e1456 = polySubTypeOf-identity

-- == Relationships =======================
