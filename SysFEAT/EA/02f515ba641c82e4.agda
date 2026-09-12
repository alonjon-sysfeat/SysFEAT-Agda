{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Cloud Service: 
A Cloud Service is a Software Technology System that is also a Computing Systems that can run software.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.02f515ba641c82e4 where -- ========== Cloud Service

open import Agda.Primitive
open import SysFEAT.EA.0463ea9a63fd8b6c public -- Software Technology System
open import SysFEAT.EA.f4be0eda5ee1d6c0 public -- Computing System

CloudService : ClassOfClassOfBoundedIndividual
CloudService = ClassOfBoundedIndividual

--  CloudService is subTypeOf SOftwareTechnologySystem
st-02f515cd641c832c : CloudService ⊏ₑ SOftwareTechnologySystem
st-02f515cd641c832c = polySubTypeOf-identity

--  CloudService is subTypeOf ComputingSystem
st-02f515e7641c838f : CloudService ⊏ₑ ComputingSystem
st-02f515e7641c838f = polySubTypeOf-identity

-- == Relationships =======================
