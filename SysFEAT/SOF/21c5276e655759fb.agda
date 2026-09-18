{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Connection: 
An Operating Connection is an Aggregate Connection that defines a behavioral connection between Operating Asset Types.

Documentation : https://framework.sysfeat.com/pages/21c5276e655759fb.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21c5276e655759fb where -- ========== Operating Connection

open import Agda.Primitive
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual
open import SysFEAT.UpperOntology.23d5eaba68515533 public -- Ordering Connection

OperatingConnection : ClassOfClassOfIndividual
OperatingConnection = ClassOfIndividual


--  OperatingConnection is subTypeOf ClassOfIndividual
st-21c5276e655759fb-6aa8cbcb65b32971 : OperatingConnection ⊏ₑ ClassOfIndividual
st-21c5276e655759fb-6aa8cbcb65b32971 = polySubTypeOf-identity

--  OperatingConnection withAspect OrderingConnection
st-21c5276e655759fb-23d5eaba68515533 : OperatingConnection ⊏ₐₑ (OrderingConnection (lsuc(lzero)))
st-21c5276e655759fb-23d5eaba68515533 = polySubTypeOf-identity


-- == Relations =======================
