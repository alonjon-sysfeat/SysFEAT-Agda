{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Application Architecture: 
The Logical Application Architecture domain provides means of describing the logical structure and behavior of Business Software Systems of the enterprise. The aim of Logical Application Architecture is to describe an optimal optimal architecture of the enterprise IT systems. It is used to guide how key sub-systems and data domains are to be configured to meet IT systems missions and purposes. A Logical Application Architecture is concerned with how the IT Operating Model should look, not how it does look now.This includes:1)  Logical Application as the core building logical blocks for software components.2)  Logical Application System as consistent ssembly of Logical Applications.3)  Logical Data Domains of data entities.4)  Functionality(ies) fulfilled by logical systems.5) Functional APIs exposed and used by applications: Application Interfaces.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-325c30135eb0227e where -- ========== Logical Application Architecture

open import SysFEAT.EA.sysfeat-domain-25c09f1b61e2f2a0 public -- SOF - Business Software Operating Model
open import SysFEAT.EA.sysfeat-domain-2b58a67a5eec0662 public -- EA Pattern - Data Domain

open import SysFEAT.EA.4619527e560d45eb public -- Logical Data Entity
open import SysFEAT.EA.7d5286635eae7273 public -- Logical Data Property
open import SysFEAT.EA.7eaa886156121e80 public -- Logical Data View
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element
open import SysFEAT.EA.2558338d5c6d1d1b public -- Logical Software System
open import SysFEAT.EA.461950e9560d4461 public -- Logical Data Domain
open import SysFEAT.EA.325c30de5eb0244c public -- Logical Data Map
open import SysFEAT.EA.255833f95c6d1db3 public -- Logical Application
open import SysFEAT.EA.255833cb5c6d1d64 public -- Logical Application System
