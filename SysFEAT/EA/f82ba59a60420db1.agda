{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology Configuration: 
A Software Technology Configuration is a set of Software Technology(ies) that form a consistent platform backbone.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f82ba59a60420db1 where -- ========== Software Technology Configuration

open import Agda.Primitive
open import SysFEAT.EA.0463ea9a63fd8b6c public -- Software Technology System
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

SOftwareTechnologyConfiguration : ClassOfClassOfBoundedIndividual
SOftwareTechnologyConfiguration = ClassOfBoundedIndividual

--  SOftwareTechnologyConfiguration is subTypeOf SOftwareTechnologySystem
st-f82ba5bf60420e69 : SOftwareTechnologyConfiguration ⊏ₑ SOftwareTechnologySystem
st-f82ba5bf60420e69 = polySubTypeOf-identity

-- == Relationships =======================

{- Software Technology Part: -}
-- Aggregate Member : Software Technology Part
SOftwareTechnologyPart : ClassOfClassOfIndividual
SOftwareTechnologyPart = ClassOfIndividual

-- Membership relation
membershipOfSOftwareTechnologyPart :  Linkage SOftwareTechnologyConfiguration SOftwareTechnologyPart
membershipOfSOftwareTechnologyPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSOftwareTechnologySOftwareTechnologyPart :  Linkage SOftwareTechnologyPart SOftwareTechnology
aggregationOfSOftwareTechnologySOftwareTechnologyPart = aggregationOfBuildingBlock

{- sOftwareTechnologyPart : derived relation obtained by composing
   membershipOfSOftwareTechnologyPart and aggregationOfSOftwareTechnologySOftwareTechnologyPart
   It directly links an Software Technology Configuration to the final aggregated SOftwareTechnology
   hiding the reifying SOftwareTechnologyPart
-}
sOftwareTechnologyPart : Linkage SOftwareTechnologyConfiguration SOftwareTechnology
sOftwareTechnologyPart = membershipOfSOftwareTechnologyPart  ∘  aggregationOfSOftwareTechnologySOftwareTechnologyPart
