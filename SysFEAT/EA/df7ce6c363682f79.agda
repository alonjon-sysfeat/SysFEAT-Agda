{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Requirement: 
A Requirement is a generic statement used in system engineering to constrain what a Business System Asset should or should not be.The Requirement concept is kept in SysFEAT to maintain compatibility with traditional system engineering methodologies.The preferred approach is to follow capability-based engineering, as promoted by modern enterprise &amp; system architecture (see OMG - UAF - View - Strategic Views) and agile frameworks (see SAFe© - SAFe Requirements Model).

Documentation : https://framework.sysfeat.com/pages/df7ce6c363682f79.htm

External references:
  SEBoK - Capability Engineering: https://www.sebokwiki.org/wikiCapability_Engineering
  OMG - SysML 1.X - Requirement: https://www.omg.org/spec/SysML/1.6/PDF#page:219
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.df7ce6c363682f79 where -- ========== Requirement

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

Requirement : ClassOfClassOfBoundedIndividual
Requirement = ClassOfBoundedIndividual

--  Requirement is subTypeOf AssetProperty
st-df7ce6c363682f79-515c6a856893324e : Requirement ⊏ₑ AssetProperty
st-df7ce6c363682f79-515c6a856893324e = polySubTypeOf-identity

-- == Relationships =======================
