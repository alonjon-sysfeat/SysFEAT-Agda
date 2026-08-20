{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Connection: 
An Operating Connection is an Aggregate Connection that defines a behavioral connection between Operating Asset Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21c5276e655759fb where -- ========== Operating Connection

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5eaba68515533 public -- Ordering Connection

OperatingConnection : ClassOfClassOfIndividual
OperatingConnection = ClassOfIndividual

--  OperatingConnection withAspect OrderingConnection
st-a4018d4666008d65 : OperatingConnection ⊏ₐₑ (OrderingConnection (lsuc(lzero)))
st-a4018d4666008d65 = polySubTypeOf-identity

-- == Relationships =======================
