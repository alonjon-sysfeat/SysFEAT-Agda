{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Capability Assessment: 
Assessment of business capabilities.

Documentation : https://framework.sysfeat.com/pages/60ab69425f896585.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.60ab69425f896585 where -- ========== Business Capability Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.21ed240a689c08df public -- Value Proposition

BusinessCapabilityAssessment : ClassOfBoundedIndividual
BusinessCapabilityAssessment = BoundedIndividual


--  BusinessCapabilityAssessment is subTypeOf Assessment
st-60ab69425f896585-3b539cbb551e4c2a : BusinessCapabilityAssessment ⊏ₑ Assessment
st-60ab69425f896585-3b539cbb551e4c2a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Assessed Business Capability: -}
assessedBusinessCapability :  Linkage BusinessCapabilityAssessment ValueProposition
assessedBusinessCapability = make_Relation "Assessed Business Capability" "Assessed Business Capability"

postulate -- assessedBusinessCapability is subTypeOf assessedAsset
  st-6d3ca59b5f89b3c1-6bf1843a68599028  : assessedBusinessCapability  ⊏⋆ᵣ  assessedAsset
