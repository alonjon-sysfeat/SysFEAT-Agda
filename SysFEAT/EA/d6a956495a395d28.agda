{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

MicroService: 
A MicroService is a small autonomous unit of software, emphasizing self-management and lightweightness as the means to improve software agility, scalability, and autonomy.1) MicroServices are automous or assembled and orchestrated as components of Applications.2) MicroServices can be directly deployed to Computing Systems. MicroServices are both a logical unit of software and a Deployable Package.3) MicroServices owns their own data store and dot not have any shared stores with other components.MicroService is a Micro enterprise asset that sits at the lower level of Business Software System decomposition.

Documentation : https://framework.sysfeat.com/pages/d6a956495a395d28.htm

External references:
  Martin Fowler - Micro-Service: https://martinfowler.com/articles/microservices.html
  C4 Model - Level 2 - Container Diagram: https://c4model.com/#ContainerDiagram
  C4 Model - Level 3 - Component Diagram: https://c4model.com/#ComponentDiagram
  OpenGroup - ArchiMate - Application Component: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Component
  Microsoft - Architecture Design - Microservice architecture style: https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/microservices
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d6a956495a395d28 where -- ========== MicroService

open import Agda.Primitive
open import SysFEAT.EA.4c7883cd5fca4d5b public -- Deployable Package
open import SysFEAT.EA.c30bdac25a5d9eaf public -- Software Module

MicroService : ClassOfClassOfBoundedIndividual
MicroService = ClassOfBoundedIndividual


--  MicroService is subTypeOf DeployablePackage
st-d6a956495a395d28-4c7883cd5fca4d5b : MicroService ⊏ₑ DeployablePackage
st-d6a956495a395d28-4c7883cd5fca4d5b = polySubTypeOf-identity

--  MicroService is subTypeOf SOftwareModule
st-d6a956495a395d28-c30bdac25a5d9eaf : MicroService ⊏ₑ SOftwareModule
st-d6a956495a395d28-c30bdac25a5d9eaf = polySubTypeOf-identity


-- == Relations =======================
