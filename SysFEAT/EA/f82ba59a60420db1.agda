{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology Configuration: 
A Software Technology Configuration is a set of Software Technology(ies) that form a consistent platform backbone.

Documentation : https://framework.sysfeat.com/pages/f82ba59a60420db1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f82ba59a60420db1 where -- ========== Software Technology Configuration

open import Agda.Primitive
open import SysFEAT.EA.0463ea9a63fd8b6c public -- Software Technology System
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

SOftwareTechnologyConfiguration : ClassOfClassOfBoundedIndividual
SOftwareTechnologyConfiguration = ClassOfBoundedIndividual


--  SOftwareTechnologyConfiguration is subTypeOf SOftwareTechnologySystem
st-f82ba59a60420db1-0463ea9a63fd8b6c : SOftwareTechnologyConfiguration ⊏ₑ SOftwareTechnologySystem
st-f82ba59a60420db1-0463ea9a63fd8b6c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Software Technology Part: -}
-- Aggregate Member : Software Technology Part
SOftwareTechnologyPart : ClassOfClassOfBoundedIndividual
SOftwareTechnologyPart = ClassOfBoundedIndividual



--  SOftwareTechnologyPart is subTypeOf SOftwareSystemPart
st-f82ba64460420f69-24035e705fc7afb1 : SOftwareTechnologyPart ⊏ₑ SOftwareSystemPart
st-f82ba64460420f69-24035e705fc7afb1 = polySubTypeOf-identity

--  SOftwareTechnologyPart is subTypeOf SOftwareTechnology
st-f82ba64460420f69-d5e6ddd05c46547c : SOftwareTechnologyPart ⊏ₑ SOftwareTechnology
st-f82ba64460420f69-d5e6ddd05c46547c = polySubTypeOf-identity

-- Membership relation
membershipOfSOftwareTechnologyPart :  Linkage SOftwareTechnologyConfiguration SOftwareTechnologyPart
membershipOfSOftwareTechnologyPart = make_upwardNestingRelation "sOftwareTechnologyPart membership" "nested sOftwareTechnologyPart"

-- Aggregation relation
aggregationOfSOftwareTechnologySOftwareTechnologyPart :  Linkage SOftwareTechnologyPart SOftwareTechnology
aggregationOfSOftwareTechnologySOftwareTechnologyPart = make_Relation "SOftwareTechnology aggregation" "aggregated SOftwareTechnology"

{- sOftwareTechnologyPart : derived relation obtained by composing
   membershipOfSOftwareTechnologyPart and aggregationOfSOftwareTechnologySOftwareTechnologyPart
   It directly links an Software Technology Configuration to the final aggregated SOftwareTechnology
   hiding the reifying SOftwareTechnologyPart
-}
sOftwareTechnologyPart : Linkage SOftwareTechnologyConfiguration SOftwareTechnology
sOftwareTechnologyPart = membershipOfSOftwareTechnologyPart  ∘  aggregationOfSOftwareTechnologySOftwareTechnologyPart


