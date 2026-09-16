{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Reference Dictionary: 
A Reference Dictionary is a kind of Architecture Container that is used as a reference library to hold reference materials used to develop architectures.Example:- Vendor Catalog- Regulatory Framework- 

Documentation : https://framework.sysfeat.com/pages/3aca50c46aa63f3b.htm

External references:
  OpenGroup - TOGAF - Method - Reference Libraries: https://pubs.opengroup.org/togaf-standard/architecture-content/chap07.html#tag_07_03
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3aca50c46aa63f3b where -- ========== Reference Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.d745dbaa6aa3840b public -- Model Package
open import SysFEAT.SOF.0eb95f1b6855bf64 public -- Architecture Container

ReferenceDictionary : ClassOfIndividual
ReferenceDictionary = Individual

--  ReferenceDictionary is subTypeOf ModelPackage
st-3aca50c46aa63f3b-d745dbaa6aa3840b : ReferenceDictionary ⊏ₑ ModelPackage
st-3aca50c46aa63f3b-d745dbaa6aa3840b = polySubTypeOf-identity

--  ReferenceDictionary withAspect ArchitectureContainer
st-3aca50c46aa63f3b-0eb95f1b6855bf64 : ReferenceDictionary ⊏ₐₑ (ArchitectureContainer lzero)
st-3aca50c46aa63f3b-0eb95f1b6855bf64 = polySubTypeOf-identity


