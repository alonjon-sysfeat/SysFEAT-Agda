{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Container Package: 
A Container Package is a Container which sole purpose is model management.Examples:  Library, Information DictionaryConterexamples: Enterprises or Infrastructure Landscapes are Containers but are not Container Packages because they have functional purposes that go beyond model management.

Documentation : https://framework.sysfeat.com/pages/542599db6aa21e06.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.542599db6aa21e06 where -- ========== Container Package

open import Agda.Primitive
open import SysFEAT.UpperOntology.0eb93b4268549a66 public -- Container

ContainerPackage : ClassOfIndividual
ContainerPackage = Individual

--  ContainerPackage withAspect Container
st-542599db6aa21e06-0eb93b4268549a66 : ContainerPackage ⊏ₐₑ (Container lzero)
st-542599db6aa21e06-0eb93b4268549a66 = polySubTypeOf-identity


