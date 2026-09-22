{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology Capability Map: 
A Software Technology Capability Map is a family of Software Software Technology Capabilitys and their dependencies that, together, provide Software Technology Capability scope for an Asset Portfolio Stage.

Documentation : https://framework.sysfeat.com/pages/dd27b91368a11464.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd27b91368a11464 where -- ========== Software Technology Capability Map

open import Agda.Primitive
open import SysFEAT.EA.dd27b40768a112f8 public -- Technology Capability Map

SOftwareTechnologyCapabilityMap : PropertyType
SOftwareTechnologyCapabilityMap = Property

--  SOftwareTechnologyCapabilityMap is subTypeOf TechnologyCapabilityMap
st-dd27b91368a11464-dd27b40768a112f8 : SOftwareTechnologyCapabilityMap ⊏ₑ TechnologyCapabilityMap
st-dd27b91368a11464-dd27b40768a112f8 = polySubTypeOf-identity


-- == Relations =======================
