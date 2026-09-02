{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology Capability Map: 
A Software Technology Capability Map is a family of Software Software Technology Capabilitys and their dependencies that, together, provide Software Technology Capability scope for an Asset Portfolio Stage.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd27b91368a11464 where -- ========== Software Technology Capability Map

open import Agda.Primitive
open import SysFEAT.EA.dd27b40768a112f8 public -- Technology Capability Map

SOftwareTechnologyCapabilityMap : PropertyType
SOftwareTechnologyCapabilityMap = ClassOfProperty

--  SOftwareTechnologyCapabilityMap is subTypeOf TechnologyCapabilityMap
st-09d113ca679e5e13 : SOftwareTechnologyCapabilityMap ⊏ₑ TechnologyCapabilityMap
st-09d113ca679e5e13 = polySubTypeOf-identity

-- == Relationships =======================
