{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Requirement: 
A Requirement is a generic statement used in system engineering to constrain what a Business System Asset should or should not be.The Requirement concept is kept in SysFEAT to maintain compatibility with traditional system engineering methodologies.The preferred approach is to follow capability-based engineering, as promoted by modern enterprise &amp; system architecture (see OMG - UAF - View - Strategic Views) and agile frameworks (see SAFe© - SAFe Requirements Model).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.df7ce6c363682f79 where -- ========== Requirement

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

Requirement : ClassOfClassOfBoundedIndividual
Requirement = ClassOfBoundedIndividual

--  Requirement is subTypeOf AssetProperty
st-df7ce782636832ad : Requirement ⊏ₑ AssetProperty
st-df7ce782636832ad = polySubTypeOf-identity

-- == Relationships =======================
